//This object is for the intro scene of the game
tSceneInfo = [
[CutsceneInstanceCreate, 0, 0, "Game", oBlack],
[CutsceneInstanceCreate,320, -40, "Player", oPlayerCutscene],
[CutsceneMoveCharacter, oPlayerCutscene, 0, 200, true, 1, 3],
[CutsceneInstanceCreate, 0, 0, "Game", oBlackToWhite],
[CutsceneInstanceDestroy, oBlack],

[CutsceneWait, 2],
[CutsceneInstanceDestroy, oBlackToWhite],

[CutsceneFixFrame, oPlayerCutscene, oPlayer, true]
]
;

CreateCutscene(tSceneInfo);



instance_destroy();
