//Draw Box
draw_sprite(Box, 0, BoxX, BoxY);

//Draw Portrait Back
draw_sprite(Frame, 0, PortX, PortY);

//Draw Portrait
draw_sprite(Portrait[Page], PortraitIndex, PortX, PortY);

//Draw Portrait Frame
draw_sprite(Frame, 1, PortX, PortY);


//Draw NameBox
draw_sprite(NameBox, 0, NameBoxX, NameBoxY);

//Draw Name
var C = NameTextColour;
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text_color(NameTextX, NameTextY, Name, C,C,C,C,1);
draw_set_halign(fa_left); draw_set_valign(fa_top);


//Draw Text
//If the text page is not an array, run normally.
//If text page is an array,  print each reponse out.
if (!ChoiceDialogue) {
	if (!Pause && (Counter < StrLen)) {
		Counter++;
	
		//Navigates between the two portraits to simulate talking
		if ((Counter mod 14) < 7) PortraitIndex = npcFrame.PortraitIndex;
		else PortraitIndex = npcFrame.PortraitIndex + 1;
	
		//Controls how frequent the boops are for text scrolling
		if (Counter mod 5 == 0) {
			audio_play_sound(Voice, 10, false);
		}
	
		switch(string_char_at(TextWrapped, Counter)) {
			case ",": Pause = true; PortraitIndex = npcFrame.PortraitIndex; alarm[1] = 10; break;
			case ".": 
			case "?":
			case "!": Pause = true; PortraitIndex = npcFrame.PortraitIndex; alarm[1] = 20; break;
		}
	}
	var _SubStr = string_copy(TextWrapped, 1, Counter);

	C = TextColour;
	draw_text_color(TextX,TextY, _SubStr, C, C, C, C, 1);
	
}
else {
	
	C = TextColour;
	
	var i = 0, yAdd = 0; repeat(TextArrayLen) {
		
		if (Choice == i) { C = ChoiceColour; }
		else C = TextColour;
		
		draw_text_ext_color(TextX, TextY + yAdd, TextArray[i], TextHeight, TextMaxWidth, C, C, C, C, 1);
		yAdd += string_height_ext(TextArray[i], TextHeight, TextMaxWidth);
		i++;
	}
}

/*
//Draw Box
draw_sprite(Box, 0, BoxX, BoxY);

//Draw Portrait Back
draw_sprite(Frame, 0, PortX, PortY);

//Draw Portrait
draw_sprite(Portrait, PortraitIndex, PortX, PortY);

//Draw Portrait Frame
draw_sprite(Frame, 1, PortX, PortY);


//Draw NameBox
draw_sprite(NameBox, 0, NameBoxX, NameBoxY);

//Draw Name
var C = NameTextColour;
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text_color(NameTextX, NameTextY, Name, C,C,C,C,1);
draw_set_halign(fa_left); draw_set_valign(fa_top);


//Draw Text
//If the text page is not an array, run normally.
//If text page is an array,  print each reponse out.
if (!is_array(Text[Page])) {
	if (!Pause && (Counter < StrLen)) {
		Counter++;
	
		//Navigates between the two portraits to simulate talking
		if ((Counter mod 10) < 5) PortraitIndex = 1;
		else PortraitIndex = 0;
	
		//Controls how frequent the boops are for text scrolling
		if (Counter mod 5 == 0) {
			audio_play_sound(Voice, 10, false);
		}
	
		switch(string_char_at(TextWrapped, Counter)) {
			case ",": Pause = true; alarm[1] = 10; break;
			case ".": 
			case "?":
			case "!": Pause = true; alarm[1] = 20; break;
		}
	}
	var _SubStr = string_copy(TextWrapped, 1, Counter);

	C = TextColour;
	draw_text_color(TextX,TextY, _SubStr, C, C, C, C, 1);
	
}
else {
	
	C = TextColour;
	
	var i = 0, yAdd = 0; repeat(TextArrayLen) {
		draw_text_ext_color(TextX, TextY + yAdd, TextArray[i], TextHeight, TextMaxWidth, C, C, C, C, 1);
		yAdd += string_height_ext(TextArray[i], TextHeight, TextMaxWidth);
		i++;
	}
}