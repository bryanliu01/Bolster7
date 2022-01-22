function ShowInventoryPrompt() {
	
	draw_set_font(fText);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	var inventoryX = invBoxX + invBoxWidth;
	var inventoryY = invBoxY;
	var inventoryLineSep = 4;
	var inventoryWidth = 200;
	var inventoryHeight = string_height("M") * maxItems + 2 * border;
	draw_sprite_stretched(sInventoryBox, 0, inventoryX, inventoryY, inventoryWidth, inventoryHeight);
	
	//Draw item name and description box
	for (var i = 0; i < array_length(inv); i++) {
		var _c = c_white;
			
		var descX = inventoryX + inventoryWidth;
		var descY = inventoryY;
		var descWidth = RESOLUTIONW - inventoryWidth - invBoxWidth - invBoxX * 2;
		var descHeight = inventoryHeight;
			
		draw_sprite_stretched(sInventoryBox, 0, descX, descY, descWidth, descHeight);
		draw_text_ext(descX + border, descY + border - 4, inv[i].description, inventoryLineSep + string_height("M"), descWidth - 2 * border);
			
		var usePosX = descX + descWidth / 3 - 40;
		var usePosY = descY + descHeight - border - string_height("M");
			
		var discardPosX = descX + descWidth - 40 - string_width("discard");
		var discardPosY = usePosY;
		
		
		//Draw item name
		draw_text_colour(inventoryX + border, inventoryY + border + i * (string_height("M") + inventoryLineSep) - 4, inv[i].name, _c, _c, _c, _c, 1);
			
	}
	
	//Draw prompt
	for (var j = 0; j < promptLength; j++) {
		
		var _c2 = c_white;
		if (promptPos == j) {
			_c2 = c_lime;
			//If user uses item
			if (acceptKey && promptPos == 0) {
				objectScript = selectedItem.useScript;
				event_user(0);
			}
			//If user discards item
			else if (acceptKey && promptPos == 1) {
				objectScript = selectedItem.discardScript;
				event_user(0);
			}
		}
		
		//Turn prompts on, colour them white, with green as selected prompt
		draw_text_colour(usePosX + j * (discardPosX - usePosX), discardPosY, prompt[j], _c2, _c2, _c2, _c2, 1);
	}

}
