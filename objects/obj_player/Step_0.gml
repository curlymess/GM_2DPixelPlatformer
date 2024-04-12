/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 39FAE8EC
/// @DnDArgument : "expr" "state"
var l39FAE8EC_0 = state;
switch(l39FAE8EC_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2B0D6DF0
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "playerState.DEAD"
	case playerState.DEAD:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 41D6C812
		/// @DnDParent : 2B0D6DF0
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3521906D
		/// @DnDParent : 2B0D6DF0
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number - 1"
		if(image_index > image_number - 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EA09200
			/// @DnDParent : 3521906D
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 4FC75535
			/// @DnDParent : 3521906D
			var l4FC75535_0;
			l4FC75535_0 = keyboard_check_pressed(vk_space);
			if (l4FC75535_0)
			{
				/// @DnDAction : YoYo Games.Game.Restart_Game
				/// @DnDVersion : 1
				/// @DnDHash : 04CFBA89
				/// @DnDParent : 4FC75535
				game_restart();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 542F6084
		/// @DnDParent : 2B0D6DF0
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 52FDD787
		/// @DnDParent : 2B0D6DF0
		/// @DnDArgument : "script" "animateCharacter"
		/// @DnDSaveInfo : "script" "animateCharacter"
		script_execute(animateCharacter);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1C0EE73E
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "playerState.AIR"
	case playerState.AIR:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34B33CF8
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "jump"
		jump = false;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 692400B5
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "key" "vk_right"
		var l692400B5_0;
		l692400B5_0 = keyboard_check(vk_right);
		if (l692400B5_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46E753E9
			/// @DnDParent : 692400B5
			/// @DnDArgument : "expr" "walk_spd"
			/// @DnDArgument : "var" "hsp"
			hsp = walk_spd;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7AF3E298
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "key" "vk_left"
		var l7AF3E298_0;
		l7AF3E298_0 = keyboard_check(vk_left);
		if (l7AF3E298_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C1F51EC
			/// @DnDParent : 7AF3E298
			/// @DnDArgument : "expr" "-walk_spd"
			/// @DnDArgument : "var" "hsp"
			hsp = -walk_spd;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 5661DAFB
		/// @DnDParent : 1C0EE73E
		var l5661DAFB_0;
		l5661DAFB_0 = keyboard_check_pressed(vk_space);
		if (l5661DAFB_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0CD2CD99
			/// @DnDParent : 5661DAFB
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jump"
			jump = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 52ECECDF
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3B2001F0
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6DF99CCB
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5A016AC8
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "check_hp"
		/// @DnDSaveInfo : "script" "check_hp"
		script_execute(check_hp);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F27FBD6
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "check_jump"
		/// @DnDSaveInfo : "script" "check_jump"
		script_execute(check_jump);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0FFA364D
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 14A5E51C
		/// @DnDParent : 1C0EE73E
		/// @DnDArgument : "script" "animateCharacter"
		/// @DnDSaveInfo : "script" "animateCharacter"
		script_execute(animateCharacter);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 235D13BC
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "playerState.IDLE"
	case playerState.IDLE:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74063913
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "jump"
		jump = false;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 1D2C724B
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "key" "vk_right"
		var l1D2C724B_0;
		l1D2C724B_0 = keyboard_check(vk_right);
		if (l1D2C724B_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1615E767
			/// @DnDParent : 1D2C724B
			/// @DnDArgument : "expr" "walk_spd"
			/// @DnDArgument : "var" "hsp"
			hsp = walk_spd;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 389D2B86
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "key" "vk_left"
		var l389D2B86_0;
		l389D2B86_0 = keyboard_check(vk_left);
		if (l389D2B86_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06C30826
			/// @DnDParent : 389D2B86
			/// @DnDArgument : "expr" "-walk_spd"
			/// @DnDArgument : "var" "hsp"
			hsp = -walk_spd;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 719642A5
		/// @DnDParent : 235D13BC
		var l719642A5_0;
		l719642A5_0 = keyboard_check_pressed(vk_space);
		if (l719642A5_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E1EEB28
			/// @DnDParent : 719642A5
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jump"
			jump = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 37B1790C
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E14D954
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 561FCFDC
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1090BBED
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "check_hp"
		/// @DnDSaveInfo : "script" "check_hp"
		script_execute(check_hp);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7A91454A
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "check_jump"
		/// @DnDSaveInfo : "script" "check_jump"
		script_execute(check_jump);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1456CC9A
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 08851C98
		/// @DnDParent : 235D13BC
		/// @DnDArgument : "script" "animateCharacter"
		/// @DnDSaveInfo : "script" "animateCharacter"
		script_execute(animateCharacter);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 747B6F56
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "playerState.WALK"
	case playerState.WALK:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EFC44A6
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "jump"
		jump = false;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 76B3BB11
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "key" "vk_right"
		var l76B3BB11_0;
		l76B3BB11_0 = keyboard_check(vk_right);
		if (l76B3BB11_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 466B8E54
			/// @DnDParent : 76B3BB11
			/// @DnDArgument : "expr" "walk_spd"
			/// @DnDArgument : "var" "hsp"
			hsp = walk_spd;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 5B610921
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "key" "vk_left"
		var l5B610921_0;
		l5B610921_0 = keyboard_check(vk_left);
		if (l5B610921_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6ECDA0F1
			/// @DnDParent : 5B610921
			/// @DnDArgument : "expr" "-walk_spd"
			/// @DnDArgument : "var" "hsp"
			hsp = -walk_spd;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7BADA96A
		/// @DnDParent : 747B6F56
		var l7BADA96A_0;
		l7BADA96A_0 = keyboard_check_pressed(vk_space);
		if (l7BADA96A_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DD16198
			/// @DnDParent : 7BADA96A
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jump"
			jump = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4EC0C9BD
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 24845760
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6EFB92F1
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 018C094D
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "check_hp"
		/// @DnDSaveInfo : "script" "check_hp"
		script_execute(check_hp);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5F400FA0
		/// @DnDParent : 747B6F56
		/// @DnDArgument : "script" "check_jump"
		/// @DnDSaveInfo : "script" "check_jump"
		script_execute(check_jump);
	
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
		/// @DnDArgument : "script" "animateCharacter"
		/// @DnDSaveInfo : "script" "animateCharacter"
		script_execute(animateCharacter);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 57AC5A7D
	/// @DnDParent : 39FAE8EC
	/// @DnDArgument : "const" "playerState.KNOCKBACK"
	case playerState.KNOCKBACK:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 55F9CA30
		/// @DnDParent : 57AC5A7D
		/// @DnDArgument : "script" "calc_movement"
		/// @DnDSaveInfo : "script" "calc_movement"
		script_execute(calc_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5FA6611E
		/// @DnDParent : 57AC5A7D
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16B0560A
		/// @DnDParent : 57AC5A7D
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "2"
		if(vsp > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B8B9AD8
			/// @DnDParent : 16B0560A
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 17D8371D
				/// @DnDParent : 6B8B9AD8
				/// @DnDArgument : "script" "check_state"
				/// @DnDSaveInfo : "script" "check_state"
				script_execute(check_state);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2FCD9C62
		/// @DnDParent : 57AC5A7D
		/// @DnDArgument : "script" "check_hp"
		/// @DnDSaveInfo : "script" "check_hp"
		script_execute(check_hp);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 49B32859
		/// @DnDParent : 57AC5A7D
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6909FA7F
		/// @DnDParent : 57AC5A7D
		/// @DnDArgument : "script" "animateCharacter"
		/// @DnDSaveInfo : "script" "animateCharacter"
		script_execute(animateCharacter);
		break;
}