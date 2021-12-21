

//Keep camera center inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);


//Provide additional parameters depending on menu conditions
switch (global.menuLayer) {
	case GENERALMENU:
		xCameraOffSet = 0;
		yCameraOffSet = 0;
		rate = 0.15;
		scale = 1;
		break;

	case ATTACKMENU:
		xCameraOffSet = 100;
		yCameraOffSet = -10;
		scale = 0.5;
		rate = 0.15;
		break;
		
	case TARGETINGMENU:
		switch (oBattleMenuBeta.markerPosition) {
			case 0:
				xCameraOffSet = -110;
				yCameraOffSet = -10;
				scale = 0.5;
				rate = 0.15;
				break;
			}
		break;
}

//Get temporary position
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

//Get temporary views
var viewW = camera_get_view_width(view_camera[0]);
var viewH = camera_get_view_height(view_camera[0]);


//At each step, view dimension approaches scaled dimension at interpolation rate
var newW = lerp(viewW, scale * prevViewWidth, rate);
var newH = lerp(viewH, scale * prevViewHeight, rate);

//At each step, view position approaches scaled position at interpolation rate
var newX = lerp(viewW * 0.5, (scale * prevWidthHalf), rate);
var newY = lerp(viewH * 0.5, (scale * prevHeightHalf), rate);


//TODO dyanmic move system that moves the position of view alongside scaling
testX = lerp(testX, xCameraOffSet, rate); 
testY = lerp(testY, yCameraOffSet, rate); 

//Display zoom
camera_set_view_size(cam, newW, newH);

//Update cam position during zoom
//camera_set_view_pos(cam, x - newX - xCameraOffSet, y - newY - yCameraOffSet);
camera_set_view_pos(cam, x - newX - testX, y - newY - testY);



