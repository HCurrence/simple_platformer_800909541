/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 77B6F483
/// @DnDArgument : "var" "is_game_over"
global.is_game_over = 0;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7A84328D
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
/// @DnDArgument : "lives" "3"
with(obj_character) {

__dnd_lives = real(3);
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 03C13C16
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
with(obj_character) {

__dnd_score = real(0);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D0699E4
/// @DnDArgument : "code" "enum states {$(13_10)	normal,$(13_10)	invincible,$(13_10)	weak$(13_10)}"
enum states {
	normal,
	invincible,
	weak
}