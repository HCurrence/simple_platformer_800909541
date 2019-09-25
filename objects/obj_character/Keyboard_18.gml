if(keyboard_check_pressed(vk_shift))
{
	if(keyboard_check_pressed(vk_add))
	{
		__dnd_lives += 5;
	}
	
	if(keyboard_check_pressed(vk_decimal))
	{
		draw_text(400, 400, "THIS GAME WAS MADE BY HALEY P CURRENCE.\n" 
		+ "IF YOU FOUND THIS AND THE PROJECT ISN'T MINE, THIS GAME WAS STOLEN.")	
	}
}