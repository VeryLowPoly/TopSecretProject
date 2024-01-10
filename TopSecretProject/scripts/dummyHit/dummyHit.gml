function dummyHit(){
image_index = 1;

if (timer < 0)
{
	state = DUMMY.IDLE;	
	timer = 15;
	isHit = false;
	canHit = true;
	image_index = 0;
}


}