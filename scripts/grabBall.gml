//grabBall()
//This method grab a ball near the character if possible.
if(grabbedBall == -1) // Check if a ball is grabbed
{
    var nearestBall = instance_nearest(x,y,ball);
    if(distance_to_object(nearestBall)<32)
    {
        if(nearestBall.grabbedBy == -1 && nearestBall.speed <= nearestBall.maxSpeed*0.5)
        {
            grabbedBall = nearestBall;
            nearestBall.grabbedBy = self.id;
        if(nearestBall.speed > nearestBall.maxSpeed*0.35)
            damage += nearestBall.speed * 0.5;
        }
    }
}