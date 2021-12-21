//New TextBox Script
//This function will be called at the new create
//event of a textbox
function SetDefaultsForText() {
	lineBreakPos[0, pageNumber] = 999;
	lineBreakNum[pageNumber] = 0;
	lineBreakOffset[pageNumber] = 0;
	
}

function AddTextPage(_text) {
	
	SetDefaultsForText();
	text[pageNumber] = _text;
	pageNumber++;
}

function AddOption(_option, _linkID) {
	option[optionNumber] = _option;
	optionLinkID[optionNumber] = _linkID;
	
	optionNumber++;
}

function CreateTextBoxNew(_text_id) {
	var textBox = instance_create_layer(0,0,"Text", oTextBox);
	
	with textBox {
		GameTexts(_text_id);
	}
}