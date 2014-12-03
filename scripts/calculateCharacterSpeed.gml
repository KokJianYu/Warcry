//calculateCharacterSpeed
//This method is required as gamemaker's
//movement variables, vspeed, hspeed and direction 
//are all related to each other.
//As i want to remove the variable direction from the movement, 
//I have to do the movement and speed calculation method manually.

//If Speed > 0
if(sqrt(power(xSpeed,2)+power(ySpeed,2)>0))
{
    xSpeed -=  cos(degtorad(directionOfCollision))*friction;
    ySpeed -= -sin(degtorad(directionOfCollision))*friction;   
}

//If speed < friction, set speed = 0;
if(sqrt(power(xSpeed,2)+power(ySpeed,2)<friction))
{
    xSpeed = 0;
    ySpeed = 0;    
}

//Movement of object
x += xSpeed;
y += ySpeed;