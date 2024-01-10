/// @description Insert description here
// You can write your code in this editor

with (other) {
	if (canHit) {
	isHit = true;
	canHit = false;
	state = DUMMY.HIT;
	}
	image_xscale = other.image_xscale;
	if(!instance_exists(obj_hitfx1)) {
	instance_create_layer(x,y-4,"Player",obj_hitfx1);
	audio_play_sound(snd_hit1,3,false);
	}
}






















