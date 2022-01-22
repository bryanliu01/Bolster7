//Specific function for oPlayer who has not spawned yet at the creation of
//a cutscene object. This function changes an object to another object in the
//same direction all in one frame. It is not recommended to switch direction in another index
//of the cutscene array because it takes one full additional frame to execute, leading to direction
//switching to default direction upon obejct generation.
function CutsceneChangeInstanceAndFixFrame(objFrom, objTo, perfEvents, spr, index, dir){
	with(objFrom)
	{
		instance_change(objTo, perfEvents);
		
	}
	
	//Face downwards
	with (objTo) {
		switch (spr) {
			case 0: sprite_index = spriteIdle;
			case 1: sprite_index = spriteRun;
			case 2: sprite_index = spriteOpenMenuDown;		
		}
		image_index = index;
		direction = dir;
	}
	
	CutsceneEndAction();
}
