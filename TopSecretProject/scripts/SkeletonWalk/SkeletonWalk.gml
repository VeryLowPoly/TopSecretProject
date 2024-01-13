function SkeletonWalk(){

if (sprite_index != spr_skeleton_walk) {sprite_index = spr_skeleton_walk;}
vsp = vsp + grav;	//Apply gravity
hsp = (0.5) * image_xscale;

if (isHit == true) {
	state = Skeletonstates.FLINCH;
	hsp = 6 * -image_xscale;
	vsp = -1;
}

if (distance_to_object(obj_playerParent) > 96) {
	state = Skeletonstates.IDLE;
	sprite_index = spr_skeleton_idle;
}

enemyGetCollide();


}