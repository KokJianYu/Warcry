//ballToBallCollision(mBall,cuVx,cuVy,DIFFVx,DIFFVy)

Vx = argument3;
Vy = argument4;

//noToNormalise = sqrt(power(vx,2) + power(vy,2));

//uVx = vx/noToNormalise;
//uVy = vy/noToNormalise;



dotProduct = argument1*(-Vx) + argument2*(-Vy);

rVx = dotProduct*argument1;
rVy = dotProduct*argument2;

changeInX = rVx*1;
changeInY = rVy*1;

argument0.hspeed+=changeInX;
argument0.vspeed+=changeInY;