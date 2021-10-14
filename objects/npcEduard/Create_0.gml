if instance_exists(oIntroRoom1) {
	Text = 
	[
	"Welcome, O Player, aboard this humble space ship",
	"Proceed to the next room.",
	[
	"This is response one.",
	"This is response two."
	],
	"You said response one. Good.",
	"You said response two. Bad."
	];
	Portrait = 
	[
	talkEduardNeutral,
	talkEduardMiffed,
	talkPlayer,
	talkEduardNeutral,
	talkEduardMiffed
	];
	
	PortraitIndex = 0;
	Voice = vBoop;
	Name = "Eduard";
	Speakers = [id, id, oPlayer, id, id];
	nextLine = [-1, -1, [3,4], -2, -2];
	scripts = [
		-1,
		-1,
		[CreateInstance],
		-1,
		-1
	];
}

if instance_exists(oIntroRoom2) {
	Text = ["What do you mean you never saw me move?"]
	Portrait = [talkEduardMiffed];
	PortraitIndex = 0;
	Voice = vBoop;
	Name = "Eduard";
	Speakers = [id];
	nextLine = [-2];
}

if instance_exists(oIntroRoom3) {
	Text = ["This here is our training room. Please mind that tiny explosion in the wall."]
	Portrait = [talkEduardMiffed];
	PortraitIndex = 0;
	Voice = vBoop;
	Name = "Eduard";
	Speakers = [id];
	nextLine = [-2];
}