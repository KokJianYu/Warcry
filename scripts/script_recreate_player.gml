//script_recreate_player(x,y,obj)

instance_destroy();
instance_create(argument0,argument1,argument2);

if(grabbedBall!=-1){
    grabbedBall.direction = irandom_range(0,360);
    grabbedBall.grabbedBy = -1;
    grabbedBall.x = x;
    grabbedBall.y = y;
}