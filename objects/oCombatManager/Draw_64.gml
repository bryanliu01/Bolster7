//The combat manager will manage all enemy health GUI
//Draw all enemies health
if(introFinished) {
draw_set_font(fGUI);
for (var i = 0; i < ds_list_size(global.targets); i++) {
	var inst = global.targets[|i];
	
	var _hp = inst.current[@ HEALTH]/inst.base[@ HEALTH];
	
	var textOffSet = 20 + string_width("HP 00" + string(inst.current[@ HEALTH]) + "|" + string(inst.base[@ HEALTH]));
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	var heightDiff = i * healthBarHeight * 2;
	
	
	//Lock health to 0 if negative
	if (inst.current[@ HEALTH] >= 0) draw_text(baseHealthBarX - textOffSet, baseHealthBarY + heightDiff, "HP " + string(inst.current[@ HEALTH]));
	else draw_text(baseHealthBarX - textOffSet, baseHealthBarY + heightDiff, "HP " + "0");
	
	draw_text(baseHealthBarX - textOffSet + string_width("HP 000"), baseHealthBarY + heightDiff, " | " +  string(inst.base[@ HEALTH]))
	draw_sprite(sEnemyHealthGUI, 1, baseHealthBarX, baseHealthBarY  + heightDiff);
	draw_sprite_stretched(sHealthBar, 0, healthBarOffSetX, healthBarOffSetY + heightDiff, _hp*healthBarWidth, healthBarHeight);
	draw_sprite(sEnemyHealthGUI, 0, baseHealthBarX, baseHealthBarY + heightDiff);
	
}
}

/*
for (var i = 0; i < ds_list_size(global.targets); i++) {
	draw_text(100,100 + i * 10,global.targets[|i].id);
}