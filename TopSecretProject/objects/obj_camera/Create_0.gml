/// @description Set up Camera

//will review the 0 camera by default we enabled in the room editor
cam = view_camera[0]; //gets us the id of that camera

follow = obj_PlayerTemplate; //set follow variable so that the camera can follow anything it might need to

view_w_half = camera_get_view_width(cam) * 0.5; //get half the camera width of "cam" (camera 0 of that room)
view_h_half = camera_get_view_width(cam) * 0.5; //get half the camera height of "cam" ^^

/*
	These represent the x and y coordinate that we're moving towards at any given time
*/
xto = xstart; //original destination for the camera is wherever the camera starts
yto = ystart; //^


























