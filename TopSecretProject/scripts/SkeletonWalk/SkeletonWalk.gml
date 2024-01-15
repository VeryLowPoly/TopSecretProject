function SkeletonWalk(){

if (sprite_index != spr_skeleton_walk) {sprite_index = spr_skeleton_walk;}
vsp = vsp + grav;	//Apply gravity
hsp = (0.5) * image_xscale;

if (isHit == true) {
	state = Skeletonstates.FLINCH;
	sprite_index = spr_skeleton_flinch;
	image_index = 0;
	canHit = false;
}

if (distance_to_object(obj_playerParent) > 96) {
	state = Skeletonstates.IDLE;
	sprite_index = spr_skeleton_idle;
	image_index = 0;
}

if (alarm[1] <= 0) {
	if (isHit != true) {
		if (distance_to_object(obj_playerParent) < 2) {
			hsp = 0;
			state = Skeletonstates.ATT1;
			canHit = true;
			global.Efollow = id;
			var Ehbox = instance_create_layer(x,y,"Enemy",obj_enemyHboxHandler, {
				sprite_index: spr_skeleton_att1HB,
				image_index: 0,
			});
			with (Ehbox) {
				image_speed = 1;	
			}
			var Efx = instance_create_layer(x,y-(sprite_height/2)+8,"Enemy",obj_enemyHboxHandler)
			with (Efx) {
				audio_play_sound(snd_slash,3,false);	
			}
			sprite_index = spr_skeleton_att1;
			image_index = 0;
		}
	}
}
enemyGetCollide();


}