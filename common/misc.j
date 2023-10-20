// Miscellaneous helper functions

function string_get_word takes integer word, string main_string returns string
    local integer found = -1
    local integer start = -1
    local integer end = 0
    local integer index = 0
    local integer main_string_length = StringLength(main_string)
    loop
        exitwhen (found == word or index == main_string_length)
        if (SubString(main_string, index, index + 1) == " ") then
            set found = found + 1
            set start = end
            set end = index
        endif
        set index = index + 1
    endloop
    if (index == main_string_length and found + 1 == word) then
        set start = end
        set end = index
    elseif(index == main_string_length) then
        return ""
    endif
    return SubString(main_string, start, end)
endfunction

