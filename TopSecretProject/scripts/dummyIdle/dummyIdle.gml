function dummyIdle(){
image_index = 0;

if (isHit)
{
	canHit = false;
	image_index = 1;
	state = DUMMY.HIT;
}

}