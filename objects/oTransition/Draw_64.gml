//Toggle the different types of effects for room transition
if (type == transType.slide) {
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, percent * heightHalf, false);
	draw_rectangle(0, height, width, height - percent * heightHalf, false);
}

if (type == transType.fade){
	draw_set_alpha(percent);
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, height, false);
	draw_set_alpha(1);
}

