//Draw base background
draw_sprite_stretched(sBattleBackground, 0, 0, 0, RESOLUTIONW, RESOLUTIONH);

//Draw moving horizon plane
draw_set_alpha(0.3);
draw_set_color(c_aqua);
for (var i = 0; i <= numLines; i++) {
	//Draw lines travelling left
	draw_line(startLeaderLineX + i * startTravelDistanceX, startLeaderLineY, endLeaderLineX + i * endTravelDistanceX, endLeaderLineY);
	draw_line(startLeaderLineX + i * startTravelDistanceX, bottomStartLeaderY, endLeaderLineX + i * endTravelDistanceX, bottomEndLeaderY);
}


draw_set_alpha(0.3);
draw_set_color(c_aqua);
for (var i = 0; i < numLines; i++) {
	var scaling = power(1.5, i);
	draw_line(-1, horizontalMiddleY + (baseSpacing * scaling), RESOLUTIONW, (horizontalMiddleY + baseSpacing * scaling));
	draw_line(-1, horizontalTopY - (baseSpacing * scaling), RESOLUTIONW, horizontalTopY - (baseSpacing * scaling));

}

draw_set_color(c_white);
draw_set_alpha(1);


