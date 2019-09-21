/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 70FF4E6D
/// @DnDArgument : "soundid" "snd_kill_character"
/// @DnDSaveInfo : "soundid" "190ad8ef-e443-41e7-a7e6-a894f70c9d26"
audio_play_sound(snd_kill_character, 0, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6735FFC7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Ouch!""
draw_text(x + 0, y + -20, string("Ouch!") + "");

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 67586DB2
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 4D191CD4
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
/// @DnDArgument : "op" "2"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l4D191CD4_0 = __dnd_lives > 0;
}
if(l4D191CD4_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 47668202
	/// @DnDParent : 4D191CD4
	x = xstart;
	y = ystart;

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 16220D3E
	/// @DnDApplyTo : all
	/// @DnDParent : 4D191CD4
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0000D9B1
else
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 47157C12
	/// @DnDParent : 0000D9B1
	/// @DnDArgument : "x" "-60"
	/// @DnDArgument : "y" "-60"
	x = -60;
	y = -60;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5BE2748E
	/// @DnDParent : 0000D9B1
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "is_game_over"
	global.is_game_over = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0CBD704A
	/// @DnDParent : 0000D9B1
	/// @DnDArgument : "steps" "120"
	alarm_set(0, 120);
}