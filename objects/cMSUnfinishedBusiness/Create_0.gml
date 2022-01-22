// type in Array of cutscene scripts to perform a cutscene
tSceneInfo = [
[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 1, 5, 90],
[CutsceneMoveCharacter, oPlayerCutscene, 0, 20, true, 1, 3],
[CutsceneCreateTextBox, "MS - you have unfinished business"],
[CutsceneCheckTextBoxExists],
[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, false, 0, 13, 270]
];