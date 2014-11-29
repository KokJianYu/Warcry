//grabBall()
//This method grab a ball near the character if possible.
if(!grabbingBall)
{
    nearestBall = instance_nearest(x,y,ball);
    if(distance_to_object(nearestBall)<32)
    {
        if(nearestBall.grabbedBy == -1)//Something is wrong if this returns false
        {
        grabbingBall = true;
        nearestBall.grabbedBy = self.id;
        }
    }
}      
