
globals
constant integer MAX_MISSION_GRID_SIDE_LENGTH = 10
integer mission_grid_side_length = 10
integer current_button = -1
integer button_held_seconds = 0
texttag switch_countdown_tag
texttag array switch_labels
real switch_region_top
real switch_region_left
real switch_radius
real switch_spacing
region array mission_select_regions[100]
destructable array switches[100]
trigger grant_resources_t
trigger press_switch_t
trigger release_switch_t
trigger display_button_countdown_t
constant string LEVEL_NAME = "levelselect"
constant integer AVAIL_LOCKED = 1
constant integer AVAIL_AVAILABLE = 2
constant integer AVAIL_BEATEN = 3
gamecache mission_to_name
fogmodifier visibility_modifier
boolean missions_are_initialized = false
endglobals

//===========================================================================
function grant_resources takes nothing returns nothing
    local integer current_gold = GetPlayerState(USER_PLAYER, PLAYER_STATE_RESOURCE_GOLD)
    if current_gold < 10000 then
        if current_gold + 123 > 10000 then
            call SetPlayerState(USER_PLAYER, PLAYER_STATE_RESOURCE_GOLD, 10000)
        else
            call SetPlayerState(USER_PLAYER, PLAYER_STATE_RESOURCE_GOLD, current_gold + 123)
        endif
    endif
endfunction

//===========================================================================
function mission_id_to_file takes integer mission_id returns string
    local integer campaign = mission_id / 100
    local integer index = mission_id - campaign * 100
    if campaign == 1 then
        return "Human0" + I2S(index) + ".w3x"
    elseif campaign == 2 then
        return "Undead0" + I2S(index) + ".w3x"
    elseif campaign == 3 then
        return "Orc0" + I2S(index) + ".w3x"
    elseif campaign == 4 then
        return "NightElf0" + I2S(index) + ".w3x"
    elseif campaign == 5 then
        return "NightElfX0" + I2S(index) + ".w3x"
    elseif campaign == 6 then
        return "HumanX0" + I2S(index) + ".w3x"
    elseif campaign == 7 then
        if index < 7 then
            return "UndeadX0" + I2S(index) + ".w3x"
        elseif index == 7 then
            return "UndeadX07a.w3x"
        elseif index == 8 then
            return "UndeadX07b.w3x"
        elseif index == 9 then
            return "UndeadX07c.w3x"
        elseif index == 10 then
            return "UndeadX08.w3x"
        endif
    endif
    return ""
endfunction

function display_button_countdown takes nothing returns nothing
    local string next_mission = ""
    set button_held_seconds = button_held_seconds + 1
    if button_held_seconds >= 3 then
        set next_mission = mission_id_to_file(GetPlayerTechMaxAllowed(Player(0), 100+current_button))
        if next_mission != "" then
            call ChangeLevel(next_mission, false)
        else
            call print("Mission " + I2S(GetPlayerTechMaxAllowed(Player(0), 100+current_button)))
        endif
    endif
    call SetTextTagText(switch_countdown_tag, I2S(button_held_seconds), 1.2 * 0.023)
endfunction

function switch_x takes integer column returns real
    return switch_region_left + column * switch_spacing + switch_radius
endfunction

function switch_y takes integer row returns real
    return switch_region_top - row * switch_spacing - switch_radius
endfunction

function press_switch takes nothing returns nothing
    local integer region_index = 0
    local integer row
    local integer column
    loop
        exitwhen mission_select_regions[region_index] == GetTriggeringRegion()
        exitwhen region_index > 100
        set region_index = region_index + 1
    endloop
    call SetDestructableAnimation(switches[region_index], "Death")
    if current_button < 0 then
        set current_button = region_index
        set row = current_button / mission_grid_side_length
        set column = current_button - row * mission_grid_side_length
        call EnableTrigger(display_button_countdown_t)
        call SetTextTagVisibility(switch_countdown_tag, true)
        call SetTextTagColor(switch_countdown_tag, 255, 200, 0, 255)
        call SetTextTagText(switch_countdown_tag, "0", 1.2 * 0.023)
        call SetTextTagPos(switch_countdown_tag, switch_x(column), switch_y(row), 0.023)
    endif
