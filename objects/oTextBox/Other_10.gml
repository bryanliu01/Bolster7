//If there are any scripts that needs to be executed we run this event here

//If a page has scripts to run, execute them
if (scripts[page] != -1) {
	//Check number of scripts to be run on current page
	var numberOfScripts = array_length(scripts[page]);

	for (var i = 0; i < numberOfScripts; i++) {
		//Get the page of the script
		var pageScript = scripts[page, i];
	
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
	}
}

/*
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
