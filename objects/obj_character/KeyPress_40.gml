if(position_meeting(x, y, obj_ladder))
{
	if(keyboard_check_pressed(vk_down))
	{
		climbing = true;
		vspeed = 0;
		gravity = 0;
		
		object_set_sprite(self, spr_climbing);
		
		y+=4
	}
	else
	{
		climbing = false;
	}
}