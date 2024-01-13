function SkeletonAtt1(){
	//check and change sprite accordingly
if (sprite_index != spr_skeleton_att1) sprite_index = spr_skeleton_att1;
hsp = 0;
vsp += grav;

if (sprite_index > 7) {
	state = Skeletonstates.IDLE;
}


enemyGetCollide();

}