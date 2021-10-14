///@arg obj id
///@arg image_xscale


function CutsceneChangeXScale()
{
	var _Arg;
	var i = 0; repeat(argument_count)
	{
		_Arg[i] = argument[i];
		i++;
	}
	
	if (argument_count > 1)
	{
		with(_Arg[0])
		{
			image_xscale = _Arg[1];
		}
	}
	else
	{
		with(_Arg[0])
		{
			image_xscale = -image_xscale;
		}
	}
	CutsceneEndAction();
}