function knightAtt1(){
getInputs();
	if (sprite_index != spr_knight_att1) {sprite_index = spr_knight_att1;}
	
	hsp = (.05) * image_xscale;
	vsp = -.1;
	
	
	if (image_index > 7) {
		state = PlayerStates.MOVE;
		canAtt = true;
		sprite_index = spr_knight_idle;
		image_index = 0;
	}
	
	if (image_index > 4) && (image_index < 9)
	{
		if (keyAttack) {
		hsp = 0;
		global.CurrentAttHB = spr_knight_att2HB;
		state = PlayerStates.ATTACK2;
		sprite_index = spr_knight_att2;
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
	
	if (didHit)
	{
		hsp = (2) * -sign(hsp);
	}
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}