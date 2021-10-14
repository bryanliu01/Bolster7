//The function will know what name, sound, and portrait to 
//pull from this script.
///@arg text
///@arg speakers
///@arg next_line
///@arg scripts
function CreateTextBox()
{
	PlayerStateLocked();
	
	var _TBox = instance_create_layer(0,0,"Text", oTextBoxBeta);
	
	with(_TBox)
	{
		Text = argument[0];
		Speakers = argument[1];
		nextLine = argument[2];
		scripts = argument[3];
		
		var _Len = array_length_1d(Text);
		var i = 0; repeat(_Len)
		{
			Names[i] = Speakers[i].Name;
			Portraits[i] = Speakers[i].PortraitIndex;
			Voices[i] = Speakers[i].Voice;
			i++;
		}
		event_perform(ev_other, ev_user1);
	}
	
	return _TBox
}