function knightAir(){
/*assuming we're in the air, this script will check for rising and falling
	and for collisions. Colliding with a collision object from the bottom
	will return the player to the "MOVE" state. Any attacks done here will
	have other implications
*/

var move = keyRight - keyLeft;

grounded = false;

if (move != 0)
{
	if (!keySprint)
	{
	hsp = lerp(hsp, move*airspd, 0.3);
	} else if (keySprint)
	{
	hsp = lerp(hsp, move*fastairspd, 0.5);	
	}
} else {
	hsp = lerp(hsp, 0, 0.2);	
}

vsp = vsp + grav;

if (keyboard_check_released(vk_space))
{
	vsp = lerp(vsp, grav, grav);	
}

if ( vsp > 0 ) && (place_meeting(x,y+1,obj_solid))
{
	/* dust particles
	if (vsp > 4)
	{
		//dust that bitch
		//change to landing instead
	} */
	if (keySprint)
	{
	state = PlayerStates.SPRINT;
	grounded = true;
	} else if (!keySprint) {
	state = PlayerStates.MOVE;
	grounded = true;
	}
}

getCollide();


	if (vsp < 0)
	{
		if (place_meeting(sprite_width/2,y-34,obj_blockparent))
		{
			with (other)
			{
				bumped = true;	
			}
		}
		
		sprite_index = spr_knight_jump;
		image_index = 1;
	} else {
		sprite_index = spr_knight_jump;
		image_index = 0;
	}


}