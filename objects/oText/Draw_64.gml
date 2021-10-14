NineSliceBoxStretched(sTextBox, x1, y1, x2, y2, background);

//Whenever we want to draw text, we need these functions
draw_set_font(fText)
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _print = string_copy(Msg, 1, TextProgress);

if (Responses[0] != -1) && (TextProgress >= string_length(Msg))
{
	for (var i = 0; i < array_length_1d(Responses); i++)
	{
		_print += "\n";
		if (i == ResponseSelected) _print += "* ";
		_print += Responses[i];
		if (i == ResponseSelected) _print += " *";
		
	}
}

draw_text((x1 + x2) / 2, y1 + 16, _print);
