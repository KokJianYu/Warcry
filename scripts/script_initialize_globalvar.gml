//Keep track of player winning condition
globalvar timer;
globalvar nLives;
globalvar nBalls;

//Keep track of player's skill gauge
globalvar player1SkillPower;
globalvar player2SkillPower;

//Keep track of player's lives
globalvar player1Lives;
globalvar player2Lives;

//Keep track of player characters
globalvar player1Character;
globalvar player2Character;

//Keep track of player damage taken
globalvar player1TotalDamageTaken;
globalvar player2TotalDamageTaken;

player1TotalDamageTaken = 0;
player2TotalDamageTaken = 0;

//Keep track of sprites
globalvar spriteArray;
global.spriteArray[LODIN] = sprite_lodin;
global.spriteArray[MANTA] = sprite_manta;
global.spriteArray[EVA] = sprite_eva;
