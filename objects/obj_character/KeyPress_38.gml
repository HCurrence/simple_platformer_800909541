if( !place_meeting(x+0, y+1, argument_count-1) )
{
	vspeed -= 6;
}
else
{
	vspeed = 0;	
} 

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
	else
	{
		climbing = false;
	}
}