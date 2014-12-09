//script_character_reverse_skill(character)
//When the effect of the skill ends.
switch(argument0)
{
    case 0: //Lodin
         skillActive = false;
        break;
    case 1: //Manta
        movementSpeed *= 0.5;
        skillActive = false;
        break;
    case 2: //Unknown
        skillActive = false;
        break;
}
