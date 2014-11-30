//ballToBallCollision(mBall,cuVx,cuVy,DIFFVx,DIFFVy)
//This method bounce the colliding balls

Vx = argument3;
Vy = argument4;

//noToNormalise = sqrt(power(vx,2) + power(vy,2));

//uVx = vx/noToNormalise;
//uVy = vy/noToNormalise;



dotProduct = argument1*(-Vx) + argument2*(-Vy);

rVx = dotProduct*argument1;
rVy = dotProduct*argument2;

changeInX = rVx*argument0.mass;
changeInY = rVy*argument0.mass;
//if(!place_meeting(argument0.x+ argument0.hspeed  + changeInX,argument0.y+argument0.vspeed +changeInY,obj_wall) || !place_meeting(argument0.x + changeInX + argument0.hspeed ,argument0.y+changeInY+argument0.vspeed,obj_dWall) )


(argument0).hspeed+=changeInX;
(argument0).vspeed+=changeInY;
 