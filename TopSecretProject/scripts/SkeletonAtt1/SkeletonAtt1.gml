function SkeletonAtt1(){
	//check and change sprite accordingly
if (sprite_index != spr_skeleton_att1) sprite_index = spr_skeleton_att1;
hsp = 0;
vsp += grav;



if (image_index >= 7) {
	if (hp > 0) {
	state = Skeletonstates.IDLE;
	sprite_index = spr_skeleton_idle;
	image_index = 0;
	isHit = false;
	alarm_set(1, 20);
	} else if (hp <= 0) {
		state = Skeletonstates.DEAD;
		sprite_index = spr_skeleton_die;
		image_index = 0;
	}
}

if (isHit == true) && (canHit == true) {
	canHit = true;
	isHit = false;
}



enemyGetCollide();

}