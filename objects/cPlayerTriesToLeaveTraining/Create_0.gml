tSceneInfo = [
[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 1, 1, 0],
[CutsceneCreateTextBox, "MS - anne stops player from leaving"],
[CutsceneCheckTextBoxExists],
[CutsceneMoveCharacter, oPlayerCutscene, 20, 0, true, 1, 0],
[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, false, 0, 1, 0],

];
