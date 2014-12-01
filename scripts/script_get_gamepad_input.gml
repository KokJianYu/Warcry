///scr_get_gamepad_input(device)

var device = argument0;

xAxis = gamepad_axis_value(device, gp_axislh); // return (1, -1)
yAxis = gamepad_axis_value(device, gp_axislv);

rightXAxis = gamepad_axis_value(device, gp_axisrh); // return (1, -1)
rightYAxis = gamepad_axis_value(device, gp_axisrv);