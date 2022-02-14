#region
//Player finished entering in first scene
if (finishedPlayerEntering && (room = rMSHallway)) {
	if (!instance_exists(oPlayer)) {
		instance_create_layer(global.targetX, global.targetY, "Player", oPlayer);
		with (oPlayer) {
			x = global.targetX;
			y = global.targetY;
			direction = global.targetDirection;
		}
	}
	
}
	
//Finished interrogating Sneck in intro
if (finishedInterrogation && room = rMSInterrogationRoom) {
	with npcSneck textID = "MS - finished interrogation";
	with cStartInterrogationCheck textID = "MS - interrogation is done";
}

//Enable room passage to go to hub
if (finishedInterrogation && room = rMSHallway) {
	EnableRoom(288, -32, 1, 1, 160, 608, rMSHubF2);
}

if (finishedTinkBriefing && room = rMSHallway) {
	with cTinkTellsYouToInterrogateSneck instance_destroy();
}

if (finishedTreasurerMSTreasureRoomFlag && room = rMSTreasureRoom) {
	with oBackpack textID = "MS - noLootrMSTreasureRoom";
}
#endregion

if (finishedDoctorFixing && room = rMSDoctorRoom) {
	with cDoctorFixing {
		instance_destroy();
	}
}

if (finishedGivingTapeToAnne && !finishedArkIntroduction && room = rMSDoctorRoom) {
	with npcAnneSitting {
		textID = "MS - anne feels better";
	}
}

else if (finishedArkIntroduction && room = rMSDoctorRoom) {
	with npcAnneSitting {
		textID = "MS - finished ark introduction";
	}
	with npcTinkFixing {
		textID = "MS - you heard the director";
	}
}

