function DrawCosmetics(_speakerX){
	if (speakerObject[page] == npcArk) {
		if (speakerSprite[page] == tArkAngryEx) {
			draw_sprite(sArkMonocleAngry, frame, _speakerX + 54, textBoxY + 45);
		}
		else {
			draw_sprite(sArkMonocle, frame, _speakerX + 54, textBoxY + 45);
		}
	}
}