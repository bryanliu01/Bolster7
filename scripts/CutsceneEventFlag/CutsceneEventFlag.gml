function CutsceneEventFlag(variable){
	with (oEventFlag) {
		variable = true;
	}
	CutsceneEndAction();
}