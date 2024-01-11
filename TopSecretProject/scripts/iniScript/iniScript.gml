function iniScript(){


/* 
	Creating Enumerators for the different states that any given object can be in
	most of these will be clearly labeled and nicely commented
	
	this is the easiest way I can think of to set this up
*/


//Define a PLAYERSTATE Enumerator
enum PlayerStates {
	MOVE,
	SPRINT,
	AIR,
	CROUCH,
	LAND,
	FLINCH,
	DEATH,
	RANGED,
	MELEE,
	HANGING,
	// We'll add attacks over time
	ATTACK1,
	ATTACK2,
	ATTACK3,
	CROUCHATT1,
	CROUCHATT2,
	AIRATT,
	AIRATTLAND,
	//Other movement things
	SLIDE,
	CLIMB,
	ROLL,
	//Item related things
	HEALTH,
	PRAY,

}

enum DUMMY {
	IDLE,
	HIT,
	BROKEN
}
	//enemy enums
#region
enum Skeletonstates {
	IDLE,
	WALK,
	JUMP,
	FLINCH,
	DEAD,
	ATT1,
	ATT2,
	ATT3
}

#endregion











global.CurrentAttHB = noone;

}