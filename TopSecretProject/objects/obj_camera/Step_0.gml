/// @description Update Camera


//Update destination of the camera

if (instance_exists(follow)) { //if at least one instance exists of the object assigned to follow
	//set the target x and y coordinates we want the camera to move
	xto = follow.x;
	yto = follow.y+16;
}
	
//update object position
x += (xto - x) / 10; //we've got the position we want to move to, subtract the position we're at, and divide that by 25
y += (yto - y) / 10; //we'd move towards that position at that fraction of the distance. Moves us 1/25th of the distance between our current position, to the target

//clamp down the camera to be within the room
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//Update the camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);























