function SkeletonFlinch(){
	if (sprite_index != spr_skeleton_flinch) sprite_index = spr_skeleton_flinch;
	
	vsp += grav;
	hsp = lerp(hsp,0,0.3);
	
	if (image_index > 3) && (hp > 0) {
		state = Skeletonstates.IDLE;	
		canHit = true;
		isHit = false;
	}
	
	if (image_index > 3) && (hp <= 0) {
		state = Skeletonstates.DEAD;
		sprite_index = spr_skeleton_die;
		image_index = 0;
		canHit = false;
		isHit = false;
	}
	
	enemyGetCollide();

}