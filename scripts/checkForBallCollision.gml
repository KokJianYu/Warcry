//checkForBallCollision()
//This method check if there are collision between balls.
if(place_meeting(x+hspeed,y+vspeed,ball))
{
    var collidingBall = instance_place(x+hspeed,y+vspeed,ball);
    
    totalMass = mass+collidingBall.mass;
    //To ensure that this code run only once 
    //when a ball collide with a ball
    //as the collision event occurs twice
    //when the ball collide with the ball
    //This also help prevent ball from getting
    //stuck in each other as the collision 
    //will not work if they are stuck within each other.
    if(self.id!=other.ballCollidedWithId)
    {
    //Getting VDiff for 2 colliding objects
    //speed of this object over colliding object
    //in order to get the speed in the direction
    // of the this object
    
    Vx = self.hspeed - collidingBall.hspeed;
    Vy = self.vspeed - collidingBall.vspeed;
    
    //Get the colliding vector in the direction of
    //this object to colliding object
    cVx = collidingBall.x - x;
    cVy = collidingBall.y - y;
    
    //normalise colliding vector
    noToNormalise = sqrt(power(cVx,2) + power(cVy,2));
    cuVx = cVx/noToNormalise;
    cuVy = cVy/noToNormalise;
    
    //Call the collision method for both the balls.
    collision(self,cuVx,cuVy,Vx,Vy);
    collision(collidingBall,-cuVx,-cuVy,-Vx,-Vy);
    collidedWithBall = true;
    }
    ballCollidedWithId = collidingBall.id;
        
}
