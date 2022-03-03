acceptKey = keyboard_check_pressed(ord("Z"));
skipKey = keyboard_check_pressed(ord("X"));

//Position of sprite
textBoxX = 0;
textBoxY = RESOLUTIONH - textBoxHeight - 20;;

//Setup to run for one frame

if (!setup) {
	//If no text is in the page, destroy text box
	if (text[0] == "") {
		instance_destroy();
	}
	setup = true;
	draw_set_colour(c_white);
	draw_set_font(fGUILarge);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
	
	//loop through the pages
	for (var i = 0; i < pageNumber; i++) {
		
		//Find how many characters are on each page
		textLength[i] = string_length(text[i]);
		
		//Check if character on the left
		textXOffset[i] = 135;
		portraitXOffset[i] = 25;
		
		
		//Check if character on the right
		if (speakerSide[i] == -1) {
			textXOffset[i] = 25;
			portraitXOffset[i] = 515;
		}
		
		//Check if no portrait
		if (speakerSide[i] == noone) {
			textXOffset[i] = 80;
		}
		
		//Setting individual characters to find where the line breaks at word limit
		for (var c = 0; c < textLength[i]; c++) {
			var charPos = c + 1;
			
			//Store indiviudal characters in the "char" array
			char[c, i] = string_char_at(text[i], charPos);
			
			//Get current width of the line
			var txtUpToChar = string_copy(text[i], 1, charPos);
			var currentTxtW = string_width(txtUpToChar) - string_width(char[c,i]);
			
			//get the last free space
			if (char[c,i] == " ") {
				lastFreeSpace = charPos + 1;
			}
			
			//Get line breaks
			if (currentTxtW - lineBreakOffset[i] > lineWidth) {
				lineBreakPos[lineBreakNum[i], i] = lastFreeSpace;
				lineBreakNum[i]++;
				var txtUpToLastSpace = string_copy(text[i], 1, lastFreeSpace);
				var lastFreeSpaceString = string_char_at(text[i], lastFreeSpace);
				lineBreakOffset[i] = string_width(txtUpToLastSpace) - string_width(lastFreeSpaceString);
			}
		}
		
		//Set line breaks properly
		for (var c = 0; c < textLength[i]; c++) {
			var charPos = c + 1;
			var txtX = textBoxX + textXOffset[i];
			var txtY = textBoxY + border;
			var txtUpToChar = string_copy(text[i], 1, charPos);
			var currentTxtW = string_width(txtUpToChar) - string_width(char[c,i]);
			var textLine = 0;
			
			//Compensate for line breaks
			for (var lb = 0; lb < lineBreakNum[i]; lb++) {
				if (charPos >= lineBreakPos[lb, i]) {
					var strCopy = string_copy(text[i], lineBreakPos[lb, i], charPos - lineBreakPos[lb,i]);
					currentTxtW = string_width(strCopy);
					
					textLine = lb + 1;
				}
				
			}
			
			//Add to the x and y coords based on the new info
			charX[c, i] = txtX + currentTxtW;
			charY[c, i] = txtY + textLine * lineSep;
		}
	}
	
}
	
//typewriter text effect
if (textPauseTimer <= 0) {
	
	if (drawChar < textLength[page]) {
		
		drawChar += textSpeed[page];
		drawChar = clamp(drawChar, 0, textLength[page]);
		var checkChar = string_char_at(text[page], drawChar);
		
		switch (checkChar) {
			case ".": textPauseTimer = 15; image_index = 0; image_speed = 0; break;
			case "-": textPauseTimer = 15; image_index = 0; image_speed = 0 break;
			case ",": textPauseTimer = 10; image_index = 0; image_speed = 0 break;
			case "?": textPauseTimer = 15; image_index = 0; image_speed = 0 break;
			case "!": textPauseTimer = 25; image_index = 0; image_speed = 0 break;
			default: textPauseTimer = 0; image_speed = 1; break;
			if (!audio_is_playing(speakerVoice[page])) audio_play_sound(speakerVoice[page], 8, false);
		}
		
		if (soundCount < soundDelay) {
			soundCount++;
		}
		else {
			soundCount = 0;
			audio_play_sound(speakerVoice[page], 8, false);
		}
	}
}
else {
	textPauseTimer--;
}
//If typing is done, go to next page
if (drawChar == textLength[page]) {
	
	//If textbox is not typing, npc will remain still
	if (speakerAnimate[page]) {
		speakerObject[page].image_index = 0;
		speakerObject[page].image_speed = 0;
	}
	/*if ((speakerObject[page]) == npcSneck) {
		speakerObject[page].image_index = 0;
		speakerObject[page].image_speed = 0;
	}*/
	
	//Flip through pages
	if (acceptKey) {
		event_perform(ev_other, ev_user0);
		//Go next page
		if (page < pageNumber - 1) {
			page++;
			drawChar = 0;
		}
		
		//If no more pages, destroy text box
		else {
			//Link test for options
			if (optionNumber > 0) {
				if (optionLinkID[optionPos] != -1) CreateTextBoxNew(optionLinkID[optionPos]);
			}
			instance_destroy();
		}
	}
}
	
