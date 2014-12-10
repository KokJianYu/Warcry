//script_character_skill_effects()
//Effects of the skill that will occur continuously after the skill is activated
switch(argument0)
{
    case 0:
         if(warpSpriteIndex < 5)
        {
             draw_sprite(sprite_warp, warpSpriteIndex, x, y);
        }
        break;
    case 1:
        effect_create_below(ef_spark,x, y, 1, c_white);
        break;
    case 2:
        
        break;
}
