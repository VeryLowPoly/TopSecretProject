function knightMove(){
/*
	This state handles the idle state and the walking state
	Idling is far too easy to handle, so I combine the two usually
*/
getInputs();
	
	//Set a value for checking movement
	var move = keyRight - keyLeft;
	
	//check if we're moving
	if (move != 0) {
	hsp = move * movespd;
	} else if (move == 0) {		//and if we're not moving
	hsp = lerp(hsp, 0, 0.5);	//slow to a halt
	}
	
	vsp = vsp + grav;	//Apply gravity
	
	//jump check
	if (grounded) && (keyJump)	//if on ground and using the jump key
	{
		vsp = -jumpspd;				//set vsp to our jump speed
		state = PlayerStates.AIR;	//set the player to the air state
	}
	
	//set sprite to idle if player lets go of move keys
	if (move == 0) && (hsp != 0) {
		sprite_index = spr_knight_idle;
	}

	//Attack check
	if (keyAttack) && (canAtt)
	{
		hsp = 0;
		global.CurrentAttHB = spr_knight_att1HB;
		state = PlayerStates.ATTACK1;
		sprite_index = spr_knight_att1;
		image_index = 0;
		if (!instance_exists(obj_hboxHandler))
		{
			instance_create_layer(x,y,"Player",obj_hboxHandler);			
		}
		canAtt = false;
	}
	
	//sprint check
	if (grounded) && (keySprint)	//checking if we're on the ground and using sprint
	{
		if (hsp != 0) {					//if we're moving
		state = PlayerStates.SPRINT;	//set player to sprint state
		sprite_index = spr_knight_run;	//set sprite to run
		image_index = 0;				//reset the image index
		}
		
		//if we're moving but we're not pressing anything
		if (hsp != 0) && (move == 0)
		{
			sprite_index = spr_knight_idle;	//set the sprite to idle
		}
		
		//if our hsp is 0 while we're holding sprint and moving
		if (hsp == 0) && (move)
		{
		state = PlayerStates.SPRINT;	//set player to sprint state
		sprite_index = spr_knight_run;	//set sprite to run
		image_index = 0;				//reset the animation index
		}
	} 
	
	//Duck check
	if (grounded) && (keyDown)	//checking for on ground and holding crouch
	{
		state = PlayerStates.CROUCH;	//allow the player to crouch
	}

	//fall check
	if (!place_meeting(x,y+1,[obj_solid, obj_blockparent]))	//if there's nothing underneath the player
	{
		state = PlayerStates.AIR;	//set them to free fall
	}

	//handle animation
	if (hsp == 0) {sprite_index = spr_knight_idle;}
	
	if (hsp != 0) && (move != 0)
	{
		sprite_index = spr_knight_run;	
	}




getCollide();



}