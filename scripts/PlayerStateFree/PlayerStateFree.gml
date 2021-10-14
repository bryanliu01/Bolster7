function PlayerStateFree()
{
		
	//Movement After Callibration
	HSpeed = lengthdir_x(InputMagnitude * SpeedWalk, InputDirection);
	VSpeed = lengthdir_y(InputMagnitude * SpeedWalk, InputDirection);
	
	
	//PlayerCollision();
	PlayerObjectCollision();
	
	//Update Sprite Index
	var _OldSprite = sprite_index;
	
	if (InputMagnitude != 0)
		{
		direction = InputDirection
		sprite_index = SpriteRun;
		}
		
	else sprite_index = SpriteIdle;
	
	if (_OldSprite != sprite_index) LocalFrame = 0;
	
	//Update Image Index
	PlayerAnimateSprite();
	
	//Activate key logic for when npc is near
	if (KeyActivate)
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
	
}
	