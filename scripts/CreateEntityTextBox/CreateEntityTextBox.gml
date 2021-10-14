//The function will know what name, sound, and portrait to 
//pull from this script.
function CreateEntityTextBox()
{
	PlayerStateLocked();
	
	var _TBox = instance_create_layer(0,0,"Text", oTextBoxEntity);
	
	with(_TBox)
	{
		Text = argument[0];
		Speakers = argument[1];
		nextLine = argument[2];
		
		var _Len = array_length_1d(Text);
		var i = 0; repeat(_Len)
		{
			Voices[i] = Speakers[i].Voice;
			i++;
		}
		event_perform(ev_other, ev_user1);
	}
	
	return _TBox
}