//Set up the different states of toggles

enum transType {
	slide,
	fade,
	push,
	star,
	wipe
}

width = RESOLUTIONW;
height = RESOLUTIONH;
heightHalf = height * 0.5;
percent = 0;
leading = OUT;

targetRoom = noone;