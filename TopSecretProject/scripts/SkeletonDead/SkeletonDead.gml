function SkeletonDead(){
if (sprite_index != spr_skeleton_die) {sprite_index = spr_skeleton_die;}

if (image_index >= 7)
{
	image_speed = 0;
	image_index = 6;
	alarm_set(0,10);
}





}