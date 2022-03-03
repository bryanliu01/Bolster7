function CutsceneChangePunchScript(obj, _punchScript){
	with obj {
		punchScript = _punchScript
	}
	CutsceneEndAction();
}