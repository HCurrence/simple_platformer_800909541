if(place_free((x+4), 0) && !climbing)
{
	x += 4;
	y += 0;
}

sprite_index = spr_right;
image_index = 0;

if(bullet_speed<0)
{
	bullet_speed *= -1;	
}