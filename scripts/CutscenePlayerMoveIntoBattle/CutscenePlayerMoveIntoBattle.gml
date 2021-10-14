// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CutscenePlayerMoveIntoBattle() {

	with oPlayer {
		speed = 0
		instance_change(oPlayerJump, true);
	}
	CutsceneEndAction();
	
}