if( vspeed > 0 && y == other.y+8 )
{
	audio_play_sound(snd_kill_monster, 0, 0);
	
	instance_destroy(other);
	instance_create_layer(other.x, other.y, "Instances", obj_monster_dead);
	
	__dnd_score += 50;
	vspeed += 8;
}
else
{
	script_execute(scr_player_death());
}