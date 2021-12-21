if (!instance_exists(oPlayerReflection) && place_meeting(x,y,oPlayer)) {
	instance_create_layer(oPlayer.x, 144 - (oPlayer.y - 144), "ObjectReflection", oPlayerReflection);
} else if (instance_exists(oPlayerReflection) && !place_meeting(x,y,oPlayer)) {
	with (oPlayerReflection) {
		instance_destroy();
	}
}