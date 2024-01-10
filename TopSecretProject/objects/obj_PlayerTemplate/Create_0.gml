/// @description init Variables  
//

//******************************

//Player movement variables
#region
hsp = 0;		//horizontal speed
vsp = 0;		//vertical speed
grav = .2;		//Gravity
jumpspd = 5;	//Jump Height
runjumpspd = 6;		//Running-Jump Height
movespd = 2.5;		//Walking Speed
runspd = 4;			//Running Speed
airspd = 3;			//Aerial drift (no run button)
fastairspd = 4;		//Aerial drift (with speed)
grounded = false;	//variable to check if player is on ground
didHit = false;
canAtt = true;			//variable for allowing melee attack
canShoot = false;		//variable for allowing ranged attack
canAbility = false;		//variable for allowing ability activation
canItem = false;		//variable for using an item on the fly
canHeal = false;		//potential healing mechanic?
canFlinch = false;		//variable for flinch (in case we want invinvibility after flinch)
#endregion


//Player stat variables
hp = 3;			//player current/starting HP(?)
maxhp = 6;		//An example of a way you could boost hp
mp = 50;		//Magic points(?)
maxmp = 99999;	//max magic points
ammo = 10;		//ammunition variable instead of infinite (for gun variation)


state = PlayerStates.MOVE;


















