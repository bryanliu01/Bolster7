//Toggles conditions for drawing based on if drives are enabled or not
if oEventFlag.enabledDrives {
	optionLength = array_length(option[global.invLayer]);
	option[0, 2] = "DRIVES";
}
else {
	optionLength = array_length(option[global.invLayer]) - 1;
	option[0, 2] = "";
}

if (instance_exists(oPlayer)) {
	if (!instance_exists(oCutscene) && !instance_exists(oTextBox) && keyboard_check_pressed(ord("C"))) {
		menuIsOpened = !menuIsOpened;
	}
}



up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
acceptKey = keyboard_check_pressed(ord("Z"));
returnKey = keyboard_check_pressed(ord("X"));


promptLength = array_length(prompt);


//If use items prompt is enabled, change conditions and assign option array
if (promptEnabled) {
	
	promptPos += left - right;
	if (promptPos >= promptLength) promptPos = 0;
	if (promptPos < 0) promptPos = promptLength - 1;
	array_copy(option[2], 0, prompt, 0, array_length(prompt))
}
else if (!promptEnabled) {
	array_copy(option[1], 0, inv, 0, array_length(inv));
	markerPosition += down - up;

	if (markerPosition >= optionLength) markerPosition = 0;
	if (markerPosition < 0) markerPosition = optionLength - 1;
}

if (returnKey) {
	switch (global.invLayer) {
		
		//If we are at base menu layer, do nothing
		case 0:
			break;
		
		//Otherwise, return to previous menu layer
		default:
			global.invLayer--;
			break;
	}
}