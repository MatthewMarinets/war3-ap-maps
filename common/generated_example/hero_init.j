function InitTrig_hero_init takes nothing returns nothing
    set udg_Arthas = hero_create(0, Player(1), GetRectCenterX(gg_rct_ArthasStart), GetRectCenterY(gg_rct_ArthasStart), 90.0)
endfunction