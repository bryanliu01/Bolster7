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
	
	//Doctor Fixing
	#region
	case "MS - doctor fixing":
		AddTextPage("Curse his scaly hide! Does he have any idea how expensive cybernetic arms cost nowadays?", "anne angry");
		AddTextPage("You only have yourself to blame Miss Anne.", "tink eyes closed r");
		AddTextPage("Frisked him 'high and low' have you? Of all places to hide an EMP - how did you miss his hat?", "tink slight worry r");
		AddTextPage("You had a fleet of elite roboguards at your disposal to process him.", "tink neutral r");
		AddTextPage("Tink, you designed those robots.", "anne angry");
		AddTextPage("Yes and they were designed to adapt to their captain. Clearly you taught them well.", "tink neutral r");
		AddTextPage("...", "anne sulk");
		AddTextPage("Well luckily he used a gag bomb.", "tink eyes closed r");
		AddTextPage("Shouldn't be too long now.", "tink neutral r");
		//Continue cutscene in cDoctorFixing
	break;
	
	case "MS - doctor fixing 2":
		AddTextPage("Ah! Good. You are here. How did the interrogation go?", "tink neutral r");
		AddTextPage("As if you have to ask. He's got absolutely nothing.", "anne dejected");
		AddTextPage("We'll see about that. It looks like our interrogator has something to hand over.", "tink neutral r");
		//Continue cutscene in cDoctorFixiing
		
	break;
	
	case "MS - doctor fixing 3":
		AddTextPage("Well would you look at that. Sneck's rendevous location.", "tink slight worry r");
		AddTextPage("WHAT!?", "anne shock");
		AddTextPage("THAT TREACHEROUS SNAKE. FIVE HOURS I SPENT CODDLING HIM", "anne angry");
		AddTextPage("How did a rookie do it in fifteen minutes? *sniff* There's no justice.", "anne sad");
		AddTextPage("I'll transmit the news to the director. Why don't you have a look around while he comes down?", "tink neutral r");
	break;
	
	case "MS - tape":
		AddTextPage("A roll of duct tape sits on the bench.");
			AddOption("Take it.", "MS - take tape");
			AddOption("Leave it.", "null");
	break;
	
	case "MS - take tape":
		AddTextPage("Duct Tape has been added to your inventory.");
		SetScript([AddItem, global.itemList.ductTape]);
		SetScript([TookTape]);
	break;
	
	case "MS - giant pill":
		AddTextPage("A large easy to swallow pill lies on top of the bench.");
			AddOption("Take it.", "MS - take giant pill");
			AddOption("Leave it.", "null");
			
	break;
	
	case "MS - take giant pill":
		AddTextPage("Giant Pill has been added to your inventory.");
		SetScript([AddItem, global.itemList.giantPill]);
		SetScript([TookGiantPill]);
	break;
	
	case "MS - health box":
		AddTextPage("A standard medical health box sits on top of the bench.");
			AddOption("Take it.", "MS - take health box");
			AddOption("Leave it.", "null");
	break;
	
	case "MS - take health box":
		AddTextPage("Health Box has been added to your inventory.");
		SetScript([AddItem, global.itemList.healthBox]);
		SetScript([TookHealthBox]);
	break;
	
	case "MS - green mould":
		AddTextPage("A failed medicine experiment sits pitifully in the trash bin.");
		AddTextPage("This can't possibly be good.");
			AddOption("Take it.", "MS - take green mould");
			AddOption("Leave it.", "null");
	break;
	
	case "MS - take green mould":
		AddTextPage("Green Mould has been added to your inventory.");
		SetScript([AddItem, global.itemList.greenMould]);
		SetScript([TookGreenMould]);
	break;
	
	case "MS - have a look around":
		AddTextPage("Why don't you have a look around while Ark comes down?", "tink neutral r");
	break;
	
	case "MS - pass me that tape":
		AddTextPage("Hey rook. Do you have any tape?", "anne sad");
		AddTextPage("I need to wrap my diginity back together.", "anne dejected");
		if (FindItem(global.itemList.ductTape) != -1) {
			AddOption("Give Duct Tape", "MS - thanks for the tape");
			AddOption("Don't give Duct Tape", "null");
		}
		else AddOption("No Tape", "null");
		
	break;
	
	case "MS - thanks for the tape":
		AddTextPage("Thanks.", "anne dejected");
		AddTextPage("You recieved Empty Tape.");
		SetScript([FinishedGivingTapeToAnne]);
		SetScript([ReplaceItem, global.itemList.ductTape, global.itemList.emptyTape]);
	break;
	
	case "MS - giant eye closed":
		AddTextPage("It is closed");
	break;
	
	case "MS - anne feels better":
		AddTextPage("You know what? Things are starting to feel better now. Thanks rook.", "anne neutral");
		SetScript([CreateCutsceneObjectAndLoadID, "MS - ark introduction"]);
	break;
	
	case "MS - ark introduction":
		AddTextPage("Sir!", "tink neutral");
		SetScript([InstanceChange, npcTinkFixing, npcTinkIdleUp, true]);
		AddTextPage("Sir!", "anne neutral2");
	break;
	
	case "MS - ark introduction 2":
		AddTextPage("What is this about a location of interest?", "ark neutral");
		AddTextPage("This paper here, the new officer has found the rendezvous point.", "tink neutral");
		AddTextPage("Hmph. Took you people long enough.", "ark neutral");
		SetScript([FixFrame, npcArkCutscene, 0, 9, 180]);
		AddTextPage("This is supposedly the most elite team of crusaders that falls under my command.", "ark look down");
		AddTextPage("Yet they can not even complete simple wardrobe duty.", "ark neutral");
		AddTextPage("Well, you see...", "anne sad");
		AddTextPage("Save it. I want results. Not excuses full of sweet nothings.", "ark look down");
		SetScript([FixFrame, npcArkCutscene, 0, 13, 270]);
		AddTextPage("You, fledgling. Come to the main office on this floor.", "ark neutral");
		AddTextPage("We have matters to discuss.", "ark look down");
		SetScript([FinishedArkIntroduction]);
	break;
	
	case "MS - ark introduction 3":
		AddTextPage("Hey Anne, you alright?", "tink slight worry r");
		AddTextPage("Yeah... I'm alright.", "anne sulk");
		AddTextPage("I'll continue working on your arm. Just a few more touches and then you'll be good as new.", "tink neutral r");
		AddTextPage("And you. Officer. Stop saluting. You look ridiculous.", "tink slight worry r");
	break;
	
	case "MS - finished ark introduction":
		AddTextPage("Well? What are you waiting for? Go get your standing ovation.", "anne sulk");
	break;
	
		
	case "MS - you heard the director":
		AddTextPage("You heard the director, head on over to the main office.", "tink neutral r");
		AddTextPage("Anne will be fine. You might be new around here. But for us, this is simply a Tuesday.", "tink neutral r");
	break;
	
	#endregion
	
	//Reception Room
	#region
	case "MS - npc giant eye":
		AddTextPage("Director Ark is waiting for you. Head on towards the main office north of here.", "giant eye neutral");
		AddTextPage("Huh? What about the giant eye in the doctor's room?", "giant eye neutral");
		AddTextPage("The eye opened and closed?", "giant eye neutral");
		AddTextPage("Don't be silly. Even I can't close my eyes. I just have a good quality contact lens.", "giant eye neutral");
		SetScript([FinishedNPCGiantEyeIntroduction]);
	break;
	
	case "MS - npc giant eye 2":
		AddTextPage("The main office is just north of here.", "giant eye neutral");
	break;
	
	case "MS - mosquito sign":
		AddTextPage("There is a warning issued about space mosquitos hovering about this area.");
		AddTextPage("Warnings are for losers.");
	break;
	
	case "MS - stack of paper":
		AddTextPage("A giant stack of paper that is used for processing visitors.");
	break;
	
	#endregion
	
	//Reception Hallway
	#region
	case "MS - open the giant door":
		AddTextPage("Enter the main office?");
			AddOption("Enter.", "MS - enter main office");
			AddOption("Don't Enter.", "null");
	break;
		case "MS - enter main office":
			CreateCutsceneObjectAndLoadID("MS - open the giant door");
			with (oTextBox) instance_destroy();
			
			break;
	#endregion
	
	//Main Office
	#region
	
	//ACTIVATE MINIGAME
	#region
	case "MS - activate the desk?":
		AddTextPage("Activate the desk?");
			AddOption("Yes.", "MS - desk activated");
			AddOption("No.", "null");
	break;
		case "MS - desk activated":
			with oMainOfficeDesk initialiseGame = true;
			with (oTextBox) instance_destroy();
		break;
		
	case "MS - reset the desk?":
		AddTextPage("Reset the desk?");
			AddOption("Yes.", "MS - desk resetted");
			AddOption("No.", "null");
	break;
		case "MS - desk resetted":
			with oMainOfficeDesk MainOfficeDeskDefault();
			with (oTextBox) instance_destroy();
		break;
	
	case "MS - desk game completed":
		AddTextPage("It won't turn back on again.");
	break;
	#endregion
	
	//Press buttons for minigame
	#region
	//ORANGE
	case "MS - press the orange button":
		AddTextPage("Press the orange button?");
			AddOption("Yes.", "MS - yes press orange");
			AddOption("No", "null");
	break;
		case "MS - yes press orange":
			with oMainOfficeDesk PressOrange();
			with (oTextBox) instance_destroy();
		break;
	
	//RED
	case "MS - press the red button":
		AddTextPage("Press the red button?");
			AddOption("Yes.", "MS - yes press red");
			AddOption("No", "null");
	break;
		case "MS - yes press red":
			with oMainOfficeDesk PressRed();
			with (oTextBox) instance_destroy();
		break;
	
	//GREEN
	case "MS - press the green button":
		AddTextPage("Press the green button?");
			AddOption("Yes.", "MS - yes press green");
			AddOption("No", "null");
	break;
		case "MS - yes press green":
			with oMainOfficeDesk PressGreen();
			with (oTextBox) instance_destroy();
		break;
	
	//BLUE
	case "MS - press the blue button":
		AddTextPage("Press the blue button?");
			AddOption("Yes.", "MS - yes press blue");
			AddOption("No", "null");
	break;
		case "MS - yes press blue":
			with oMainOfficeDesk PressBlue();
			with (oTextBox) instance_destroy();
		break;
	#endregion
	
	//Ark briefs player
	#region
	case "MS - ark briefs player":
		AddTextPage("It is beautiful is it not?", "ark neutral");
		AddTextPage("That planet over there is where Sneck was supposed to go to retrieve a package. Deep inside The Forbidden", "ark neutral");
		AddTextPage("We can still see the package from here, it is located deep in the snow lands.", "ark neutral");
		AddTextPage("This is beyond the scope of where you can legally travel.", "ark neutral");
		//Both sprites were facing upwards, now they face each other.
		SetScript([FixFrame, npcArkCutscene, 0, 9, 180]);
		SetScript([FixFrame, oPlayerCutscene, 0, 1, 0]);
		AddTextPage("Normally, that is.", "ark look down");
		AddTextPage("I will give you special permission to cross The Forbidden seeing as you successfully interrogated Sneck.", "ark look down");
		AddTextPage("Is this paper all that he gave you?", "ark neutral");
		AddTextPage("Amnesia? We will see about that.", "ark look down");
		AddTextPage("I will have one of the guard bots do the interrogating from now on. It will drain him.", "ark neutral");
		AddTextPage("Remember, treat all entities as hostile.", "ark neutral");
		AddTextPage("Seeing you have only been here for two weeks, I can not say that I fully trust your combative skills.", "ark look down");
		AddTextPage("One moment.", "ark neutral");
		SetScript([InstanceChange, npcArkCutscene, npcArkPaging, true]);
		AddTextPage("Send Anne up to the main office.", "ark side eye");
	break;
	
	case "MS - ark briefs player 2":
		AddTextPage("Reporting for duty, Sir!", "anne neutral2");
		SetScript([FixFrame, npcArkCutscene, 0, 13, 270]);
		AddTextPage("You will train this fledgling in combat.", "ark look down");
		AddTextPage("What? No way.", "anne incredulous");
		SetScript([PauseMusic, true]);
		AddTextPage("Excuse me?", "ark angry ex");
		AddTextPage("I mean, yes sir boss man.", "anne neutral");
		SetScript([ResumeMusic, true]);
		AddTextPage("Then it is settled. There is a spare training room to the west of here. Do not disappoint again.", "ark look down");
		AddTextPage("Anne, signing out.", "anne neutral");
	break;
	
	case "MS - anne silent treatment":
		AddTextPage("...", "anne sulk");
	break;
	
	case "MS - maintenance work":
		AddTextPage("I wonder what is inside that package.", "ark neutral");
		AddTextPage("Make sure you bring that package back, officer. Do not disappoint.", "ark look down");
		SetScript([ChangeTextID, npcArk, "MS - go and get trained"]);
	break;
	
	case "MS - go and get trained":
		AddTextPage("You can find the training room to the west of this floor.", "ark neutral");
		SetScript([ChangeTextID, npcArk, "MS - maintenance work"]);
	break;
	
	case "MS - go and get trained 2":
		AddTextPage("Still moping around? How you managed to pull off the interrogation so quickly, I will never know.", "ark look down");
		AddTextPage("Go find Anne in the training room in the west wing.", "ark side eye");
	break;
	
	#endregion
	
	#endregion
	
	//Reception Hallway 2
	#region
	case "MS - anne vents player":
		AddTextPage("Alright rook what's your goal here huh?", "anne sulk");
		AddTextPage("Suddenly pop outta no where and think you're a big shot? Weed out the ranks and upstage your senoir officer huh?", "anne angry");
		AddTextPage("Whatever stunt you pulled back there was a fluke. An utter fluke!", "anne angry");
		AddTextPage("I should've failed you the moment you showed up on that entrance exam if I was supposed to recieve this embarassment.", "anne angry");
		AddTextPage("*sigh* Let's get you trained up.", "anne dejected");
		AddTextPage("Meet me at the training room to the west of here.", "anne neutral2");
	break;
	#endregion
	
	//Training Room
	#region
	case "MS - anne trains player":
		AddTextPage("Welcome to the training room, rook.", "anne neutral");
		AddTextPage("A wide spacious room built upon the thickest and hardest aluminium spacekind has to offer.", "anne neutral");
		AddTextPage("What's that? You asking if I'm fighting you?", "anne neutral");
		AddTextPage("Ha ha ha ha ha ha ha!", "anne laugh");
		AddTextPage("Please.", "anne incredulous");
		AddTextPage("As much as I want to turn your butt over your head, I can't get in trouble with Ark again.", "anne dejected");
		AddTextPage("You can deal with these metal bots instead. They are produced at a dozen to a dime.", "anne neutral");
	break;
	
	case "MS - anne trains player 2":
		AddTextPage("You can initiate fights by punching anything thats considered hostile.", "anne neutral");
		AddTextPage("Try it out on this dummy.", "anne neutral");
		SetScript([AddBasicMove, global.moveSet.punch, oItemManager.basicMoveList]);
		SetScript([AddBasicMove, global.moveSet.doublePunch, oItemManager.basicMoveList]);
		
	break;
	
	case "MS - anne trains player 3":
		AddTextPage("Go ahead rook, give the bot a jab.", "anne neutral");
	break;
	
	case "MS - punch anne training room":
		AddTextPage("Oh dear. You missed the bot. Try punching the other way this time.", "anne neutral");
		SetScript([ChangePunchScript, npcAnne, "MS - punch anne training room 2"]);
	break;
	
	case "MS - punch anne training room 2":
		AddTextPage("...", "anne incredulous");
		AddTextPage("Whatever you are trying to do, it's not working.", "anne neutral");
		SetScript([ChangePunchScript, npcAnne, "MS - punch anne training room 3"]);
	break;
	
	case "MS - punch anne training room 3":
		AddTextPage("Take off those sunglasses. You might actually be able to see where you are punching.", "anne neutral2");
		SetScript([ChangePunchScript, npcAnne, "MS - punch anne training room 4"]);
	break;
	
	case "MS - punch anne training room 4":
		AddTextPage("Wait.", "anne neutral2");
		AddTextPage("Are you calling me a bot?", "anne angry");
		SetScript([ChangePunchScript, npcAnne, "MS - punch anne training room 5"]);
	break;
	
	case "MS - punch anne training room 5":
		AddTextPage("Alright. I'm giving you that hit.", "anne angry");
		AddTextPage("It was cute the first two times. Now it's annoying.", "anne angry");
		SetScript([ChangePunchScript, npcAnne, "MS - punch anne training room 6"]);
	break;
	
	case "MS - punch anne training room 6":
		AddTextPage("...", "anne angry");
		AddTextPage("What's another infraction to my record?", "anne incredulous 2");
		//Punch player sending them back to the medical ward.
	break;
	
	case "MS - anne trains player 4":
		AddTextPage("Hey get back in there you aren't supposed to run away!", "anne angry");
		AddTextPage("Not too shabby. Remember, you can initiate fights with hostiles by punching them.", "anne neutral");
		AddTextPage("Although sometimes, they really don't like that idea so they might randomly ambush you in hostile areas.", "anne neutral2");
	break;
	
	case "MS - anne stops player from leaving":
		AddTextPage("Where do you think you're going?", "anne angry");
		AddTextPage("Punch the damn bot!", "anne angry");
	break;
	#endregion
	//ENTITIES
	
	//Chest in rMSTreasureRoom
	#region
	case "MS - chestrMSTreasureRoom":
		var smallGold = MSGenerateSmallNumberOfGold();
		AddTextPage("Obtained " + string(smallGold) + " gold.");
		SetScript([AddGold, smallGold]);
		SetScript([FinishedTreasurerMSTreasureRoomFlag]);
	break;
	
	case "MS - noLootrMSTreasureRoom":
		AddTextPage("You dig through the bag again... There is nothing.");
	break;

	#endregion
	
	//ITEMS
	#region
	
	//Sign in the waiting room
	case "MS - doctor's office": 
		AddTextPage("Treatment Room");
	break;
	
	case "MS - waiting room tv":
		AddTextPage("An ancient display piece sits in the corner gathering dust.");
		AddTextPage("Its age is unknown, but it could easily be in the thousands.");
	break;
	
	case "MS - waiting room couch":
		AddTextPage("A soft couch that is made of material that is long extinct.");
	break;
	
	#endregion
	
	//Sneck Paper
	#region
	case "use sneckPaper":
		AddTextPage("You used the damp paper.");
		AddTextPage("The damp paper now becomes dry paper.");
		SetScript([ReplaceItem, global.itemList.sneckPaper, global.itemList.sneckPaperUsed]);
		break;
		
	case "use drySneckPaper":
		AddTextPage("You used the dry paper.");
		AddTextPage("The dry paper is still the dry paper.");
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
		AddTextPage(string(oItemManager.selectedItem) + " is discarded.");
		//TODO set script for remove item
		SetScript([RemoveItem, oItemManager.selectedItem]);
		break;
	
	case "default discard no":
		AddTextPage("Item is not discarded");
		break;
		
	case "null":
		with (oTextBox) {
			instance_destroy();
		}
		break;
			
	default:
		AddTextPage("This object/person has nothing to say");
	break;
}

}