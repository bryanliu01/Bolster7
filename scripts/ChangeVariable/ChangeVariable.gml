///@arg id
///@arg VariableNameString
///@arg Value
function ChangeVariable(obj, variableNameString, value){
	with (obj) {
		variableNameString = value;
	}
	CutsceneEndAction();
}