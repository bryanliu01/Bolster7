function CutscenePlayMusic(sound, boolOverride) {

	with (oMusicManager) {
		global.music = sound;
		event_user(0);
	}
	CutsceneEndAction();
	
}