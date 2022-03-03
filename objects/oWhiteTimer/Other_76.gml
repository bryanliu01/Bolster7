//Listener of sequences
if (event_data[? "event_type"] == "sequence event") {
	
	switch(event_data[? "message"]) {
		
		//This message should be at the end of the player's attack sequence
		//Enables the GUI to be used after animation end
		case "DestroyWhite":
			instance_destroy();
		break;
	}
}