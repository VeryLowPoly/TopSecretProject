function knightAtt2(){
getInputs();
	if (sprite_index != spr_knight_att2) {sprite_index = spr_knight_att2;}
	
	hsp = (.1) * image_xscale;
	vsp = -.1;
	
	
	if (image_index > 6) {
		state = PlayerStates.MOVE;
		canAtt = true;
		sprite_index = spr_knight_idle;
		image_index = 0;
	}
	
	if (image_index > 3) && (image_index < 6)
	{
		if (keyAttack) {
		hsp = 0;
		global.CurrentAttHB = spr_knight_att3HB;
		state = PlayerStates.ATTACK3;
		sprite_index = spr_knight_att3;
		image_index = 0;
		var hbox = instance_create_layer(x,y,"Player",obj_hboxHandler);
		with (hbox) {
			if (didHit == true)
			{
				obj_PlayerTemplate.didHit = true;
			}	
		}
		audio_play_sound(snd_slash,3,false);
		canAtt = false;
		}
	}
	
	vsp = vsp + grav;	//Apply gravity
	
	if (didHit == true)
			{
				hsp = (2) * -sign(hsp);
			}	

getCollide();

}