//script_character_skill(character)
//Effects of the skill that only occur once at the start of the activation

switch(argument0)
{
    case 0: //Lodin
        warpSpriteIndex = 0;
        skillActive = true;
        alarm[2] = 6;
        //TODO: SET SOME TIMER TO SET THIS FALSE AFTER SOME TIME
            alarm[1] = 120; 
        break;
    case 1: //Manta
        movementSpeed *= 2;
        skillActive = true;
        //TODO: SET SOME TIMER TO SET THIS FALSE AFTER SOME TIME
        alarm[1] = 600;
        break;
    case 2: //Eva
        grabBall(128);
        alarm[3] = 30;
        skillActive = true;
        //TODO: SET SOME TIMER TO SET THIS FALSE AFTER SOME TIME
        break;
}