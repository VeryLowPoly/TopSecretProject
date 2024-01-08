function getCollide(){
//check to see if there's a collision and reduce our speed to stop us before that happens


//horizontal collision
if (place_meeting(x+hsp,y,obj_solid))
{
	while (!place_meeting(x+sign(hsp),y,obj_solid))
	{
		x += sign(hsp);
	}
	
	hsp = 0;	
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_solid))
{
	while (!place_meeting(x,y+sign(vsp),obj_solid))
	{
		y += sign(vsp);
	}
	
	vsp = 0;
		if(place_meeting(x,y+1,obj_solid))
		{
		grounded = true;
		}
}
y += vsp;


}