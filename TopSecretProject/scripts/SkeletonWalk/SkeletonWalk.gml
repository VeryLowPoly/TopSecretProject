function SkeletonWalk(){

if (sprite_index != spr_skeleton_walk) {sprite_index = spr_skeleton_walk;}
vsp = vsp + grav;	//Apply gravity
hsp = (0.5) * image_xscale;

if (isHit == true) {
	state = Skeletonstates.FLINCH;
	hsp = 3 * -image_xscale;
	vsp = -1;
}

enemyGetCollide();


}