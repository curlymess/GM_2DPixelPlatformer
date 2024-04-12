/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 672E336F
/// @DnDArgument : "value" "0.3"
/// @DnDArgument : "var" "grav"
global.grav = 0.3;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1744AAB3
/// @DnDArgument : "code" "/// player states$(13_10)enum playerState {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	AIR,$(13_10)	KNOCKBACK,$(13_10)	DEAD$(13_10)}$(13_10)$(13_10)/// enemy states$(13_10)enum enemyState {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	DEAD$(13_10)}$(13_10)"
/// player states
enum playerState {
	IDLE,
	WALK,
	AIR,
	KNOCKBACK,
	DEAD
}

/// enemy states
enum enemyState {
	IDLE,
	WALK,
	DEAD
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0EF6D63D
/// @DnDArgument : "var" "score"
global.score = 0;

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 038C83B0
/// @DnDArgument : "font" "fnt_game"
/// @DnDSaveInfo : "font" "fnt_game"
draw_set_font(fnt_game);