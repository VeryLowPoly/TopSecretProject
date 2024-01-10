function knightAtt3(){
getInputs();
	if (sprite_index != spr_knight_att3) {sprite_index = spr_knight_att3;}
	
	hsp = (.3) * image_xscale;
	vsp = -.1;
	
	
	if (image_index > 6) {
		state = PlayerStates.MOVE;
		canAtt = true;
		sprite_index = spr_knight_idle;
		image_index = 0;
	}
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}