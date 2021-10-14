///@arg obj
///@arg x
///@arg y
///@arg relative
///@arg spd

function CutsceneMoveCharacterEx()
{
	var _Obj = argument0, _Relative = argument3, _Spd = argument4;
	
	
	if(XDest == -1)
	{
		if (!_Relative)
		{
			xDest = argument1;
			YDest = argument2;
		}
		else
		{
			xDest = _Obj.x + argument1;
			YDest = _Obj.y + argument2;
		}
	}
	var _XX = XDest;
	var _YY = YDest;
	
	with (_Obj)
	{
		//If object has sprites for walking and idle use those
		//sprite_index = SpriteWalk;
		if (point_distance(x,y, _XX, _YY) >= _Spd)
		{
			var _Dir = point_direction(x, y, _XX, _YY);
			var _Ldirx = lengthdir_x(_Spd, _Dir);
			var _Ldiry = lengthdir_y(_Spd, _Dir);
			
			if (_Ldirx != 0) { image_xscale = sign(_Ldirx); }
		
			x += _Ldirx;
			y += _Ldiry;
		}
		else
		{
			//sprite_index = SpriteIdle;
			x = _XX;
			y = _YY;
			
			with(other)
			{
				XDest = -1;
				YDest = -1;
				CutsceneEndAction();
			}
			
		}
		
	}

}
