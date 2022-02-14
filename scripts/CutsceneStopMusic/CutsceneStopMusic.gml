function CutsceneStopMusic(){
	with (oMusicManager) {
		audio_stop_sound(bgm);
	}
	CutsceneEndAction();
}