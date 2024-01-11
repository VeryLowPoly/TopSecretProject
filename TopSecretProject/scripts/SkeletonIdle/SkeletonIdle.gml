function SkeletonIdle(){
if (sprite_index != spr_skeleton_idle) {sprite_index = spr_skeleton_idle;}
vsp = vsp + grav;	//Apply gravity
hsp = lerp(hsp, 0, 0.5);

if (isHit == true) {
	state = Skeletonstates.FLINCH;
}

enemyGetCollide();

}