function SkeletonIdle(){
if (sprite_index != spr_skeleton_sight) {sprite_index = spr_skeleton_sight;}
vsp = vsp + grav;	//Apply gravity
hsp = lerp(hsp, 0, 0.5);

if (isHit == true) {
	state = Skeletonstates.FLINCH;
}

enemyGetCollide();

}