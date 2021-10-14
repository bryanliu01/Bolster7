function StringWrap(String, MaxWidth)
{
	var _Str = argument0;
	var _MaxWidth = argument1;
	
	var _StrLen = string_length(_Str);
	var _LastSpace = 1;
	
	var _Count = 1;
	var _SubStr;
	
	repeat(_StrLen) 
	{
		_SubStr = string_copy(_Str, 1, _Count);
		if (string_char_at(_Str, _Count) == " ") _LastSpace = _Count;
		
		if (string_width(_SubStr) > _MaxWidth)
		{
			_Str = string_delete(_Str, _LastSpace, 1);
			_Str = string_insert("\n", _Str,_LastSpace);
		}
		_Count++;

	}
	
	return _Str;

}