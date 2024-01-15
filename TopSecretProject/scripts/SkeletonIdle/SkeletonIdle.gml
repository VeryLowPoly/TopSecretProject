function SkeletonIdle(){
if (sprite_index != spr_skeleton_idle) {sprite_index = spr_skeleton_idle;}
vsp = vsp + grav;	//Apply gravity
hsp = lerp(hsp, 0, 0.5);




if (isHit == true) {
	state = Skeletonstates.FLINCH;
	sprite_index = spr_skeleton_flinch;
	image_index = 0;
	canHit = false;
}

if (alarm[1] <= 0) {
	if (distance_to_object(obj_playerParent) < 64) {
			state = Skeletonstates.WALK;
			sprite_index = spr_skeleton_walk;
			image_index = 0;
	}
	alarm_set(1, 20);
}

enemyGetCollide();

}