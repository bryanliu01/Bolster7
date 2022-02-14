//This function displays the colours of the desk for a minigame
function CutsceneDisplayDeskColour(spriteIndex){
	with (oMainOfficeDesk) {
		
		//If parameter is not -1, then it belongs in the colour array
		if (spriteIndex != -1) image_index = colourArray[spriteIndex];
		
		//Else there is no colour on the desk
		else image_index = 0;

	}
	
	CutsceneEndAction();
}