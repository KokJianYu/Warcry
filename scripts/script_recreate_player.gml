//script_recreate_player(x,y,obj)

instance_destroy();
instance_create(argument0,argument1,argument2);
if(grabbedBall!=-1){
    grabbedBall.direction = irandom_range(0,360);
    grabbedBall.grabbedBy = -1;
    grabbedBall.x = x;
    grabbedBall.y = y;
}

if(argument2 == obj_player)
{
    global.player1SkillPower = skillPower;
    global.player1Lives -= 1;
    global.player1TotalDamageTaken += damage;

}
else if(argument2 == obj_player2)
{
    global.player2SkillPower = skillPower;
    global.player2Lives -= 1;    
    global.player2TotalDamageTaken += damage;
}
