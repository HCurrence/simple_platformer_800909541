audio_play_sound(snd_kill_character, 0, 0);

with(obj_character) 
{
	draw_text(x + 0, y + -20, string("Ouch!") + "");
	
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l4D191CD4_0 = __dnd_lives > 0;

	if(l4D191CD4_0)
	{
		x = xstart;
		y = ystart;

		room_restart();
	}
	else
	{
		x = -60;
		y = -60;

		global.is_game_over = 1;

		alarm_set(0, 120);
	}
}