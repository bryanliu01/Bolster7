var frames = 6;
if (tick < room_speed / frames) {
	tick++;
}

if (tick == room_speed / frames) {
	frame++;
	tick = 0;
}
