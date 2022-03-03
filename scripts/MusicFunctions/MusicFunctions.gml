function PlayMusic(sound, boolOverride) {

	with (oMusicManager) {
		global.music = sound;
		event_user(0);
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

function PauseMusic(boolOverride) {
	if (instance_exists(oMusicManager)) {
		with (oMusicManager) {
			override = boolOverride;
			audio_pause_sound(bgm);
		}
	}
}

function ResumeMusic(boolOverride) {
	if (instance_exists(oMusicManager)) {
		with (oMusicManager) {
			override = boolOverride;
			audio_resume_sound(bgm);
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
	var _loopLength = -1;
	switch (songName) {
		case bgmSneckTheme:
			_loopLength = 79.255;
			break;
			
		case bgmArkTheme:
			_loopLength = 85.325;
			break;
		
		case bgmTest:
			_loopLength = 3.69;
			break;
		
		default:
			_loopLength = 9999;
			break;
	}
	return _loopLength;
}

function GetRoomMusic() {
	switch (room) {
		
		
		default:
			global.currentMusic = noone;
			break;
			
	}
}