//If typing is not done, fill out entire page
else {
	
	
	//If typing is not done, npc in overworld will animate talking
	if (instance_exists(speakerObject[page]) && speakerAnimate[page]) 
		speakerObject[page].image_speed = 1;
	
	
	//drawChar condition is here because upon textbox activation, first page will
	//draw all text instantly because of same 'Z' presses
	if ((acceptKey || skipKey) && drawChar > 1)
	drawChar = textLength[page];	
}
	


	
//Draw the textbox
var textX = textBoxX + textXOffset[page];
var textY = textBoxY;

textBoxImage += textBoxSpeed;
textBoxSpriteWidth = sprite_get_width(textBoxSprite[page]);
textBoxSpriteHeight = sprite_get_height(textBoxSprite[page]);

//Draw the speaker
if (speakerSprite[page] != noone) {
	sprite_index = speakerSprite[page];
	if (drawChar == textLength[page]) {image_index = 0};
	
	var speakerX = textBoxX + portraitXOffset[page];
	if (speakerSide[page] == -1) {
		speakerX += sprite_width;
	}
	
	draw_sprite_ext(sPortraitFrame, textBoxImage, textBoxX + portraitXOffset[page], textBoxY, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, speakerX, textBoxY, speakerSide[page], 1, 0, c_white, 1);
	
	//Draw additional cosmetics of npcs not naturally bound to frames on their sprites
	DrawCosmetics(speakerX);
}

//Draw textbox if its animated, else this works for static boxes too
draw_sprite_ext(textBoxSprite[page], textBoxImage, textX, textY , textBoxWidth/textBoxSpriteWidth, textBoxHeight/textBoxSpriteHeight, 0, c_white, 1);

//Options
if (drawChar == textLength[page] && page == pageNumber - 1) {
	
	//Option Selection
	optionLength = array_length(option);
	optionPos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (optionPos < 0) optionPos = optionLength - 1;
	if (optionPos > optionLength - 1) optionPos = 0;
	
	var opSpace = 24;
	var opBord = 10;
	for (var op = 0; op < optionNumber; op++) {
		
		
		//Draw option box
		var ow = string_width(option[op]) * 0.5 + opBord * 2;
		
		var width = ow/textBoxSpriteWidth;
		var height = (opSpace - 1)/textBoxSpriteHeight;
		
		draw_sprite_ext(textBoxSprite[page], textBoxImage, textX + 16, textY - opSpace * optionNumber + opSpace * op, width, height, 0, c_white, 1);
		
		//Draw indicator
		if (optionPos == op) {
			draw_sprite(sOptionIndicator, 0, textX, textY - opSpace * optionNumber + opSpace * op);
		}
		
		//Draw option text using smaller text
		draw_set_colour(c_white);
		draw_set_font(fGUI);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_text(textX + 16 + opBord, textY - opSpace * optionNumber + opSpace * op, option[op]);
		//Reset to large font
		draw_set_font(fGUILarge);
		
		
	}
}

//Draw the text
for (var c = 0; c < drawChar; c++) {
	draw_set_colour(c_white);
	draw_set_font(fGUILarge);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(charX[c, page] + 20, charY[c, page] - 20, char[c,page]);
}

/*
draw_text(20, 20, "page: " + string(page));
draw_text(20, 40, "pageNumber: " + string(pageNumber));
draw_text(20, 60, "script: " + string(scripts[page]));
*/

