//script_character_reverse_skill(character)
//When the effect of the skill ends.
switch(argument0)
{
    case 0: //Lodin
        if(obj_player){
            x = irandom_range(256, 480);
            y = irandom_range(224, 448);
        }else
        if(obj_player2){
            x = irandom_range(768, 992);
            y = irandom_range(224, 448);
        }
        skillActive = false;
        break;
    case 1: //Manta
        movementSpeed *= 0.5;
        skillActive = false;
        break;
    case 2: //Eva
        skillActive = false;
        break;
}
