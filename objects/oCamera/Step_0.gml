if (instance_exists(Follow))
{
	XTo = Follow.x;
	YTo = Follow.y;
}

//Update Object Position with speed
x += (XTo - x) / 5;
y += (YTo - y) / 5;

//Keep camera center inside room
x = clamp(x, ViewWidthHalf, room_width - ViewWidthHalf);
y = clamp(y, ViewHeightHalf, room_height - ViewHeightHalf);

//Screenshake
x += random_range(-ShakeRemain, ShakeRemain);
y += random_range(-ShakeRemain, ShakeRemain);

ShakeRemain = max(0, ShakeRemain - ((1/ShakeLength) * ShakeMagnitude));

camera_set_view_pos(Cam, x - ViewWidthHalf, y - ViewHeightHalf);

