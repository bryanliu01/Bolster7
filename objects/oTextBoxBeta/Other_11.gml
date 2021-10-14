Name = Names[Page];
Voice = Voices[Page];
PortraitIndex = Portraits[Page];

if(!is_array(Text[Page])) {
	TextWrapped = StringWrap(Text[Page], TextMaxWidth);
	StrLen = string_length(TextWrapped);	
	ChoiceDialogue = false;
}
else {
	TextArray = Text[Page];
	TextArrayLen = array_length_1d(TextArray);
	ChoiceDialogue = true;
}


Counter = 0;