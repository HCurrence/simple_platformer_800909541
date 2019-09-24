if( !place_meeting(x+0, y+1, argument_relative) )
{
	gravity = 0.75;	
}
else
{
	gravity = 0;	
}

if(vspeed > 12)
{
	vspeed = 12;	
}