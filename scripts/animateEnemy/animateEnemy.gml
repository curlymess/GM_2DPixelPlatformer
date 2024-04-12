/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0E56D26F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "animateEnemy"
function animateEnemy() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 54D88304
	/// @DnDParent : 0E56D26F
	/// @DnDArgument : "expr" "state"
	var l54D88304_0 = state;
	switch(l54D88304_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2573179A
		/// @DnDParent : 54D88304
		/// @DnDArgument : "const" "enemyState.IDLE"
		case enemyState.IDLE:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6958B4E4
			/// @DnDParent : 2573179A
			/// @DnDArgument : "expr" "spr_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_idle;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 649AAA7D
			/// @DnDParent : 2573179A
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1E9E091B
		/// @DnDParent : 54D88304
		/// @DnDArgument : "const" "enemyState.WALK"
		case enemyState.WALK:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6338697F
			/// @DnDParent : 1E9E091B
			/// @DnDArgument : "expr" "spr_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_walk;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 55219611
			/// @DnDParent : 1E9E091B
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6A58989A
		/// @DnDParent : 54D88304
		/// @DnDArgument : "const" "enemyState.DEAD"
		case enemyState.DEAD:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E18EB1C
			/// @DnDParent : 6A58989A
			/// @DnDArgument : "expr" "spr_dead"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_dead;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3178C6F6
			/// @DnDParent : 6A58989A
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	}
}