
function CutscenePlaySound() {
	audio_play_sound(argument0, argument1, argument2);
	CutsceneEndAction();

}


//Specific function for desk minigame in main office
function CutscenePlayDeskSound() {
	
	//Randomly choose a sound to play when the desk pings a colour
	var choosePing = choose(sfxDeskPing1, sfxDeskPing2, sfxDeskPing3, sfxDeskPing4);
	audio_play_sound(choosePing, 10, false);
	CutsceneEndAction();
}