

//Follows oPlayer initially, it changes depending on 
//whose turn it is
if (instance_exists(follow)) {
	xTo = follow.x;
	YTo = follow.y;
}

//Update camera positionz
x += (xTo - x) / 6000000;
y += (yTo - y) / 6000000;

//Keep camera center inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

switch (global.menuLayer) {
	case 0: 
		scale = 1;
		break;
		
	case 1: 
		scale = 0.5;
		break;
		
	default: 
		scale = 1;
		break;
}
var wSize = RESOLUTIONW * scale;
var hSize = RESOLUTIONH * scale;

camera_set_view_size(cam, wSize, hSize);

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);