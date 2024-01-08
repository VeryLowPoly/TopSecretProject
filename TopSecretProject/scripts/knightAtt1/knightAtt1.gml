function knightAtt1(){
getInputs();
	if (sprite_index != spr_knight_att1) {sprite_index = spr_knight_att1;}
	
	hsp = (.2) * image_xscale;
	vsp = -.2;
	
	
	if (image_index > 7) {
		state = PlayerStates.MOVE;
		canAtt = true;
		sprite_index = spr_knight_idle;
		image_index = 0;
	}
	
	/*
	if (image_index > 5) && (image_index < 8)
	{
		if (keyAttack)
		{
			state = PlayerStates.ATTACK2;	
		}
	}
	*/
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}