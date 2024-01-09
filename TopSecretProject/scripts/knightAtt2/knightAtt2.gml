function knightAtt2(){
getInputs();
	if (sprite_index != spr_knight_att2) {sprite_index = spr_knight_att2;}
	
	hsp = (.2) * image_xscale;
	vsp = -.2;
	
	
	if (image_index > 6) {
		state = PlayerStates.MOVE;
		canAtt = true;
		sprite_index = spr_knight_idle;
		image_index = 0;
	}
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}