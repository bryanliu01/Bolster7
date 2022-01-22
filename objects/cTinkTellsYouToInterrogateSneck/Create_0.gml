textID = "";
tSceneInfo = [
[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 2, 0, 270],
[CutsceneChangeImageSpeed, oPlayerCutscene, 1],
[CutsceneCreateTextBox, "MS - announcer to interrogate"],
[CutsceneCheckTextBoxExists],
[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, true, 0, 12, 270]

];