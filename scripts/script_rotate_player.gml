///scr_rotate_plzyer(rightXAxis,rightYAxis,threshold,spd)

var rightXAxis = argument0;
var rightYAxis = argument1;
var threshold = argument2;
var spd = argument3;
var magnitude = point_distance(0,0,rightXAxis,rightYAxis);


//Turn Character
if(magnitude >= threshold){
    direction =  point_direction(0,0,rightXAxis,rightYAxis)-90;
}