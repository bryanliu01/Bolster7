function PlayMusic(sound, boolOverride) {
	
	if (!instance_exists(oMusicManager)) instance_create_layer(0, 0, "Game", oMusicManager);
	
	with (oMusicManager) {
		global.switchMusic = sound;
		GetLoopLength(sound);
		override = boolOverride;
	}
			
	
}

//Stops the current music playing and allows override of current music
function StopMusic(boolOverride) {
	if (instance_exists(oMusicManager)) {
		with (oMusicManager) {
			override = boolOverride;
			audio_stop_sound(bgm);
		}
	}
}

//Toggles override of music
function OverrideMusic(boolOverride) {
	if (instance_exists(oMusicManager)) {
		with (oMusicManager) {
			override = boolOverride;
		}
	}
}

//Stores the information of song lengths for seamless loops
function GetLoopLength(songName) {
	switch (songName) {
		case bgmSneckTheme:
			loopLength = 79.255;
			break;
		
		default:
			loopLength = 9999;
			break;
	}
}

function GetRoomMusic() {
	switch (room) {
		default:
			global.currentMusic = noone;
			break;
			
	}
}