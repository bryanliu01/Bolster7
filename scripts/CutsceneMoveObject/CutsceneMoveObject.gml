///@arg obj
///@arg x
///@arg y
///@arg relative to obj
///@arg spd
///@arg d for the direction the sprite is facing

function CutsceneMoveCharacter(obj, xPos, yPos, relative, spd, d) {
	
	
	if (xDest == -1) {
		if (!relative) {
			xDest = xPos;
			yDest = yPos;
		}
		else {
			xDest = obj.x + xPos;
			yDest = obj.y + yPos;
		}
	}
	
	var xx = xDest;
	var yy = yDest;

	with (obj) {
		
		
		if (point_distance(x, y, xx, yy) >= spd) {
			
			sprite_index = spriteRun;
			
			var _CardinalDirection = d;
			var _TotalFrames = sprite_get_number(sprite_index) / 4;
			image_index = localFrame + (_CardinalDirection * _TotalFrames);
			localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
			//If animation would loop on next game step
			if (localFrame >= _TotalFrames)
				{
					animationEnd = true;
					localFrame -= _TotalFrames;
				}
			else
				{
					animationEnd = false;
				}
			
			var dir = point_direction(x, y, xx, yy);
			var ldirx = lengthdir_x(spd, dir);
			var ldiry = lengthdir_y(spd, dir);
			
			
			x += ldirx;
			y += ldiry;
		}
		else {
			
			sprite_index = spriteIdle;
			x = xx;
			y = yy;
			
			with (other) {
				xDest = -1;
				yDest = -1;
				CutsceneEndAction();
			}
		}
	}


}
