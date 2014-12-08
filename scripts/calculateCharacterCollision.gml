//calculateCharacterCollision()
//This method calculates the collision between characters.

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

    //Ensure that block only work when user face the ball when blocking.
    //if(collidingCharacter.direction-90>direction - 180 && collidingCharacter.directionOfCollision+90<collidingCharacter.direction+180)
      //  block = 1;
        
    collidingCharacter.damage += (speed/maxSpeed)*40*collidingCharacter.block;
    //collidingCharacter.directionOfCollision = point_direction(0,0,0+hspeed,0+vspeed);
    //Call the collision method for both the balls.
    collision(self,cuVx,cuVy,Vx,Vy,true);
    collision(collidingCharacter,-cuVx,-cuVy,-Vx,-Vy,false);
    collidingCharacter.directionOfCollision = radtodeg(arctan2(-(collidingCharacter.ySpeed),collidingCharacter.xSpeed));
    collidedByCharacter = true;
    
    script_get_gamepad_input(collidingCharacter.CONTROLLER_NUM);
    if(point_distance(0,0,xAxis,yAxis)>= 0.25)
    {
        if(speed < 5)
        {
            direction = radtodeg(arctan2(-(y-collidingCharacter.y),x-collidingCharacter.x));
            speed = 5;
        }
    }
    
    move_outside_all(radtodeg(arctan2(-(y-collidingCharacter.y),x-collidingCharacter.x)),20);
    
    effect_create_above(ef_ring, (x+collidingCharacter.x)/2, (y+collidingCharacter.y)/2, 0, c_black);
