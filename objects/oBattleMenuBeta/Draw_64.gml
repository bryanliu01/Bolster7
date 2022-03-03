if (global.menuLayer != PROCESS && oCombatManager.idle && !hide) {

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
	
	//If menu layer is not attack menu, draw the titles normally
	//if (global.menuLayer == GENERALMENU || global.menuLayer == TARGETINGMENU)
	if (global.menuLayer == GENERALMENU)
		draw_text_colour(x + width/2, y + wordBorder + wordSpace * i, option[global.menuLayer, i], _c, _c, _c, _c, 1);
	
	else if  (global.menuLayer == TARGETINGMENU) {
		for (var i = 0; i < ds_list_size(global.targets); i++) {
			var _c = c_white
			if (markerPosition == i) _c = c_lime;
			draw_text_colour(x + width/2, y + wordBorder + wordSpace * i, option[global.menuLayer, i], _c, _c, _c, _c, 1);
		}
	}
	//Otherwise since we have constructor objects, draw the attack names by other code convnetion
	else 
		draw_text_colour(x + width/2, y + wordBorder + wordSpace * i, option[global.menuLayer, i].name, _c, _c, _c, _c, 1);
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
					DisplayInfo(option[ATTACKMENU, 0].energyCost,
								option[ATTACKMENU, 0].skillCost,
								option[ATTACKMENU, 0].healthCost,
								option[ATTACKMENU, 0].info);
				break;
				
				case 1:
					DisplayInfo(option[ATTACKMENU, 1].energyCost,
								option[ATTACKMENU, 1].skillCost,
								option[ATTACKMENU, 1].healthCost,
								option[ATTACKMENU, 1].info);
				break;
			}
			
		break;
		
		case SKILLMENU:
			switch (markerPosition){
				//Basic Attack, default starting move is double punch
				case 0:
					DisplayInfo(option[SKILLMENU, 0].energyCost,
								option[SKILLMENU, 0].skillCost,
								option[SKILLMENU, 0].healthCost,
								option[SKILLMENU, 0].info);
				break;
				
				case 1:	
					DisplayInfo(option[SKILLMENU, 1].energyCost,
								option[SKILLMENU, 1].skillCost,
								option[SKILLMENU, 1].healthCost,
								option[SKILLMENU, 1].info);
				break;
				
			}
			
		break;
	}
}
}

/*
if (oPlayerBattle.state == IDLE)
draw_text(100, 100, option[ATTACKMENU, 0].name);

*/