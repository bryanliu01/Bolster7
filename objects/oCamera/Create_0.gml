/// @description Set up Camera
Cam = view_camera[0];
Follow = oPlayer;
ViewWidthHalf = camera_get_view_width(Cam) * 0.5;
ViewHeightHalf = camera_get_view_height(Cam) * 0.5;
XTo = xstart;
YTo = ystart;

ShakeLength = 0;
ShakeMagnitude = 0;
ShakeRemain = 0;