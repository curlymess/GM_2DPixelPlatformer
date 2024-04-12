/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 21CFA282
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_hp"
function check_hp() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51379726
	/// @DnDParent : 21CFA282
	/// @DnDArgument : "var" "obj_player.hp"
	/// @DnDArgument : "op" "3"
	if(obj_player.hp <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C7746E5
		/// @DnDParent : 51379726
		/// @DnDArgument : "expr" "playerState.DEAD"
		/// @DnDArgument : "var" "state"
		state = playerState.DEAD;
	}
}