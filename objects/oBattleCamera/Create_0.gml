cam = view_camera[0];
follow = oPlayerBattle;

scale = 0.5;

//view port is double camera dimensions, so we must half everything
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;


//The variables will head towards a value, initialise as initial position
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;


alarm[0] = 1;
