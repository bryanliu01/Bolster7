//This applies step to text scrolling
LerpProgress += (1 - LerpProgress) / 50;
TextProgress += global.TextSpeed;

x1 = x1Target//lerp(x1, x1Target, LerpProgress);
x2 = x2Target//lerp(x2, x2Target, LerpProgress);

//Cycle through reponses
KeyUp = keyboard_check_pressed(vk_up);
KeyDown = keyboard_check_pressed(vk_down);
ResponseSelected += (KeyDown - KeyUp);
var _max = array_length_1d(Responses) - 1
var _min = 0;
if (ResponseSelected > _max) ResponseSelected = _min;
if (ResponseSelected < _min) ResponseSelected = _max;

//Check for Key pressed and play animation and text
if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")))
{
	var _MessageLength = string_length(Msg);
	if (TextProgress >= _MessageLength)
	{
		if (Responses[0] != -1)
		{
			with (OriginInstance) DialogueResponses(other.ResponseScripts[other.ResponseSelected]);
		}
		
		instance_destroy();
		if (instance_exists(oTextQueued))
		{
			with (oTextQueued) Ticket--;
		}
		else
		{
			with (oPlayer) state = LastState;

		}
		
	}
	else
	{
		if (TextProgress > 2)
		{
			TextProgress = _MessageLength;
		}
	}
	
}