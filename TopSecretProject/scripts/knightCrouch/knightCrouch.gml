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
	
	if (!grounded) {state = PlayerStates.AIR;}
	
	getCollide();

}