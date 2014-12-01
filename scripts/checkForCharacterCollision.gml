//checkForCharacterCollision()
//This method check if there are collision between characters.
if(place_meeting(x+hspeed,y+vspeed,obj_player) || place_meeting(x+hspeed,y+vspeed,obj_player2))
{
    var collidingCharacter = instance_place(x+hspeed,y+vspeed,obj_player);
    if(collidingCharacter == noone)
        collidingCharacter = instance_place(x+hspeed,y+vspeed,obj_player2);
        
    totalMass = mass + collidingCharacter.mass;
    //Getting VDiff for 2 colliding objects
    //speed of this object over colliding object
    //in order to get the speed in the direction
    // of the this object
    
    Vx = self.hspeed;
    Vy = self.vspeed;
    
    
    //Get the colliding vector in the direction of
    //this object to colliding object
    cVx = collidingCharacter.x - x;
    cVy = collidingCharacter.y - y;
    //normalise colliding vector
    noToNormalise = sqrt(power(cVx,2) + power(cVy,2));
    cuVx = cVx/noToNormalise;
    cuVy = cVy/noToNormalise;

    //collidingCharacter.directionOfCollision = point_direction(0,0,0+hspeed,0+vspeed);
    //Call the collision method for both the balls.
    collision(self,cuVx,cuVy,Vx,Vy);
    collision(collidingCharacter,-cuVx,-cuVy,-Vx,-Vy);
    collidingCharacter.directionOfCollision = radtodeg(arctan2(-(collidingCharacter.vspeed),collidingCharacter.hspeed));
    collidedByCharacter = true;
    
}
        
