cam = view_camera[0];
follow = oPlayerBattle;

scale = 1;

//view port is double camera dimensions, so we must half everything
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
prevWidthHalf = camera_get_view_width(cam) * 0.5;
prevHeightHalf = camera_get_view_height(cam) * 0.5;

prevViewWidth = camera_get_view_width(cam);
prevViewHeight = camera_get_view_height(cam);

rate = 0.15;


shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;

xCameraOffSet = 0;
yCameraOffSet = 0;

alarm[0] = 1;

testX = 0;
testY = 0;