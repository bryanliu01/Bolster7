draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

border = 16;
lineSep = 28;
invBoxWidth = 2 * border + string_width("INVENTORY");
invBoxHeight = 2 * border + 3 * string_height("M");

lineWidth = invBoxWidth - border * 2;
invBoxX = 30;
invBoxY = 30;

if (menuIsOpened && !instance_exists(oTextBox)) {
	
	//Draw base menu box
	draw_sprite_stretched(sInventoryBox, 0, invBoxX, invBoxY, invBoxWidth, invBoxHeight);
	
	if (global.invLayer == 0) {
		//Draw base menu text
		for (var i = 0; i < 3; i++) {
			var textY = invBoxY + border + i * lineSep - 4;
			var _c = c_white;
			if (markerPosition == i) {
				_c = c_lime;
			}
		
			if (i != 2) {
				draw_text_colour(invBoxX + 20, textY, option[0, i],  _c, _c, _c, _c, 1);
			}
		
			//If drives are not introduced, grey out drives, it cannot be selected
			else if (i == 2 && !oEventFlag.enabledDrives) {
				_c = c_gray;
				draw_text_colour(invBoxX + 20, textY, "DRIVES" ,  _c, _c, _c, _c, 1);
			}
		
			//If drives are introduced, allow player to select and view drives
			else if (i == 2 && oEventFlag.enabledDrives) {
				draw_text_colour(invBoxX + 20, textY, option[0, i],  _c, _c, _c, _c, 1);
			}
		}
	}
	else if (global.invLayer != 0) {
		for (var i = 0; i < 3; i++) {
			var textY = invBoxY + border + i * lineSep - 4;
			var _c = c_white;
			if (i != 2) {
				draw_text_colour(invBoxX + 20, textY, option[0, i],  _c, _c, _c, _c, 1);
			}
		
			//If drives are not introduced, grey out drives, it cannot be selected
			else if (i == 2 && !oEventFlag.enabledDrives) {
				_c = c_gray;
				draw_text_colour(invBoxX + 20, textY, "DRIVES" ,  _c, _c, _c, _c, 1);
			}
		
			//If drives are introduced, allow player to select and view drives
			else if (i == 2 && oEventFlag.enabledDrives) {
				draw_text_colour(invBoxX + 20, textY, option[0, i],  _c, _c, _c, _c, 1);
			}
		}
	}
	
	var _startingLayer = global.invLayer;
	
	switch (global.invLayer) {
		//Main Box
		case 0: 
			promptEnabled = false;
			//Displays the relative box and text depending on which option is hovered
			switch markerPosition {
				case INVENTORYMENU:
					DisplayInventory();
					//Go to inventory box if there is at least one item
					if (acceptKey && array_length(inv) > 0) global.invLayer = 1;
					break;
					
				case STATSMENU:
						//DisplayStats();
					break;
			
				case DRIVESMENU:
						//DisplayDrives();
					break;
			}
		break;
		
		//Inventory Box
		case 1:
			promptEnabled = false;
			InteractInventory();
			break;
		
		case 2:
			promptEnabled = true;
			ShowInventoryPrompt();
			break;
	}
	if (_startingLayer != global.invLayer) markerPosition = 0;
	
	//Correct the option length after switching menu layer
	optionLength = array_length(option[global.invLayer]);
	 
}
else if (!menuIsOpened) {
	global.invLayer = 0;
	markerPosition = 0;
	promptPos = 0;
}

