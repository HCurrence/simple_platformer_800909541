/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5738D2CC
/// @DnDArgument : "color" "$FFFF0000"
draw_set_colour($FFFF0000 & $ffffff);
var l5738D2CC_0=($FFFF0000 >> 24);
draw_set_alpha(l5738D2CC_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 5D08EE6A
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "5"
/// @DnDArgument : "x2" "150"
/// @DnDArgument : "y2" "45"
draw_rectangle(50, 5, 150, 45, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3AE9E36B
/// @DnDArgument : "color" "$FFBFFBFF"
draw_set_colour($FFBFFBFF & $ffffff);
var l3AE9E36B_0=($FFBFFBFF >> 24);
draw_set_alpha(l3AE9E36B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 4647C9E8
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "5"
/// @DnDArgument : "x2" "150"
/// @DnDArgument : "y2" "45"
/// @DnDArgument : "fill" "1"
draw_rectangle(50, 5, 150, 45, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 5D564DAD
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
/// @DnDArgument : "x" "60"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "sprite" "spr_life"
/// @DnDSaveInfo : "sprite" "9dfec7ae-df87-4daf-b9a7-2ec86f0e1648"
with(obj_character) {
var l5D564DAD_0 = sprite_get_width(spr_life);
var l5D564DAD_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l5D564DAD_2 = __dnd_lives; l5D564DAD_2 > 0; --l5D564DAD_2) {
	draw_sprite(spr_life, 0, 60 + l5D564DAD_1, 10);
	l5D564DAD_1 += l5D564DAD_0;
}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 26E1D8CE
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
/// @DnDArgument : "x" "55"
/// @DnDArgument : "y" "65"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(55, 65, string("Score: ") + string(__dnd_score));
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 19A4D2B4
/// @DnDArgument : "obj" "obj_character"
/// @DnDSaveInfo : "obj" "c219327a-5b0f-46ab-a29d-dde65e67298c"
var l19A4D2B4_0 = false;
l19A4D2B4_0 = instance_exists(obj_character);
if(l19A4D2B4_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 083F287B
	/// @DnDParent : 19A4D2B4
	/// @DnDArgument : "x" "55"
	/// @DnDArgument : "y" "85"
	/// @DnDArgument : "caption" ""Ammo: ""
	/// @DnDArgument : "var" "obj_character.ammo"
	draw_text(55, 85, string("Ammo: ") + string(obj_character.ammo));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30F7060E
/// @DnDArgument : "var" "global.is_game_over"
/// @DnDArgument : "value" "1"
if(global.is_game_over == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 05692599
	/// @DnDApplyTo : all
	/// @DnDParent : 30F7060E
	/// @DnDArgument : "x" "room_width/2"
	/// @DnDArgument : "y" "room_height/2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""Game Over!""
	with(all) draw_text(room_width/2, room_height/2,  + string("Game Over!"));
}