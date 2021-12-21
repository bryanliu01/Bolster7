//Specific function for oPlayer who has not spawned yet at the creation of
//a cutscene object
function CutsceneFixFrame(objFrom, objTo, perfEvents){
	with(objFrom)
	{
		instance_change(objTo, perfEvents);
		
	}
	
	//Face downwards
	with (objTo) {
		sprite_index = spriteIdle;
		image_index = 12;
		direction = 270;
	}
	CutsceneEndAction();
}
