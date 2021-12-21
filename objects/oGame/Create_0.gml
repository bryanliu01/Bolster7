//Random function for game mechanics
randomize();

//Global Variables
global.GamePaused = false;
global.TextSpeed = 0.75;


global.TargetRoom = -1;
global.TargetX = -1;
global.TargetY = -1;
global.TargetDirection = 0;



//global.iCamera = instance_create_layer(0, 0, layer, oCamera);


surface_resize(application_surface, RESOLUTIONW, RESOLUTIONH);

//Use this to test out new rooms, keep in mind it will
//bug out oRoomExit, so comment this out when playing normally
room_goto(rMSInterrogationRoom);
//room_goto(rBattleRoom);



