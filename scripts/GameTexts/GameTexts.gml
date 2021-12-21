//This function stores the dialogues to be used by NPCs and entities alike. 
//If or switch statements can be used to manage this large data chunk
function GameTexts(textID){
	
switch(textID) {
	case "npc 1":
		AddTextPage("This is NPC number 1. To be or not to be that is the question that has boggled scientist for the millineia");
		AddTextPage("a 1.");
		AddTextPage("This 1?");
			AddOption("This is indeed the numeral representation of arabic quantities", "npc 1 - yes");
			AddOption("No", "npc - no");
	break;
	
	case "npc 2":
		AddTextPage("This is NPC number 2.");
		AddTextPage("a 21.");
		AddTextPage("Ths3.");
	break;
	
	case "npc 3":
		AddTextPage("This is NPC number 3.");
		AddTextPage("a 31.");
		AddTextPage("Ths 133.");
	break;
	
	default:
		AddTextPage("This object has nothing to say.");
	break;
}

}