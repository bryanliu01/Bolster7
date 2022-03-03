if (event_data[? "event_type"] == "sequence event") {
	switch(event_data[? "message"]) {
		case "ReceptionDoorOpened":
				instance_destroy();
			break;
	}
	
}