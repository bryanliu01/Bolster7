if (!override) {
	GetRoomMusic();
	
	/*
		if (!audio_is_playing(bgm) && global.switchMusic != global.currentMusic) {
			audio_stop_sound(bgm);
			bgm = audio_play_sound(global.switchMusic, 0, false);
			pos = audio_sound_get_track_position(bgm);
		
			//Makes music loop smooth as opposed to frame skip looping
			if (pos > loopLength) {
				audio_sound_set_track_position(bgm, pos - loopLength);
			}
		}
	
	global.currentMusic = global.switchMusic;
	*/
}
else {
	if (!audio_is_playing(bgm) && global.switchMusic != global.currentMusic) {
		audio_stop_sound(bgm);
		bgm = audio_play_sound(global.switchMusic, 0, false);
	
	}

	pos = audio_sound_get_track_position(bgm);
		
		//Makes music loop smooth as opposed to frame skip looping
		if (pos > loopLength) {
			audio_sound_set_track_position(bgm, pos - loopLength);
		}

	global.currentMusic = global.switchMusic;
}
