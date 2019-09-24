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

//show_debug_message("vspeed: " + string(vspeed));

if(position_meeting(x, y, obj_ladder))
{
	if(keyboard_check_pressed(vk_up))
	{
		climbing = true;
		vspeed = 0;
		gravity = 0;
		
		object_set_sprite(self, spr_climbing);
		
		y-=4
	}
	else if(keyboard_check_pressed(vk_down))
	{
		climbing = true;
		vspeed = 0;
		gravity = 0;
		
		object_set_sprite(self, spr_climbing);
		
		y+=4;
	}
	else
	{
		climbing = false;
	}
}