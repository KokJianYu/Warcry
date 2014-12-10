//grabBall(area)
//This method grab a ball near the character if possible.

var area = argument0;

if(grabbedBall == -1) // Check if a ball is grabbed
{
    var nearestGBall = noone;
    for(i = 0; i < instance_number(ball); i += 1)
    {
        var foundBall = instance_find(ball,i);
        if(foundBall.grabbedBy == -1 && foundBall.speed <= foundBall.maxSpeed*0.5 && (distance_to_object(foundBall)<area))
        {
            if(nearestGBall == noone || distance_to_object(nearestGBall) > distance_to_object(foundBall))
               nearestGBall = foundBall;
        }
    }
    if(nearestGBall != noone){
        grabbedBall = nearestGBall;
        nearestGBall.grabbedBy = self.id;
    }
}
    /*
    if(distance_to_object(nearestBall)<area)
    {
        if(nearestBall.grabbedBy == -1 && nearestBall.speed <= nearestBall.maxSpeed*0.5)
        {
            grabbedBall = nearestBall;
            nearestBall.grabbedBy = self.id;
        if(nearestBall.speed > nearestBall.maxSpeed*0.35)
            damage += nearestBall.speed * 0.5;
        }
    }
    }until(distance_to_object(nearestBall)>area || grabbedBall != -1);
}*/
