//Button functions for the desk minigame
function PressOrange() {
	pressArray[currentElement] = ORANGE;
	if (pressArray[currentElement] == colourArray[currentElement]) {
		audio_play_sound(sfxCorrect, 10, false);
		currentElement++;
	}
	
	else {
		audio_play_sound(sfxIncorrect, 10, false);
		MainOfficeDeskDefault();
	}
}

function PressRed() {
	pressArray[currentElement] = RED;
	if (pressArray[currentElement] == colourArray[currentElement]) {
		audio_play_sound(sfxCorrect, 10, false);
		currentElement++;
	}
	
	else {
		audio_play_sound(sfxIncorrect, 10, false);
		MainOfficeDeskDefault();
	}
}

function PressGreen() {
	pressArray[currentElement] = GREEN;
	if (pressArray[currentElement] == colourArray[currentElement]) {
		audio_play_sound(sfxCorrect, 10, false);
		currentElement++;
	}
	
	else {
		audio_play_sound(sfxIncorrect, 10, false);
		MainOfficeDeskDefault();
	}
}

function PressBlue() {
	pressArray[currentElement] = BLUE;
	if (pressArray[currentElement] == colourArray[currentElement]) {
		audio_play_sound(sfxCorrect, 10, false);
		currentElement++;
	}
	
	else {
		audio_play_sound(sfxIncorrect, 10, false);
		MainOfficeDeskDefault();
	}
}
