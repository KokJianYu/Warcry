///scr_move_axis(xAxis,yAxis,threshold,spd,device)

var xAxis = argument0;
var yAxis = argument1;
var threshold = argument2;
var magnitude = point_distance(0,0,xAxis,yAxis);
var spd = argument3;
var device = argument4;

//Move character to possible spaces
if(magnitude >= threshold){

    //if(!collision_line(x,y,x+xAxis*spd,y+yAxis*spd,obj_wall,false,false) || !collision_line(x,y,x+xAxis*spd,y+yAxis*spd,obj_dWall,false,false)){
        x+=xAxis*spd;
        y+=yAxis*spd;
    //}
   /* else
    if(!place_meeting(x+xAxis*spd,y,obj_wall) || !place_meeting(x+xAxis*spd,y,obj_dWall)){
        x+=xAxis*spd;
    }
    else
    if(!place_meeting(x,y+xAxis*spd,obj_wall) || !place_meeting(x,y+xAxis*spd,obj_dWall)){
        y+=yAxis*spd;
    }
    else
    if(place_meeting(x,y,obj_dWall) || place_meeting(x,y,obj_wall)){
        //gamepad_set_vibration(device,1,1); this one too irritating
        alarm[0] =  15;*/
    //}
}