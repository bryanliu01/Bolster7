draw_set_font(fGUILarge);
draw_set_halign(vk_left);
draw_set_valign(vk_up);
if (!crit) draw_set_colour(c_white);
else draw_set_colour(c_red);

if (damage != 0) draw_text(x + xPlace, y + yPlace, string(damage));
else {
	draw_set_colour(c_white);
	draw_text(x + xPlace, y + yPlace, "miss");
}

draw_set_colour(c_white);