//Changes a variable of an instance in the room
function ChangeVariable(obj, variableName, value){
	if (instance_exists(obj)) {
		with (obj) {
			variableName = value;
		}
	}
}