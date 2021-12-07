//event_inherited();

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var xx = (x-cx)*DISPLAY_SCALE_X;
var yy = (y-cy)*DISPLAY_SCALE_Y;

var _hp = current[@ HEALTH]/base[@ HEALTH];
var _sp = global.skillPoints/base[@ SKILLPOINTS];

//Draw black box
draw_sprite_stretched(sBattleMenuTest, 0, 0, 0, baseHealthBarX + 252, baseHealthBarY + 72);

//Draw grey background, health bar, and skill bar
draw_sprite(sBaseHealthGUI, 1, baseHealthBarX, baseHealthBarY);
draw_sprite_stretched(sHealthBar, 0, healthBarOffSetX, healthBarOffSetY, _hp*healthBarWidth, healthBarHeight);
draw_sprite_stretched(sSkillBar, 0, skillBarOffSetX, skillBarOffSetY, _sp*skillBarWidth, skillBarHeight);

//Draw health text and sprite
draw_set_font(fGUI);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var stringOffSet = string_width("0000");

//Draw GUI number stats
draw_set_color(c_white);

//Health Text
draw_text(healthTextPosX, healthTextPosY, "HP: ");
draw_text(healthTextPosX + string_width("HP: "), healthTextPosY, string(current[@ HEALTH]));
draw_text(healthTextPosX + string_width("HP: ") + stringOffSet, healthTextPosY, "|");

draw_set_color(c_red);
draw_text(healthTextPosX + string_width("HP: | ") + stringOffSet, healthTextPosY, string(base[@ HEALTH]));
draw_set_color(c_white);

//Skill Text
draw_text(skillTextPosX, skillTextPosY, "SP: ");
draw_text(skillTextPosX + string_width("HP: "), skillTextPosY, string(global.skillPoints));
draw_text(skillTextPosX + string_width("HP: ") + stringOffSet, skillTextPosY, "|");

draw_set_color(c_aqua);
draw_text(skillTextPosX + string_width("HP: | ") + stringOffSet, skillTextPosY, string(base[@ SKILLPOINTS]));
draw_set_color(c_white);
