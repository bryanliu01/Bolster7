if (instance_exists(npcArk)) {
	if (image_index < 3) {
		image_speed = 1;
	}
	else if (image_index == 3) image_speed = 0;
}
else if (!instance_exists(npcArk)) {
	if (image_index >= 1) {
		image_speed = -1;
	}
	else if (image_index == 0)  image_speed = 0;
}