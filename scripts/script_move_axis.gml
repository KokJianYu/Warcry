///scr_move_axis(xAxis,yAxis,threshold,spd,device)

var xAxis = argument0;
var yAxis = argument1;
var threshold = argument2;
var magnitude = point_distance(0,0,xAxis,yAxis);
var spd = argument3;
var device = argument4;

//Move character to possible spaces
if(magnitude >= threshold){
    //if(!place_meeting(x+xAxis*spd,y+yAxis*spd,ball)){
        x+=xAxis*spd;
        y+=yAxis*spd;
        xMovement = xAxis*spd;
        yMovement = yAxis*spd;
    //}
    //else
    //if(!place_meeting(x+xAxis*spd,y,ball) || !place_meeting(x+xAxis*spd,y,ball)){
     //   x+=xAxis*spd;
       // xMovement = xAxis*spd;
    //}
    //else
    //if(!place_meeting(x,y+xAxis*spd,ball) || !place_meeting(x,y+xAxis*spd,ball)){
     //   y+=yAxis*spd;
       // yMovement = yAxis*spd;
    //}
    //else
    /*if(place_meeting(x,y,obj_dWall) || place_meeting(x,y,obj_wall)){
        //gamepad_set_vibration(device,1,1); this one too irritating
        alarm[0] =  15;
    }*/
}