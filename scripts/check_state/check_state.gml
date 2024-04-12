/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 67E73192
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_state"
function check_state() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A8D1968
	/// @DnDParent : 67E73192
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E2608CB
		/// @DnDParent : 6A8D1968
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75EF6C5E
			/// @DnDParent : 4E2608CB
			/// @DnDArgument : "expr" "playerState.IDLE"
			/// @DnDArgument : "var" "state"
			state = playerState.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 000458A5
		/// @DnDParent : 6A8D1968
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6FD1FBBA
			/// @DnDParent : 000458A5
			/// @DnDArgument : "expr" "playerState.WALK"
			/// @DnDArgument : "var" "state"
			state = playerState.WALK;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 00BD7B86
	/// @DnDParent : 67E73192
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24F971D5
		/// @DnDParent : 00BD7B86
		/// @DnDArgument : "expr" "playerState.AIR"
		/// @DnDArgument : "var" "state"
		state = playerState.AIR;
	}
}