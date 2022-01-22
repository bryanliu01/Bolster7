function InteractInventory(){
	draw_set_font(fText);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	var inventoryX = invBoxX + invBoxWidth;
	var inventoryY = invBoxY;
	var inventoryLineSep = 4;
	var inventoryWidth = 200;
	var inventoryHeight = string_height("M") * maxItems + 2 * border;
	draw_sprite_stretched(sInventoryBox, 0, inventoryX, inventoryY, inventoryWidth, inventoryHeight);
	
	for (var i = 0; i < array_length(inv); i++) {
		var _c = c_white;
		
		//Draw item description
		if markerPosition == i {
			_c = c_lime;
			
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
			
			//Grey out prompt until player decides to interact with that item 
			var _c2 = c_grey;
			draw_text_colour(usePosX, usePosY, prompt[0], _c2, _c2, _c2, _c2, 1);
			draw_text_colour(discardPosX, discardPosY, prompt[1], _c2, _c2, _c2, _c2, 1);
			
			//If press Z on hovered item, give prompt to use it or discard it.
			if acceptKey {
				selectedItem = inv[markerPosition];
				global.invLayer = 2;
			}
		}
		
		//Draw item name
		draw_text_colour(inventoryX + border, inventoryY + border + i * (string_height("M") + inventoryLineSep) - 4, inv[i].name, _c, _c, _c, _c, 1);
		
	}
	
}
