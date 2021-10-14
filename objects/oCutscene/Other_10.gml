CurrentScene = SceneInfo[Scene];

var _Len = array_length_1d(CurrentScene) - 1;

//CurrentSceneArray = -1;
CurrentSceneArray = array_create(_Len, 0);
array_copy(CurrentSceneArray, 0, CurrentScene, 1, _Len);