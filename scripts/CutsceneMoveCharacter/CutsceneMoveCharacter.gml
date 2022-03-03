///@arg obj
///@arg x
///@arg y
///@arg relative to obj
///@arg spd
///@arg d for the direction the sprite is facing

function CutsceneMoveObject(obj, xPos, yPos, relative, spd) {
	
	
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
			
			
			var dir = point_direction(x, y, xx, yy);
			var ldirx = lengthdir_x(spd, dir);
			var ldiry = lengthdir_y(spd, dir);
			
			
			x += ldirx;
			y += ldiry;
		}
		else {
			
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
