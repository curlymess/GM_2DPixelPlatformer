/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 39FAE8EC
/// @DnDArgument : "expr" "state"
var l39FAE8EC_0 = state;
switch(l39FAE8EC_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 51DBFFD0
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "enemyState.WALK"
	case enemyState.WALK:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A939A83
		/// @DnDParent : 51DBFFD0
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A426CA4
			/// @DnDParent : 6A939A83
			/// @DnDArgument : "expr" "-1*facing"
			/// @DnDArgument : "var" "facing"
			facing = -1*facing;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7415B656
		/// @DnDParent : 51DBFFD0
		/// @DnDArgument : "expr" "walk_spd*facing"
		/// @DnDArgument : "var" "hsp"
		hsp = walk_spd*facing;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6D92857A
		/// @DnDParent : 51DBFFD0
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6D14F0C8
		/// @DnDParent : 51DBFFD0
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7EAE5756
		/// @DnDParent : 51DBFFD0
		/// @DnDArgument : "script" "animateEnemy"
		/// @DnDSaveInfo : "script" "animateEnemy"
		script_execute(animateEnemy);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 747B6F56
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "enemyState.IDLE"
	case enemyState.IDLE:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EFC44A6
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "var" "hsp"
		hsp = 0;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4EC0C9BD
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 11BABF38
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1F00A756
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "animateEnemy"
		/// @DnDSaveInfo : "script" "animateEnemy"
		script_execute(animateEnemy);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 16B42CB6
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "enemyState.DEAD"
	case enemyState.DEAD:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B54D65B
		/// @DnDParent : 16B42CB6
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number - 1"
		if(image_index > image_number - 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A1A40DD
			/// @DnDParent : 4B54D65B
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 55313AF4
		/// @DnDParent : 16B42CB6
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0E16962C
		/// @DnDParent : 16B42CB6
		/// @DnDArgument : "script" "animateEnemy"
		/// @DnDSaveInfo : "script" "animateEnemy"
		script_execute(animateEnemy);
		break;
}