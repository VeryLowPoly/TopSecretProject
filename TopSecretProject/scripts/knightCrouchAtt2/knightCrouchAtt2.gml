function knightCrouchAtt2(){
getInputs();
	if (sprite_index != spr_knight_cAtt2) {sprite_index = spr_knight_cAtt2;}
	
	hsp = (.05) * image_xscale;
	vsp = -.1;
	
	
	if (image_index > 5) {
		if (keyDown) {
		state = PlayerStates.CROUCH;
		canAtt = true;
		sprite_index = spr_knight_crouch;
		image_index = 0;
		} else if (!keyDown) {
			state = PlayerStates.MOVE;
			canAtt = true;
		}
	}
	
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}