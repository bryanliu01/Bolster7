//The combat manager will manage all enemy health GUI
for (var i = 0; i < ds_list_size(global.targets); i++) {
	var inst = global.targets[|i];
	var _hp = inst.current[@ HEALTH]/inst.base[@ HEALTH];
	
	draw_sprite(sEnemyHealthGUI, 1, baseHealthBarX, baseHealthBarY  + i * healthBarHeight);
	draw_sprite_stretched(sHealthBar, 0, healthBarOffSetX, healthBarOffSetY, _hp*healthBarWidth, healthBarHeight);
	draw_sprite(sEnemyHealthGUI, 0, baseHealthBarX, baseHealthBarY  + i * healthBarHeight);
	
}
