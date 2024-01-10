/// @description Insert description here
// You can write your code in this editor

with (other) {
	if (canHit) {
	isHit = true;
	canHit = false;
	state = DUMMY.HIT;
	}
	image_xscale = other.image_xscale;
	var hitfx = instance_create_layer(x,y-4,"FxLayer",obj_hitfx1);
	with (hitfx) {
		image_speed = 1;	
	audio_play_sound(snd_hit1,3,false);
	}
}

instance_destroy();






















