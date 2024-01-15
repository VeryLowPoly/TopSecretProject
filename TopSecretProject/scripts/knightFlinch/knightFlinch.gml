function knightFlinch(){

var move = keyRight - keyLeft;

grounded = false;

if (move != 0)
{
	hsp = lerp(hsp, move*airspd/2, 0.1);
} else {
	hsp = lerp(hsp, 0, 0.05);	
}

vsp = vsp + grav;

if ( vsp > 0 ) && (place_meeting(x,y+1,obj_solid))
{
	state = PlayerStates.MOVE;
	grounded = true;
	alarm_set(0, 50);
	image_alpha = .5;
}

getCollide();


}
