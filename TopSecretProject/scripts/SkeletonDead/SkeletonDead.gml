function SkeletonDead(){
if (sprite_index != spr_skeleton_die) {sprite_index = spr_skeleton_die;}

if (image_index > 6)
{
	image_speed = 0;
	image_index = 6;
	image_alpha --;
}

if (image_alpha < 0) {instance_destroy();}


}