/// @description Insert description here
// You can write your code in this editor

with (other) {
	if (canFlinch) {
	state = PlayerStates.FLINCH;
	hsp = choose(2,3) * image_xscale;
	vsp = -jumpspd/2;
	audio_play_sound(snd_hit1,3,false);
		var fx = instance_create_layer(x,y-32,"Player",obj_hitfx1);
		with (fx) {
			image_speed = 1;
		}
	}
}
instance_destroy();























