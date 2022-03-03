if (roomStartEffect) {
	tick++;
	if (tick mod effectTick == 0) {
		if (image_alpha == 0) image_alpha = 1;
		else image_alpha = 0;
	}
	if (tick >= tickLimit) {
		roomStartEffect = false;
		image_alpha = 1;
	}
}