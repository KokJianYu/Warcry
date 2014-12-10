//script_character_skill(character)
//Effects of the skill that only occur once at the start of the activation

switch(argument0)
{
    case 0: //Lodin
         skillActive = true;
        //TODO: SET SOME TIMER TO SET THIS FALSE AFTER SOME TIME
        break;
    case 1: //Manta
        movementSpeed *= 2;
        skillActive = true;
        //TODO: SET SOME TIMER TO SET THIS FALSE AFTER SOME TIME
        break;
    case 2: //Unknown
        skillActive = true;
        //TODO: SET SOME TIMER TO SET THIS FALSE AFTER SOME TIME
        break;
}