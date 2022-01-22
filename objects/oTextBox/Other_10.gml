//[script, arg0, arg1....]

//If script is an array, then there are scripts
//that we want to run

//Get the page of the script
var pageScript = scripts[page];
	
//Check if pageScript is -1 by default
//If not, then we execute the script
if (pageScript != -1) {
		
	var len = array_length_1d(pageScript);
	if (len == 1) { script_execute(pageScript[0]); }
	else {
		var args = array_create(len - 1, 0);
		array_copy(args,0, pageScript, 1, len - 1);
		ScriptExecuteArray(pageScript[0], args);
	}
}
