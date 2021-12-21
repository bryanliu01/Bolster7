var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var xx = (x-cx)*DISPLAY_SCALE_X;
var yy = (y-cy)*DISPLAY_SCALE_Y;

var _hp = currentEnergy/partitionWidth;

draw_sprite(sEnergyBarFrame, 0, xx - 2, yy - 2);

//Draw partial increasing energy bar
draw_sprite_stretched(sEnergyBar, 0, xx, yy, _hp * partitionWidth + global.energyPoints * partitionWidth, energyBarHeight);

//Draw full blocks of energy for each energy point
if (global.energyPoints > 0) {
	for (var i = 0; i < global.energyPoints; i++) {
		draw_sprite_stretched(sEnergyBar, 0, xx, yy, partitionWidth + i * partitionWidth, energyBarHeight);
		
		draw_set_alpha(CreateWave(0, 1, duration, 0));
		draw_sprite_stretched(sPixel, 0, xx, yy, partitionWidth + i * partitionWidth, energyBarHeight);
		draw_set_alpha(1);
		
	}
}

//Draw borders
for (var i = 0; i < maxEnergyPoints; i++) {
	draw_sprite(sEnergyBarBorder, 0, xx + i * partitionWidth, yy);
	
}

//Draw frame on top
draw_sprite(sEnergyBarFrame, 1, xx - 3, yy - 2);

