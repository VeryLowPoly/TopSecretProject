function knightMove(){
/*
	This state handles the idle state and the walking state
	Idling is far too easy to handle, so I combine the two usually
*/
getInputs();
	
	var move = keyRight - keyLeft;
	
	//check if we're moving
	if (move != 0) {
	hsp = move * movespd;
	} else if (move == 0) {	//and if we're not moving
	hsp = lerp(hsp, 0, 0.5);//slow to a halt
	}
	
	vsp = vsp + grav;
	
	//jump
	if (grounded) && (keyJump)
	{
		vsp = -jumpspd	
		state = PlayerStates.AIR;
	}
	
	//set sprite to idle if player lets go of move keys
	if (move == 0) && (hsp != 0) {
		sprite_index = spr_knight_idle;
	}

	
	//sprint check
	if (grounded) && (keySprint)
	{
		if (hsp != 0) {
		state = PlayerStates.SPRINT;
		sprite_index = spr_knight_run;
		image_index = 0;
		}
		
		if (hsp != 0) && (move == 0)
		{
			sprite_index = spr_knight_idle;
		}
		
		if (hsp == 0) && (move)
		{
		state = PlayerStates.SPRINT;
		sprite_index = spr_knight_run;
		image_index = 0;
		}
	} 
	
	//Duck check
	if (grounded) && (keyDown)
	{
		state = PlayerStates.CROUCH;
	}

	//fall check
	if (!place_meeting(x,y+1,[obj_solid, obj_blockparent]))
	{
		state = PlayerStates.AIR;	
	}

	//handle animation
	if (hsp == 0) {sprite_index = spr_knight_idle;}
	
	if (hsp != 0) && (move != 0)
	{
		sprite_index = spr_knight_run;	
	}




getCollide();



}