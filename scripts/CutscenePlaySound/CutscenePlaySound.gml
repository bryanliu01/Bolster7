///@arg soundid
///@arg priority
///@arg loops

function CutscenePlaySound()
{
	audio_play_sound(argument0, argument1, argument2);
	CutsceneEndAction();

}