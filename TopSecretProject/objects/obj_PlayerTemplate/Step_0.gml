/// @description Player Stuff


//Call the input script above all else so we can start using inputs
getInputs();


/*start up a switch statement so that this step event will only
use the scripts we need it to use, when it needs to use them
*/

//Start the "State" Switch
switch (state)
{
	//each case is going to look for which current state the player is in
	//inside of these scripts dictates which state the player *can* go into next
	
		//Idle and Move state
		case PlayerStates.MOVE: knightMove(); break;
		
		//Air state (jumping and falling)
		case PlayerStates.AIR: knightAir(); break;
		
		//Sprint State
		case PlayerStates.SPRINT: knightSprint(); break;
		
		//Duck/Crouching state
		case PlayerStates.CROUCH: knightCrouch(); break;
	
		//attack 1 
		case PlayerStates.ATTACK1: knightAtt1(); break;
}

//keep the player flipped the right way
if (hsp != 0) {image_xscale = sign(hsp);}

















