function FixFrame(obj, spr, index, dir){
	//Face downwards
	with (obj) {
		switch (spr) {
			case 0: sprite_index = spriteIdle; break;
			case 1: sprite_index = spriteRun; break;
			case 2: sprite_index = spriteOpenMenuDown; break;
			case 3: sprite_index = spriteSalute; break;
			case 4: sprite_index = spriteFixing; break;
		}
		image_index = index;
		direction = dir;
	}
}