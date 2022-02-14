//Interrogation
#region
function CutsceneFinishedPlayerEntering() {
	with oEventFlag {
		finishedPlayerEntering = true;
	}
	CutsceneEndAction();
}

function FinishedInterrogationFlag() {
	with oEventFlag {
		finishedInterrogation = true;
	}
}

function FinishedTinkBriefingFlag() {
	with oEventFlag {
		finishedTinkBriefing = true;;
	}
}

function FinishedTreasurerMSTreasureRoomFlag() {
	with oEventFlag {
		finishedTreasurerMSTreasureRoomFlag = true;;
	}
}

#endregion

//Doctors Area
#region
function CutsceneFinishedDoctorFixing() {
	with oEventFlag {
		finishedDoctorFixing = true;;
	}
	CutsceneEndAction();
}

function TookTape() {
	with oEventFlag {
		tookTape = true;
	}
}

function TookGiantPill() {
	with oEventFlag {
		tookGiantPill = true;
	}
}

function TookHealthBox() {
	with oEventFlag {
		tookHealthBox = true;
	}
}

function TookGreenMould() {
	with oEventFlag {
		tookGreenMould = true;
	}
}

function FinishedGivingTapeToAnne() {
	with oEventFlag {
		finishedGivingTapeToAnne = true;
	}
}

function FinishedArkIntroduction() {
	with oEventFlag{
		finishedArkIntroduction = true;
	}
}
#endregion

//Reception Room
#region
function FinishedNPCGiantEyeIntroduction() {
	with oEventFlag {
		finishedNPCGiantEyeIntroduction = true;
	}
}

function CutsceneOpenReceptionGiantDoor() {
	with (oGiantDoorSequence) open = true;
	CutsceneEndAction();
}
#endregion