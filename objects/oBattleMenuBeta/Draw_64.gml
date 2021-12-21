if (global.menuLayer != PROCESS && oCombatManager.idle) {

draw_set_font(fText);

//Set up to calculate width of menu border
var _newWidth = 0;
for (var i = 0; i < optionLength; i++) {
	var _optionWidth = string_width(option[global.menuLayer, i]);
	_newWidth = max(_newWidth, _optionWidth);
}

//Calculate width and height properly
//height = wordBorder * 2 + string_height(option[0,0]) + (optionLength - 1) * wordSpace;
//width = _newWidth + wordBorder * 2;

height = 3 * string_height("a") + 2 * wordBorder + 41;
width = string_width("TRAINING BOT") + 2 * wordBorder;

//Draw menu background
//sprite_index = sBattleMenuTest;
draw_sprite_ext(sBattleMenuTest, 0, x, y, width/sprite_get_width(sBattleMenuTest), height/sprite_get_height(sBattleMenuTest), 0, c_white, 1);


draw_set_valign(fa_top);
draw_set_halign(fa_center);
for (var i = 0; i < optionLength; i++) {
	var _c = c_white
	if (markerPosition == i) _c = c_lime;
	draw_text_colour(x + width/2, y + wordBorder + wordSpace * i, option[global.menuLayer, i], _c, _c, _c, _c, 1);
}


//Draw text description and costs for different attacks, skills, and items
if (global.menuLayer != GENERALMENU) {
	draw_sprite_stretched(sBattleMenuTest, 0, x + width, y, RESOLUTIONW - width, height);
	switch (global.menuLayer) {
		
		//Attack Menu
		case ATTACKMENU:
			switch (markerPosition){
				//Basic Attack, default starting move is double punch
				case 0:
					DisplayInfo(doublePunch.energyCost, doublePunch.skillCost, doublePunch.healthCost, doublePunch.info);
				break;
			}
			
		break;
	}
}
}
