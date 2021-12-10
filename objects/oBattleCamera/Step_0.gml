//Follows oPlayer initially, it changes depending on 
//whose turn it is
if (instance_exists(follow)) {
	var inst = instance_nearest(0, 0, follow);
	xTo = inst.x;
	YTo = inst.y;
}



//Update camera position
x += (xTo - x) / 6;
y += (yTo - y) / 6;

//Keep camera center inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Provide additional parameters depending on menu conditions
switch (global.menuLayer) {
	case 0:
		xCameraOffSet = 0;
		yCameraOffSet = 0;
		scale = 1;
		break;
		
		
	default:
		xCameraOffSet = 0;
		yCameraOffSet = -10;
		scale = 0.5;
		break;
}

//Get temporary views
var viewW = camera_get_view_width(view_camera[0]);
var viewH = camera_get_view_height(view_camera[0]);

//rate at which to zoom in
var rate = 0.15;

//At each step, view dimension approaches scaled dimension at interpolation rate
var newW = lerp(viewW, scale * prevViewWidth, rate);
var newH = lerp(viewH, scale * prevViewHeight, rate);

//At each step, view position approaches scaled position at interpolation rate
var newX = lerp(viewW * 0.5, scale * prevWidthHalf, rate);
var newY = lerp(viewH * 0.5, scale * prevHeightHalf, rate);

//Display zoom
camera_set_view_size(cam, newW, newH);

//Update cam position during zoom
camera_set_view_pos(cam, x - newX - xCameraOffSet, y - newY - yCameraOffSet);

