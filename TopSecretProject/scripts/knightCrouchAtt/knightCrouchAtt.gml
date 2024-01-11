function knightCrouchAtt(){
getInputs();
	if (sprite_index != spr_knight_cAtt1) {sprite_index = spr_knight_cAtt1;}
	
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
	
	if (image_index > 2) && (image_index < 6)
	{
		if (keyAttack) {
		hsp = 0;
		global.CurrentAttHB = spr_knight_cAtt2HB;
		state = PlayerStates.CROUCHATT2;
		sprite_index = spr_knight_cAtt2;
		image_index = 0;
		var hbox = instance_create_layer(x,y,"Player",obj_hboxHandler);
		with (hbox) {
			
		}
		audio_play_sound(snd_slash,3,false);
		canAtt = false;
		}
	}
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}