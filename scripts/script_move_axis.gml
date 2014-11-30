///scr_move_axis(xAxis,yAxis,threshold,spd,device)

var xAxis = argument0;
var yAxis = argument1;
var threshold = argument2;
var magnitude = point_distance(0,0,xAxis,yAxis);
var spd = argument3;
var device = argument4;

//Move character to possible spaces
if(magnitude >= threshold){
    if(!place_meeting(x+xAxis*spd,y+yAxis*spd,dFloorObject) || !place_meeting(x+xAxis*spd,y+yAxis*spd,floorObject)){
        x+=xAxis*spd;
        y+=yAxis*spd;
    }
    else
    if(!place_meeting(x+xAxis*spd,y,dFloorObject) || !place_meeting(x+xAxis*spd,y,floorObject)){
        x+=xAxis*spd;
    }
    else
    if(!place_meeting(x,y+xAxis*spd,dFloorObject) || !place_meeting(x,y+xAxis*spd,floorObject)){
        y+=yAxis*spd;
    }
    else
    if(place_meeting(x,y,dFloorObject) || place_meeting(x,y,floorObject)){
        gamepad_set_vibration(device,1,1);
        alarm[0] =  15;
    }
}
