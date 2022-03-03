//New TextBox Script
//This function will be called at the new create
//event of a textbox
function SetDefaultsForText() {
	lineBreakPos[0, pageNumber] = 999;
	lineBreakNum[pageNumber] = 0;
	lineBreakOffset[pageNumber] = 0;
	
	textBoxSprite[pageNumber] = sTextBoxStretched;
	speakerObject[pageNumber] = noone;
	speakerSprite[pageNumber] = noone;
	speakerAnimate[pageNumber] = false;
	speakerSide[pageNumber] = noone;
	speakerVoice[pageNumber] = vDefault;
	scripts[pageNumber] = -1;
	scr = 0;
	
	//Set typewriter speed
	textSpeed[pageNumber] = 0.8
	

}


//Provide a dialogue option as the first parameter
//Provide a textID linker so that the new text box made will refer
//to that ID
//If linkID is set to -1, then no new textbox will be made and the text will end there
function AddOption(_option, _linkID) {
	option[optionNumber] = _option;
	optionLinkID[optionNumber] = _linkID;

	
	optionNumber++;
}

function CreateTextBoxNew(_text_id) {
	var textBox = instance_create_layer(-150,-150,"Text", oTextBox);
	
	with textBox {
		GameTexts(_text_id);
	}
}

//Input an array as its parameter with the script as the first element
//Input parameters of that script as subsequent elements
function SetScript(scrArray) {
	scripts[pageNumber - 1, scr] = scrArray;
	scr++;
}
///@arg text
///@arg [character]
///@arg side
function AddTextPage(_text) {
	
	SetDefaultsForText();
	
	text[pageNumber] = _text;
	
	//Get character info
	if (argument_count > 1) {
		switch (argument[1]) {
			
			//*****Sneck*****//
			#region
			case "sneck neutral":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckNeutral;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
			
			case "sneck neutral wink":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckNeutralWink;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
			
			case "sneck realisation":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckRealisation;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
			
			case "sneck smirk":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckSmirk;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
			
			case "sneck smirk wink":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckSmirkWink;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
			
			case "sneck angry":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckAngry;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
			
			case "sneck silent":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckSilent;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
				
			case "sneck sulk":
				speakerObject[pageNumber] = npcSneck;
				speakerSprite[pageNumber] = tSneckSulk;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vSneck;
				break;
				
			#endregion
			
			//tink
			#region
			case "tink neutral":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkNeutral;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vTink;
				break;
				
			case "tink neutral r":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkNeutral;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = -1;
				speakerVoice[pageNumber] = vTink;
				break;
				
			case "tink slight worry":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkSlightWorry;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vTink;
				break;
				
			case "tink slight worry r":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkSlightWorry;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = -1;
				speakerVoice[pageNumber] = vTink;
				break;
				
			case "tink surprised not talking":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkSurprised;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
				
			case "tink eyes closed":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkEyesClosed;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vTink;
				break;
				
			case "tink eyes closed r":
				speakerObject[pageNumber] = npcTink;
				speakerSprite[pageNumber] = tTinkEyesClosed;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = -1;
				speakerVoice[pageNumber] = vTink;
				break;
			
			#endregion
			
			//Anne
			#region
			case "anne neutral":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneNeutral;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
				
			case "anne neutral2":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneNeutral2;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
			
			case "anne angry":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneAngry;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
			
			case "anne incredulous":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneIncredulous;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
				
			case "anne incredulous 2":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneIncredulous2;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
			
			case "anne laugh":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneLaugh;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
			
			case "anne sad":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneSad;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
			
			case "anne sulk":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneSulk;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
				
			case "anne dejected":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneDejected;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
				
			case "anne shock":
				speakerObject[pageNumber] = npcAnne;
				speakerSprite[pageNumber] = tAnneShock;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vAnne;
				break;
			
			#endregion
			
			//Ark
			#region
			case "ark neutral":
				speakerObject[pageNumber] = npcArk;
				speakerSprite[pageNumber] = tArkNeutral;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vArk;
				break;
				
			case "ark look down":
				speakerObject[pageNumber] = npcArk;
				speakerSprite[pageNumber] = tArkLookDown;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vArk;
				break;
			
			case "ark side eye":
				speakerObject[pageNumber] = npcArk;
				speakerSprite[pageNumber] = tArkSideEye;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vArk;
				break;
				
			case "ark angry ex":
				speakerObject[pageNumber] = npcArk;
				speakerSprite[pageNumber] = tArkAngryEx;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = 1;
				speakerVoice[pageNumber] = vArk;
				textSpeed[pageNumber] = 0.4;
				break;
			
			#endregion
			
			//*****NPC*****//
			#region
			
			//Giant Eye
			case "giant eye neutral":
				speakerObject[pageNumber] = npcGiantEye;
				speakerSprite[pageNumber] = noone;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = noone;
				speakerVoice[pageNumber] = vDefault;
				speakerAnimate[pageNumber] = true;
				break;
			#endregion
			
			default:
				speakerSprite[pageNumber] = talkEduard;
				textBoxSprite[pageNumber] = sTextBoxStretched;
				speakerSide[pageNumber] = noone;
				speakerVoice[pageNumber] = vDefault;
				break;
		}
	}
	else {
		speakerSprite[pageNumber] = noone;
		textBoxSprite[pageNumber] = sTextBoxStretched;
		speakerSide[pageNumber] = noone;
		speakerVoice[pageNumber] = vDefault;
	}
	if (argument_count > 2) {
		speakerSide[pageNumber] = argument[2];	
	}
	
	pageNumber++;
}

