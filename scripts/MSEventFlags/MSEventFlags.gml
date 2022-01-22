function CutsceneFinishedPlayerEntering() {
	with oEventFlag {
		finishedPlayerEntering = true;
	}
	CutsceneEndAction();
}

function FinishedInterrogationFlag() {
	with oEventFlag {
		finishedInterrogation = true;
	}
}

function FinishedTinkBriefingFlag() {
	with oEventFlag {
		finishedTinkBriefing = true;;
	}
}