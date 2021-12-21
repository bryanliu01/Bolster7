//Player does nothing
function PlayerStateLocked()
{	
	with (oPlayer) {
		sprite_index = spriteIdle;
		image_speed = 0;
		var _CardinalDirection = round(direction/90);
		var _TotalFrames = sprite_get_number(sprite_index) / 4;
		image_index = (_CardinalDirection * _TotalFrames);
	}
	
}