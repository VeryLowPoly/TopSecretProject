function knightAtt1(){
getInputs();
	
	
	
	vsp = vsp + grav;	//Apply gravity

	//fall check
	if (!place_meeting(x,y+1,[obj_solid, obj_blockparent]))	//if there's nothing underneath the player
	{
		state = PlayerStates.AIR;	//set them to free fall
	}


getCollide();

}