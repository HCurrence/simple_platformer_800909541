if( !place_meeting(x, y+1, argument_relative) )
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

show_debug_message("vspeed: " + string(vspeed) + ", gravity: " + string(gravity));
