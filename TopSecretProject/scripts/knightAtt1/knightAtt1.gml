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
	
	if (image_index > 4) && (image_index < 8)
	{
		if (keyAttack) {
		hsp = 0;
		global.CurrentAttHB = spr_knight_att2HB;
		state = PlayerStates.ATTACK2;
		sprite_index = spr_knight_att2;
		image_index = 0;
		instance_create_layer(x,y,"Player",obj_hboxHandler);			
		canAtt = false;
	}
	}
	
	vsp = vsp + grav;	//Apply gravity


getCollide();

}