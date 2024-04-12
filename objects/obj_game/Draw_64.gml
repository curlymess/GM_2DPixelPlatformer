/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 6C0C7BF4
/// @DnDArgument : "x" "20"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_heart_empty"
/// @DnDArgument : "number" "obj_player.hp_max"
/// @DnDSaveInfo : "sprite" "spr_heart_empty"
var l6C0C7BF4_0 = sprite_get_width(spr_heart_empty);
var l6C0C7BF4_1 = 0;
for(var l6C0C7BF4_2 = obj_player.hp_max; l6C0C7BF4_2 > 0; --l6C0C7BF4_2) {
	draw_sprite(spr_heart_empty, 0, x + 20 + l6C0C7BF4_1, y + 10);
	l6C0C7BF4_1 += l6C0C7BF4_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 12A894EB
/// @DnDArgument : "x" "20"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_heart"
/// @DnDArgument : "number" "obj_player.hp"
/// @DnDSaveInfo : "sprite" "spr_heart"
var l12A894EB_0 = sprite_get_width(spr_heart);
var l12A894EB_1 = 0;
for(var l12A894EB_2 = obj_player.hp; l12A894EB_2 > 0; --l12A894EB_2) {
	draw_sprite(spr_heart, 0, x + 20 + l12A894EB_1, y + 10);
	l12A894EB_1 += l12A894EB_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4D4913A8
/// @DnDArgument : "x" "-10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.score"
draw_text(x + -10, y + 50, string("Score: ") + string(global.score));