endfunction

function release_switch takes nothing returns nothing
    local integer region_index = 0
    loop
        exitwhen mission_select_regions[region_index] == GetTriggeringRegion()
        exitwhen region_index > 100
        set region_index = region_index + 1
    endloop
    call SetDestructableAnimation(switches[region_index], "Stand")
    if region_index == current_button then
        set current_button = -1
        set button_held_seconds = 0
        call DisableTrigger(display_button_countdown_t)
        call SetTextTagVisibility(switch_countdown_tag, false)
    endif
endfunction

function init_mission_board takes nothing returns nothing
    // Assume data has just been loaded into PlayerTechMaxAllowed
    local player p = Player(0)
    local integer index = 0
    local rect first_region = gg_rct_mission00
    local rect offset_region = gg_rct_mission10
    local integer i = 0
    local integer j = 0
    local real offsetx = 0.0
    local real offsety = 0.0
    local real label_offset_x
    local real label_offset_y
    local rect new_rect
    local region new_region
    local destructable new_switch
    local trigger new_trigger
    local integer mission_id
    local integer mission_availability
    local string mission_name
    if missions_are_initialized then
        return
    endif
    set missions_are_initialized = true
    set mission_grid_side_length = GetPlayerTechMaxAllowed(p, 'size')
    set switch_spacing = GetRectCenterX(offset_region) - GetRectCenterX(first_region)
    set switch_region_left = GetRectMinX(first_region)
    set switch_region_top = GetRectMaxY(first_region)
    set switch_radius = GetRectCenterX(first_region) - GetRectMinX(first_region)
    set press_switch_t = CreateTrigger()
    call TriggerAddAction(press_switch_t, function press_switch)
    set release_switch_t = CreateTrigger()
    call TriggerAddAction(release_switch_t, function release_switch)
    loop
        exitwhen i >= mission_grid_side_length
        set j = 0
        set offsety = -i * switch_spacing
        loop
            exitwhen j >= mission_grid_side_length
            // region
            set offsetx = j * switch_spacing
            set index = mission_grid_side_length * i + j
            set mission_id = GetPlayerTechMaxAllowed(p, 100 + index)
            set mission_availability = GetPlayerTechMaxAllowed(p, 200 + index)
            if mission_availability >= AVAIL_AVAILABLE then
                call print("Index " + I2S(j) + "," + I2S(i) + ": " + I2S(mission_availability))
                set new_rect = Rect(GetRectMinX(first_region) + offsetx, GetRectMinY(first_region) + offsety, GetRectMaxX(first_region) + offsetx, GetRectMaxY(first_region) + offsety)
                set new_region = CreateRegion()
                call RegionAddRect(new_region, new_rect)
                set mission_select_regions[i * mission_grid_side_length + j] = new_region
                // trigger
                call TriggerRegisterEnterRegion(press_switch_t, new_region, null)
                call TriggerRegisterLeaveRegion(release_switch_t, new_region, null)
            endif
            if mission_availability >= AVAIL_LOCKED then
                // destructable
                set new_switch = CreateDestructable('DTfx', GetRectCenterX(first_region) + offsetx, GetRectCenterY(first_region) + offsety, 0.0, 1.0, 0)
                set switches[i * mission_grid_side_length + j] = new_switch
                // animation
                if mission_availability == AVAIL_LOCKED then
                    call SetDestructableAnimation(new_switch, "Death")
                elseif mission_availability == AVAIL_BEATEN then
                    call SetDestructableAnimation(new_switch, "Stand alternate")
                endif
                call print("Making tag for " + I2S(mission_id))
                if HaveStoredString(mission_to_name, LEVEL_NAME, I2S(mission_id)) then
                    // label
                    set mission_name = GetStoredString(mission_to_name, LEVEL_NAME, I2S(mission_id))
                    if ((i + j) / 2) * 2 == i + j then
                        set label_offset_y = 64
                    else
                        set label_offset_y = -64
                    endif
                    set label_offset_x = -7 * StringLength(mission_name)
                    set switch_labels[index] = CreateTextTag()
                    call SetTextTagVisibility(switch_labels[index], true)
                    call SetTextTagColor(switch_labels[index], 255, 200, 0, 255)
                    call SetTextTagText(switch_labels[index], mission_name, 1.2 * 0.023)
                    call SetTextTagPos(switch_labels[index], switch_x(j) + label_offset_x, switch_y(i) + label_offset_y, 0.023)
                endif
            endif
            set j = j + 1
        endloop
        set i = i + 1
    endloop
