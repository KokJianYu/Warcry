//script_throw_ball();
//This allows the character to throw the ball

//TODO: power gauge
//powerGauge = 100;
if(grabbedBall != -1){
    speedOfBall = grabbedBall.maxSpeed * (releasePower/100);
    grabbedBall.hspeed = cos(degtorad(direction))*speedOfBall;
    grabbedBall.vspeed = -sin(degtorad(direction))*speedOfBall;
    
    grabbedBall.x = x;
    grabbedBall.y = y;
    grabbedBall.collidedWithCharacter = true;
    with(ball) 
    {
        move_outside_solid(direction+180,50)
    }
    releasePower = 0;  
    grabbedBall.grabbedBy = -1;
    grabbedBall=-1;
}
