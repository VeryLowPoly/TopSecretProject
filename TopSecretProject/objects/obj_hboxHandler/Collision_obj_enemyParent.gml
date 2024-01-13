/// @description Insert description here
// You can write your code in this editor

with (other) //"other" returns id of enemy we're colliding with instead of all of the enemy objs
{
	//if not invincible or whatever (later on)
	
	hp--;
	flash = 5;
	if (canHit) {
	isHit = true;
	var hitfx = instance_create_layer(x,y-choose(20,32,10,25,37),"FxLayer",obj_hitfx1);
	with (hitfx) {
		image_speed = 1;	
	audio_play_sound(snd_hit1,3,false);
	}
	hsp = 3 * obj_playerParent.image_xscale;
	vsp = -1;
	canHit = false;
	
	}
	
}

instance_destroy();






















