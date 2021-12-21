

//Draw Box
draw_sprite(Box, 0, BoxX, BoxY);
draw_set_halign(fa_left); draw_set_valign(fa_top);

var C = TextColour;
//Draw Text
//If the text page is not an array, run normally.
//If text page is an array,  print each reponse out.
if (!ChoiceDialogue) {
	if (!Pause && (Counter < StrLen)) {
		Counter++;
	
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
		
		if (Choice == i) { C = ChoiceColour; }
		else C = TextColour;
		
		draw_text_ext_color(TextX, TextY + yAdd, TextArray[i], TextHeight, TextMaxWidth, C, C, C, C, 1);
		yAdd += string_height_ext(TextArray[i], TextHeight, TextMaxWidth);
		i++;
	}
}
