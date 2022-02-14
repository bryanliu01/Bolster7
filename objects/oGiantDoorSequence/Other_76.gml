if (event_data[? "event_type"] == "sequence event") {
	switch(event_data[? "message"]) {
		case "ReceptionDoorOpened":
				open = false;
				with oCollisionTemp instance_destroy();
				instance_destroy();
			break;
	}
	
}