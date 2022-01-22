function PlayerStateFree()
{
	SpeedWalk = 3.0;
	
	inputDirection = point_direction(0,0,KeyRight-KeyLeft,KeyDown-KeyUp);
	inputMagnitude = (KeyRight - KeyLeft != 0) || (KeyDown - KeyUp != 0);


	//Movement After Callibration
	HSpeed = lengthdir_x(inputMagnitude * SpeedWalk, inputDirection);
	VSpeed = lengthdir_y(inputMagnitude * SpeedWalk, inputDirection);
	
	
	//PlayerCollision();
	PlayerObjectCollision();
	
	//Update Sprite Index
	var _OldSprite = sprite_index;

	
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun;
	}
		
	else if (!instance_exists(oCutscene)) {
		localFrame = 0;
		sprite_index = spriteIdle;
	}
	
	if (_OldSprite != sprite_index) localFrame = 0;
	
	//Update Image Index
	PlayerAnimateSprite();
	
	if (keyActivate)
	{
		if (ActiveTextBox == noone)
		{
			var _InstEnt = collision_rectangle(x - Radius, y - Radius, x + Radius, y + Radius, interactFrame, false, false)
	
			//Create Entity TextBox
			if (_InstEnt != noone) {
				
				with (_InstEnt) {
					var _TBox = CreateTextBoxNew(textID);
				}
				ActiveTextBox = _TBox;
			}
		
		}
		if (ActiveTextBox != noone)
		{

			ActiveTextBox = noone;
		}
	}
	
	/*
	//Activate key logic for when npc is near
	if (keyActivate)
	{
		if (ActiveTextBox == noone)
		{
			var _Inst = collision_rectangle(x - Radius, y - Radius, x + Radius, y + Radius, npcFrame, false, false)
			var _InstEnt = collision_rectangle(x - Radius, y - Radius, x + Radius, y + Radius, entityFrame, false, false)
			
			//Create NPC TextBox
			if (_Inst != noone && _Inst != _InstEnt) {
				with (_Inst) {
					var _TBox = CreateTextBox(Text, Speakers, nextLine, scripts);
				}
				ActiveTextBox = _TBox;
			}
			
			//Create Entity TextBox
			else if (_InstEnt != noone && _InstEnt != _Inst) {
				with (_InstEnt) {
					var _TBox = CreateEntityTextBox(Text, Speakers, nextLine);
				}
				ActiveTextBox = _TBox;
			}
		
		}
		if (!instance_exists(ActiveTextBox))
		{

			ActiveTextBox = noone;
		}
	}
	*/

}
	