draw_set_font(fText);

//Set up to calculate width of menu border
var _newWidth = 0;
for (var i = 0; i < optionLength; i++) {
	var _optionWidth = string_width(option[menuLayer, i]);
	_newWidth = max(_newWidth, _optionWidth);
}

//Calculate width and height properly
height = wordBorder * 2 + string_height(option[0,0]) + (optionLength - 1) * wordSpace;
width = _newWidth + wordBorder * 2;


//Draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);


draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < optionLength; i++) {
	var _c = c_white
	if (markerPosition == i) _c = c_lime;
	draw_text_colour(x + wordBorder, y + wordBorder + wordSpace * i, option[menuLayer, i], _c, _c, _c, _c, 1);
}
