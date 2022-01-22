function DisplayInventory(){
	draw_set_font(fText);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	var inventoryX = invBoxX + invBoxWidth;
	var inventoryY = invBoxY;
	var inventoryLineSep = 4;
	var inventoryWidth = 200;
	var inventoryHeight = string_height("M") * maxItems + 2 * border;
	draw_sprite_stretched(sInventoryBox, 0, inventoryX, inventoryY, inventoryWidth, inventoryHeight);
	for (var i = 0; i < array_length(inv); i ++) {
		
		
		//Draw item name
		draw_text(inventoryX + border, inventoryY + border + i * (string_height("M") + inventoryLineSep) - 4, inv[i].name);
	}
}