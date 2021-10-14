KeyActivate = keyboard_check_pressed(ord("Z"));
if (KeyActivate)
	{
		//1. Check for an entity to activate
		//2. If there is nothing, or there is something, but it has no script, nothing happens.
		//3. Otherwise, there is something and it has a script to activate.
		//4. If the thing we activate is an NPC, make is face towards us.
		var _Inst = collision_rectangle(x - Radius, y - Radius, x + Radius, y + Radius, npcFrame, false, false)
		if (_Inst != noone)
		{
			with(_Inst)
			{
			CreateTextBox(Text,Speakers);
			}
		}
	}