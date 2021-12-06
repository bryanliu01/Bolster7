//event_inherited();

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var xx = (x-cx)*DISPLAY_SCALE_X;
var yy = (y-cy)*DISPLAY_SCALE_Y;

var _hp = current[@ HEALTH]/base[@ HEALTH];


//Draw grey background and health bar
draw_sprite(sBaseHealthGUI, 1, baseHealthBarX, baseHealthBarY);
draw_sprite_stretched(sHealthBar, 0, healthBarOffSetX, healthBarOffSetY, _hp*healthBarWidth, healthBarHeight);

//Draw health text and sprite
draw_set_font(fGUI);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(healthTextPosX, healthTextPosY, string(current[@ HEALTH]) + "/" + string(base[@ HEALTH]));
draw_text(skillTextPosX, skillTextPosY, string(global.skillPoints) + "/" + string(base[@ SKILLPOINTS]));
