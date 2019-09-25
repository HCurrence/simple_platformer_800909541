if( distance_to_object(obj_character) < 45)
{
	path_end();	
	onPath = false;
	
	point_direction(x, y, obj_character.x, obj_character.y);
	speed = 2;
}

if(!onPath)
{
	path_start(path0, 10, path_action_restart, true);
	onPath = true;
}