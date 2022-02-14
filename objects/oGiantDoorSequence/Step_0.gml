if (!open) layer_sequence_pause(doorSeq);
else if (open) {
	
	//Player is unable to interact with door during animation;
	with interactFrameCol instance_destroy();
	
	//Play animation
	layer_sequence_play(doorSeq);
	
}