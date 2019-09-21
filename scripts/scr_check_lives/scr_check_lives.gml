/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 3FE03F0D
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l3FE03F0D_0 = __dnd_lives == 0;
}
if(l3FE03F0D_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1FB6256C
	/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
	/// @DnDParent : 3FE03F0D
	with(obj_character) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 06A334CB
	/// @DnDParent : 3FE03F0D
	/// @DnDArgument : "value" "0"
	return 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 483219E0
else
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 614E5184
	/// @DnDParent : 483219E0
	/// @DnDArgument : "value" "1"
	return 1;
}