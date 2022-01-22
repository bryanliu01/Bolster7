//This function stores the dialogues to be used by NPCs and entities alike. 
//If or switch statements can be used to manage this large data chunk

//*****HOW TO USE***//
//Assign an object in its create event a textID, and invoke this in its step event. 
//Refer to the object lemon for an example.
//Create a case with the text ID
//Under the case, use AddTextPage to add another line of text
//Use AddOption to add an option followed by another textID so that we can access
//the relevant text
//Redirect the text to a another case by invoking GameTexts(textID), where its parameter
//is another case.
function GameTexts(textID){
	
switch(textID) {
	
	//NPC 1 test refer to this case as an example
	#region
	case "npc 1":
		AddTextPage("Ah, they sent their backup.", "sneck neutral");
		AddTextPage("Hopefully you'll do better than the last guy. Heh.", "sneck neutral", -1);
		AddTextPage("After that last EMP fiasco they removed all the technology from this room", "sneck neutral");
		AddTextPage("Well, you'll never make me talk, I am an expert in keeping my mouth shut", "sneck neutral", -1);
		AddTextPage("How would you proceed?");
			AddOption("Torture.", "MS - torture");
			AddOption("Silent Treatment.", "MS - silent treatment");
	break;
		case "MS - torture":
			AddTextPage("NOOOO OKAY OKAY I GIVE", "sneck neutral");
			GameTexts("npc 1 cont");
			break;
		
		case "MS - silent treatment":
			AddTextPage("This is silence is killing me.", "sneck neutral");
			AddTextPage("I give up. I will tell you everything.", "sneck neutral");
			GameTexts("npc 1 cont");
			break;
	
	case "npc 1 cont":
		AddTextPage("I was sent to smuggle an item.", "sneck neutral");
	break;
		
	#endregion
	
	//*****MOTHERSHIP*****//
	//NPC
	#region
	//MS Hallway Intro
	case "MS - announcer to interrogate":
		AddTextPage("Good. You are here.", "tink neutral");
		AddTextPage("Hopefully you can do a whole lot better than Anne.", "tink neutral");
		AddTextPage("That snake nearly decommissioned her entire arm.", "tink slight worry");
		AddTextPage("I SWEAR ONCE I GET MY HANDS ON THAT SNAKE I WILL YANK HIS TEETH OUT!", "tink surprised not talking");
		AddTextPage("...", "tink eyes closed")
		AddTextPage("Best of luck.", "tink neutral");
		SetScript([FinishedTinkBriefingFlag]);
	break;
	
	//talk with sneck before interrogation
	case "MS - interrogate sneck first":
		AddTextPage("Hey, shouldn't you be on that end of the table?", "sneck neutral");
		break;
	
	//If player tries to leave before interrogating
	case "MS - you have unfinished business":
		AddTextPage("You have unfinished business to attend to.");
		break;
	//MS Interrogation room
	case "MS - start interrogation?":
		
		AddTextPage("Start the interrogation?");
			SetScript([ChangeImageIndex, oPlayer, 0]);
			AddOption("Yes", "MS - start interrogation");
			AddOption("No", -1);
	break;
		case "MS - start interrogation":
			AddTextPage("Look's like they sent the rookie to do the dirty work.", "sneck neutral");
			AddTextPage("How's her arm? Did she like my surprise present?", "sneck smirk");
			AddTextPage("Ha ha ha ha ha ha! You should've seen her face. Now that brought some sparks to the room!", "sneck smirk");
			AddTextPage("Sorry kid. Looks like you are gonna have to use a pen and paper this time.", "sneck neutral");
			AddTextPage("She spent hours babysitting me. All she got was a name.", "sneck neutral");
			AddTextPage("I have a feeling that you'll do better though.", "sneck smirk wink");
			AddTextPage("So...", "sneck neutral");
			SetScript([PlayMusic, bgmSneckTheme, true]);
			AddTextPage("Go ahead.", "sneck realisation");
				AddOption("Name.", "MS - interrogation name");
			break;
				case "MS - interrogation name":
					AddTextPage("Sneck L Borne. My parents spent a long two seconds on that one.", "sneck realisation");
						AddOption("Reason for arrest.", "MS - reason for interrogation");
					break;
				case "MS - reason for interrogation":
					AddTextPage("It's supposed to be a quick in and out operation. Retrieve the package from a remote location and get paid.", "sneck neutral");
					AddTextPage("Imagine my surprise when they told me it me I had to cross The Forbidden.", "sneck neutral");
					AddTextPage("Should've known something was up when they slapped one too many zeroes on the pay.", "sneck angry");
					AddTextPage("I sneaked in through one of the closed and abandoned guard points and BAM - 4 patrols just sitting there.", "sneck neutral");
					AddTextPage("You guys really got nothing better to do huh?", "sneck smirk");
					AddTextPage("But yeah here's the instructions they gave me.", "sneck neutral");
					SetScript([AddItem, global.itemList.sneckPaper]);
					AddTextPage("You took the damp piece of paper...");
					AddTextPage("What? You'd think they would frisk search properly the second time?", "sneck realisation");
					AddTextPage("Snuck this one under the ol' boxers.", "sneck smirk wink");
						AddOption("Who hired you?", "MS - interrogation who hired you?");
					break;
				
				case "MS - interrogation who hired you?":
					AddTextPage("Hey now, you're getting greedy with the freebies.", "sneck realisation");
					AddTextPage("Besides, Annie smacked my head quite hard after the party faded.", "sneck realisation");
					AddTextPage("That's no way to treat your prisoner. In fact, I'm having a mild case of serious amnesia.", "sneck neutral wink");
					AddTextPage("Let me brew it over. I'll get back to you on that one.", "sneck neutral");
					SetScript([FinishedInterrogationFlag]);
					AddTextPage("Tell Annie that I forgive her.", "sneck smirk");
					SetScript([CreateCutsceneObjectAndLoadID,"MS - interrogation finished"]); 
					break;
	
	
	case "MS - finished interrogation":
		AddTextPage("Hmmm, still thinking. Why don't you check on Annie while I mull it over?", "sneck neutral wink");
		break;
		
	case "MS - interrogation is done":
		AddTextPage("Looks like you are done here.");
		break;
	
	case "It appears to be off.":
		AddTextPage("It appears to be off.");
		break;
	
	#endregion
	
	//ITEMS
	
	//Sneck Paper
	#region
	case "use sneckPaper":
		AddTextPage("You used the damp paper.");
		AddTextPage("The damp paper now becomes dry paper.");
		SetScript([ReplaceItem, global.itemList.sneckPaper, global.itemList.sneckPaperUsed]);
		break;
		
	case "use drySneckPaper":
		AddTextPage("You used the dry paper.");
		AddTextPage("The dry paper is still the dry paper");
		break;
	
	case "discard sneckPaper":
		AddTextPage("Discard your hard earned work?");
			AddOption("Yes", "discard sneckPaper yes");
			AddOption("No", "discard sneckPaper no");
		break;
	
	case "discard sneckPaper yes":
		AddTextPage("Throw away the evidence?");
			AddOption("Yes", "discard sneckPaper yes2");
			AddOption("No", "discard sneckPaper no");
		break;	
		
	case "discard sneckPaper yes2":
		AddTextPage("BURN the evidence?")
			AddOption("Yes", "discard sneckPaper yes3");
			AddOption("No", "discard sneckPaper no");
		break;
		
	case "discard sneckPaper yes3":
		AddTextPage("Well, you can't.");
		break;
	
	case "discard sneckPaper no":
		AddTextPage("Good choice.");
		break;
		
	#endregion
	
	case "discard":
		AddTextPage("Discard this item?");
			AddOption("Yes", "default discard yes");
			AddOption("No", "discard default no");
		break;
	
	case "default discard yes":
		AddTextPage("Item is discarded");
		//TODO set script for remove item
		break;
	
	case "default discard no":
		AddTextPage("Item is not discarded");
		break;
			
	default:
		AddTextPage("This object/person has nothing to say");
	break;
}

}