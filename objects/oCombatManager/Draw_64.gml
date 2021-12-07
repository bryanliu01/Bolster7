//The combat manager will manage all enemy health GUI
draw_set_font(fGUI);
for (var i = 0; i < ds_list_size(global.targets); i++) {
	var inst = global.targets[|i];
	var _hp = inst.current[@ HEALTH]/inst.base[@ HEALTH];
	
	var textOffSet = 10 + string_width("HP :" + string(inst.current[@ HEALTH]) + "|" + string(inst.base[@ HEALTH]));
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);

	draw_text(baseHealthBarX - textOffSet, baseHealthBarY, "HP: " + string(inst.current[@ HEALTH]) + "|" +  string(inst.base[@ HEALTH]));
	
	draw_sprite(sEnemyHealthGUI, 1, baseHealthBarX, baseHealthBarY  + i * healthBarHeight);
	draw_sprite_stretched(sHealthBar, 0, healthBarOffSetX, healthBarOffSetY, _hp*healthBarWidth, healthBarHeight);
	draw_sprite(sEnemyHealthGUI, 0, baseHealthBarX, baseHealthBarY  + i * healthBarHeight);
	
}
