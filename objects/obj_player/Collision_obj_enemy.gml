/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11EA5568
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "playerState.DEAD"
if(!(state == playerState.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60E461E2
	/// @DnDParent : 11EA5568
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "enemyState.DEAD"
	if(!(other.state == enemyState.DEAD))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 65B3D14B
		/// @DnDInput : 2
		/// @DnDParent : 60E461E2
		/// @DnDArgument : "expr" "bbox_bottom < other.bbox_bottom+10"
		/// @DnDArgument : "expr_1" "vsp > 0"
		if(bbox_bottom < other.bbox_bottom+10 && vsp > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32AA50C5
			/// @DnDParent : 65B3D14B
			/// @DnDArgument : "expr" "-jump_spd"
			/// @DnDArgument : "var" "vsp"
			vsp = -jump_spd;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 2B5E7BE9
			/// @DnDParent : 65B3D14B
			/// @DnDArgument : "steps" "immune_time"
			alarm_set(0, immune_time);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 2B7CE14E
			/// @DnDApplyTo : other
			/// @DnDParent : 65B3D14B
			with(other) {
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 18C26BB6
				/// @DnDParent : 2B7CE14E
				/// @DnDArgument : "instvar" "11"
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6BFCFEDF
				/// @DnDParent : 2B7CE14E
				/// @DnDArgument : "var" "hsp"
				hsp = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3ECB39CB
				/// @DnDParent : 2B7CE14E
				/// @DnDArgument : "expr" "enemyState.DEAD"
				/// @DnDArgument : "var" "state"
				state = enemyState.DEAD;
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 117422CB
				/// @DnDParent : 2B7CE14E
				/// @DnDArgument : "times" "random_range(2, 4)"
				repeat(random_range(2, 4))
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 491909EB
					/// @DnDParent : 117422CB
					/// @DnDArgument : "xpos" "random_range(-10, 10)"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "bbox_top"
					/// @DnDArgument : "objectid" "obj_coin"
					/// @DnDArgument : "layer" ""Coins""
					/// @DnDSaveInfo : "objectid" "obj_coin"
					instance_create_layer(x + random_range(-10, 10), bbox_top, "Coins", obj_coin);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 38952794
		/// @DnDParent : 60E461E2
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 3CEE8608
			/// @DnDInput : 2
			/// @DnDParent : 38952794
			/// @DnDArgument : "expr" "state != playerState.KNOCKBACK"
			/// @DnDArgument : "expr_1" "alarm[0] <= 0"
			if(state != playerState.KNOCKBACK && alarm[0] <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 43855212
				/// @DnDParent : 3CEE8608
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hp"
				hp += -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 368F8491
				/// @DnDParent : 3CEE8608
				/// @DnDArgument : "expr" "sign(x - other.x)*hsp_knockback"
				/// @DnDArgument : "var" "hsp"
				hsp = sign(x - other.x)*hsp_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A04800C
				/// @DnDParent : 3CEE8608
				/// @DnDArgument : "expr" "-vsp_knockback"
				/// @DnDArgument : "var" "vsp"
				vsp = -vsp_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 363B5033
				/// @DnDParent : 3CEE8608
				/// @DnDArgument : "expr" "playerState.KNOCKBACK"
				/// @DnDArgument : "var" "state"
				state = playerState.KNOCKBACK;
			}
		}
	}
}