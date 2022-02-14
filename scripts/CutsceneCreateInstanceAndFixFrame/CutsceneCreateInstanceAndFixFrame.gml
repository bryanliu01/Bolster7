//Creates an instance and then immediately switches its sprite and direction.
//It is not recommended to switch direction in another index
//of the cutscene array because it takes one full additional frame to execute, leading to direction
//switching to default direction upon obejct generation.
function CutsceneCreateInstanceAndFixFrame(xPos, yPos, obj, spr, index, dir){
	var inst = instance_create_layer(xPos, yPos, "Player", obj);
	
	//Face downwards
	with (inst) {
		switch (spr) {
			case 0: sprite_index = spriteIdle; break;
			case 1: sprite_index = spriteRun; break;
			case 2: sprite_index = spriteOpenMenuDown; break;		
		}
		image_index = index;
		direction = dir;
	}
	
	CutsceneEndAction();
}
