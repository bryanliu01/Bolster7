if (audio_is_playing(bgm)) {	
	pos = audio_sound_get_track_position(bgm);
	//Makes music loop smooth as opposed to frame skip looping
	if (pos > loopLength) {
		pos = audio_sound_set_track_position(bgm, 0);
	}
}
