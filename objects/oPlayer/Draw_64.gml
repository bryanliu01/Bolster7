draw_set_font(fGUI);
draw_set_colour(c_white);
if (hitByAttack != -1) {
	for (var i = 0; i < ds_list_size(hitByAttack); i++) {
		draw_text(20, 20 + i * 10, hitByAttack[| i]);
	}
}

