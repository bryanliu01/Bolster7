//This function draws the entire info of a particular attack or skill
//It takes 4 parameters from a struct
//@param energyCost
//@param skillCost
//@param healthCost
//@param info
//The parameters are formatted in a text box in various position
function DisplayInfo(energyCost, skillCost, healthCost, info) {
	
	//Determine number of costs for partition formatting
	var numberOfCosts = 0;
	var currentPartition = 0;
	
	for (var i = 0; i < argument_count; i++) {
		if (argument[i] != 0) {
			numberOfCosts++;
		}
	}
	
	draw_set_font(fGUI);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	
	var boxWidth = RESOLUTIONW - width;
	
	//Draw costs on one line
	var costPosX = x + width + boxWidth/numberOfCosts;
	var costPosY = y + wordBorder;
	
	//Draw costs on divided centres depending on number of costs
	if (energyCost > 0) {
		var c = c_yellow;
		draw_text_color(costPosX + currentPartition, costPosY, "Energy: " + string(energyCost), c, c, c, c, 1);
		currentPartition += boxWidth/numberOfCosts;
	}
	
	if (skillCost > 0) {
		var c = c_aqua;
		draw_text_color(costPosX + currentPartition, costPosY, "Skill: " + string(skillCost), c, c, c, c, 1);
		currentPartition += boxWidth/numberOfCosts;
	}
	
	if (healthCost > 0) {
		var c = c_red;
		draw_text_color(costPosX + currentPartition, costPosY, "Health: " + string(healthCost), c, c, c, c, 1);
		currentPartition += boxWidth/numberOfCosts;
	}
	

	//Draw info text
	draw_set_font(fGUI);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_text_ext(x + width + boxWidth/2, costPosY + wordSpace, info, infoSpace, boxWidth - 2 * wordBorder);	
	
}