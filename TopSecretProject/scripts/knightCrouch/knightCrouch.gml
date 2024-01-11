function knightCrouch(){

/*	this script allows the player to duck and do crouch attacks
	players speed will be reduced to 0 if moving already and any
	other mechanics we decide to throw into there
*/

getInputs();


	if (hsp != 0) {hsp = lerp(hsp, 0, 0.3);}
	sprite_index = spr_knight_crouch;
	
	if (!keyDown)
	{
		state = PlayerStates.MOVE;
	}
	
	//attack
	if (keyAttack) && (canAtt)
	{
		hsp = 0;
		global.CurrentAttHB = spr_knight_cAtt1HB;
		state = PlayerStates.CROUCHATT1;
		sprite_index = spr_knight_cAtt1;
		image_index = 0;
		var hbox = instance_create_layer(x,y,"Player",obj_hboxHandler);	
		with (hbox) {
			if (didHit) {
				obj_PlayerTemplate.didHit = true;	
			}
		}
		canAtt = false;
		audio_play_sound(snd_slash,3,false);
	}
	
	if (!grounded) {state = PlayerStates.AIR;}
	
	getCollide();

}