//script_throw_ball();
//This allows the character to throw the ball

//TODO: power gauge
powerGauge = 100;
if(grabbedBall != -1){
    speedOfBall = grabbedBall.maxSpeed * (powerGauge/100);
    grabbedBall.hspeed = cos(degtorad(direction))*speedOfBall;
    grabbedBall.vspeed = -sin(degtorad(direction))*speedOfBall;
    grabbedBall.grabbedBy = -1;
    grabbedBall=-1;
}

