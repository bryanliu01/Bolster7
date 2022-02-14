function CutsceneChangeTextID(obj, _textID){
	var inst = instance_nearest(oPlayer.x, oPlayer.y, obj);
	inst.textID = _textID;
	CutsceneEndAction();
}