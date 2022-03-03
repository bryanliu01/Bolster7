#macro ROOMSTART rTestBattle
//Random function for game mechanics
randomize();

//Global Variables
global.GamePaused = false;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

global.currentMusic = noone;
global.music = noone;

//global.iCamera = instance_create_layer(0, 0, layer, oCamera);


surface_resize(application_surface, RESOLUTIONW, RESOLUTIONH);

//Use this to test out new rooms, keep in mind it will
//bug out oRoomExit, so comment this out when playing normally
//room_goto(rMSDoctorWaitingRoom);
//room_goto(rBattleRoom);

