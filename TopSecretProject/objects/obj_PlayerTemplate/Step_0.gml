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
		//Moving states
#region	
		//Idle and Move state
		case PlayerStates.MOVE: knightMove(); break;
		
		//Air state (jumping and falling)
		case PlayerStates.AIR: knightAir(); break;
		
		//Sprint State
		case PlayerStates.SPRINT: knightSprint(); break;
		
		//Flinch State
		case PlayerStates.FLINCH: knightFlinch(); break;
		
		//Duck/Crouching state
		case PlayerStates.CROUCH: knightCrouch(); break;
#endregion
		//Attack States
#region
		//attack 1 
		case PlayerStates.ATTACK1: knightAtt1(); break;
		
		//attack 2
		case PlayerStates.ATTACK2: knightAtt2(); break;
		
		//attack3
		case PlayerStates.ATTACK3: knightAtt3(); break;
		
		//Crouch attack 1
		case PlayerStates.CROUCHATT1: knightCrouchAtt(); break;
		
		//Crouch attack 2
		case PlayerStates.CROUCHATT2: knightCrouchAtt2(); break;
#endregion
}

//keep the player flipped the right way
if (hsp != 0) {image_xscale = sign(hsp);}

















