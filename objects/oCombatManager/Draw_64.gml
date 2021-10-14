draw_text(80,0, "allow input:" + string(allowInput) + "selected unit: " + string(global.selectedUnit));



for (var i = 0; i < ds_list_size(global.units); i++) {
	draw_text(40,16+(i*16), string(global.units[|i]));
}