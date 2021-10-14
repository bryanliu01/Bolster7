if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")))
{
	if (!ChoiceDialogue && Counter < StrLen) Counter = StrLen;
	
	else if (Page < array_length_1d(Text) - 1)
	{
		var line = nextLine[Page];
		if(ChoiceDialogue) line = line[Choice];
		
		//If line element = -1, continue dialogue normally, refer to npcFrame
		if (line == -1) Page++;
		
		//Else if line == -2, exit the dialogue
		else if (line == -2) { instance_destroy(); exit; }
		
		//Else it is a valid input to change input to certain line
		else Page = line;
		
		event_perform(ev_other, ev_user1);
	}
	else
	{
		instance_destroy();
	}
}

if (ChoiceDialogue) {
	Choice += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (Choice > TextArrayLen - 1) Choice = 0;
	if (Choice < 0) Choice = TextArrayLen - 1;
}