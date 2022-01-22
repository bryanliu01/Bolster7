function CutsceneCreateTextBox(textID){
	
	if (!instance_exists(oTextBox)) {
		CreateTextBoxNew(textID);
	}
	CutsceneEndAction();

}

function CutsceneCheckTextBoxExists(){
	
	if (!instance_exists(oTextBox)) {
		CutsceneEndAction();
	}

}