endfunction

function init_mission_name_cache takes nothing returns nothing
    set mission_to_name = InitGameCache(LEVEL_NAME)

    call StoreString(mission_to_name, LEVEL_NAME, "101", "H1 Defense of Strahnbrad")
    call StoreString(mission_to_name, LEVEL_NAME, "102", "H2 Blackrock and Roll")
    call StoreString(mission_to_name, LEVEL_NAME, "103", "H3 Ravages of the Plague")
    call StoreString(mission_to_name, LEVEL_NAME, "104", "H4 The Cult of the Damned")
    call StoreString(mission_to_name, LEVEL_NAME, "105", "H5 March of the Scourge")
    call StoreString(mission_to_name, LEVEL_NAME, "106", "H6 The Culling")
    call StoreString(mission_to_name, LEVEL_NAME, "107", "H7 The Shores of Northrend")
    call StoreString(mission_to_name, LEVEL_NAME, "108", "H8 Dissension")
    call StoreString(mission_to_name, LEVEL_NAME, "109", "H9 Frostmourne")

    call StoreString(mission_to_name, LEVEL_NAME, "201", "U1 Trudging Through the Ashes")
    call StoreString(mission_to_name, LEVEL_NAME, "202", "U2 Digging up the Dead")
    call StoreString(mission_to_name, LEVEL_NAME, "203", "U3 Into the Realm Eternal")
    call StoreString(mission_to_name, LEVEL_NAME, "204", "U4 Key of the Three Moons")
    call StoreString(mission_to_name, LEVEL_NAME, "205", "U5 The Fall of Silvermoon")
    call StoreString(mission_to_name, LEVEL_NAME, "206", "U6 Blackrock & Roll, Too")
    call StoreString(mission_to_name, LEVEL_NAME, "207", "U7 The Siege of Dalaran")
    call StoreString(mission_to_name, LEVEL_NAME, "208", "U8 Under the Burning Sky")

    call StoreString(mission_to_name, LEVEL_NAME, "301", "O1 Landfall")
    call StoreString(mission_to_name, LEVEL_NAME, "302", "O2 The Long March")
    call StoreString(mission_to_name, LEVEL_NAME, "303", "O3 Cry of the Warsong")
    call StoreString(mission_to_name, LEVEL_NAME, "304", "O4 The Spirits of Ashenvale")
    call StoreString(mission_to_name, LEVEL_NAME, "305", "O5 The Hunter of Shadows")
    call StoreString(mission_to_name, LEVEL_NAME, "306", "O6 Where Wyverns Dare")
    call StoreString(mission_to_name, LEVEL_NAME, "307", "O7 The Oracle")
    call StoreString(mission_to_name, LEVEL_NAME, "308", "O8 By Demons Be Driven")

    call StoreString(mission_to_name, LEVEL_NAME, "401", "N1 Enemies at the Gate")
    call StoreString(mission_to_name, LEVEL_NAME, "402", "N2 Daughters of the Moon")
    call StoreString(mission_to_name, LEVEL_NAME, "403", "N3 The Awakening of Stormrage")
    call StoreString(mission_to_name, LEVEL_NAME, "404", "N4 The Druids Arise")
    call StoreString(mission_to_name, LEVEL_NAME, "405", "N5 Brothers in Blood")
    call StoreString(mission_to_name, LEVEL_NAME, "406", "N6 A Destiny of Flame and Sorrow")
    call StoreString(mission_to_name, LEVEL_NAME, "407", "N7 Twilight of the Gods")

    call StoreString(mission_to_name, LEVEL_NAME, "501", "Nx1 Rise of the Naga")
    call StoreString(mission_to_name, LEVEL_NAME, "502", "Nx2 The Broken Isles")
    call StoreString(mission_to_name, LEVEL_NAME, "503", "Nx3 The Tomb of Sargeras")
    call StoreString(mission_to_name, LEVEL_NAME, "504", "Nx4 Wrath of the Betrayer")
    call StoreString(mission_to_name, LEVEL_NAME, "505", "Nx5 Balancing the Scales")
    call StoreString(mission_to_name, LEVEL_NAME, "506", "Nx6 Shards of the Alliance")
    call StoreString(mission_to_name, LEVEL_NAME, "507", "Nx7 The Ruins of Dalaran")
    call StoreString(mission_to_name, LEVEL_NAME, "508", "Nx8 The Brothers Stormrage")

    call StoreString(mission_to_name, LEVEL_NAME, "601", "Hx1 Misconceptions")
    call StoreString(mission_to_name, LEVEL_NAME, "602", "Hx2 A Dark Covenant")
    call StoreString(mission_to_name, LEVEL_NAME, "603", "Hx3 The Dungeons of Dalaran")
    call StoreString(mission_to_name, LEVEL_NAME, "604", "Hx4 The Search for Illidan")
    call StoreString(mission_to_name, LEVEL_NAME, "605", "Hx5 Gates of the Abyss")
    call StoreString(mission_to_name, LEVEL_NAME, "606", "Hx6 Lord of Outland")

    call StoreString(mission_to_name, LEVEL_NAME, "701", "Ux1 King Arthas")
    call StoreString(mission_to_name, LEVEL_NAME, "702", "Ux2 The Flight from Loardaeron")
    call StoreString(mission_to_name, LEVEL_NAME, "703", "Ux3 The Dark Lady")
    call StoreString(mission_to_name, LEVEL_NAME, "704", "Ux4 The Return to Northrend")
    call StoreString(mission_to_name, LEVEL_NAME, "705", "Ux5 Dreadlord's Fall")
    call StoreString(mission_to_name, LEVEL_NAME, "706", "Ux6 A New Power in Lordaeron")
    call StoreString(mission_to_name, LEVEL_NAME, "707", "Ux7a Into the Shadow Web Caverns")
    call StoreString(mission_to_name, LEVEL_NAME, "708", "Ux7b The Forgotten Ones")
    call StoreString(mission_to_name, LEVEL_NAME, "709", "Ux7c Ascent to the Upper Kingdom")
    call StoreString(mission_to_name, LEVEL_NAME, "710", "Ux8 A Symphony of Frost and Flame")
endfunction

//===========================================================================
function InitTrig_mission_select_init takes nothing returns nothing
    // Mission name mapping
    call init_mission_name_cache()
    // Mission select switches
    call TriggerAddAction(t_init_mission_board, function init_mission_board)
    // Mission select switch text
    set switch_countdown_tag = CreateTextTag()
    call SetTextTagVisibility(switch_countdown_tag, false)
    set display_button_countdown_t = CreateTrigger()
    call DisableTrigger(display_button_countdown_t)
    call TriggerAddAction(display_button_countdown_t, function display_button_countdown)
    call TriggerRegisterTimerEvent(display_button_countdown_t, 1, true)
    // Resources
    set grant_resources_t = CreateTrigger()
    call TriggerAddAction(grant_resources_t, function grant_resources)
    call TriggerRegisterTimerEvent(grant_resources_t, 0.25, true)
endfunction

