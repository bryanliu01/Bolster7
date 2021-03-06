//This switch line performs code depending on the message
//typed in the broadcast event. This messages will broadcast in 
//the sequences on a specific frame, the oCombat manager detects that message,
//and performs the relevant switch case.
if (event_data[? "event_type"] == "sequence event") {
	switch(event_data[? "message"]) {
		case "AttackSent":
			selectedFinished = true;
			if (!global.attackingUnit.attackWillHit) {
				processFinished = true;
			}
		break;
		
		case "EnemyAttackFinished":
			oBattleMenuBeta.allowInput = true;
			global.attackingUnit = oPlayerBattle;
			global.menuLayer = 0;
			break;
		
		case "UnitDeath":
		break;
		case "UnitHurt":
			processFinished = true;
		break;
		case "PlayerDied":
			room_goto(rMainMenu);
		break;
	}
	
}