//grabBall()
//This method grab a ball near the character if possible.
if(grabbedBall == -1) // Check if a ball is grabbed
{
    var nearestBall = instance_nearest(x,y,ball);
    if(distance_to_object(nearestBall)<32)
    {
        if(nearestBall.grabbedBy == -1)
        {
        grabbedBall = nearestBall;
        nearestBall.grabbedBy = self.id;
        }
    }
}    