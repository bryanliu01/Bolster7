function DisplayFlavourText(){

	var flavour = -1;

	draw_set_font(fGUILarge);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	
	var lineSep = 28;
	var boxWidth = RESOLUTIONW - width;
	
	flavour = StoreFlavourText(global.enemyID);
	
	
	var stringWidth = string_width(flavour);
	
	//Default Height
	var flavourY = y - (sprite_get_height(sBattleMenuTest) / 2);
	if (stringWidth > 2 * (boxWidth - 2 * wordBorder) && stringWidth <= 3 * (boxWidth - 2 * wordBorder)) {
		flavourY = flavourY + 24;
	}
	else {
		flavourY = flavourY + 48;
	}
	draw_text_ext(x + width + boxWidth/2, flavourY, flavour, lineSep,  boxWidth - 2 * wordBorder);
	
	
}

