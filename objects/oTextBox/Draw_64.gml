acceptKey = keyboard_check_pressed(ord("Z"));
skipKey = keyboard_check_pressed(ord("X"));

//Position of sprite
textBoxX = camera_get_view_x(view_camera[0]);
textBoxY = RESOLUTIONH - textBoxHeight - 20;;

//Setup to run for one frame

if (!setup) {
	
	setup = true;
	draw_set_font(fGUILarge);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
	//loop through the pages
	for (var i = 0; i < pageNumber; i++) {
		
		//Find how many characters are on each page
		textLength[i] = string_length(text[i]);
		
		//Get x position for text box w/o profile pic
		textXOffset[i] = 80;
	}
	
}
	
//Typewriter text effect
if (drawChar < textLength[page]) {
	drawChar += textSpeed;
	drawChar = clamp(drawChar, 0, textLength[page]);
}

	
//If typing is done, go to next page
if (drawChar == textLength[page]) {
	
	
	//Flip through pages
	if (acceptKey) {
		//Go next page
		if (page < pageNumber - 1) {
			page++;
			drawChar = 0;
		}
		
		//If no more pages, destroy text box
		else {
			instance_destroy();
		}
	}
}
	
//If typing is not done, fill out entire page
else {
	if (acceptKey || skipKey)
	drawChar = textLength[page];	
}
	


	
//Draw the textbox
var textX = textBoxX + textXOffset[page];
var textY = textBoxY;

textBoxImage += textBoxSpeed;
textBoxSpriteWidth = sprite_get_width(textBoxSprite);
textBoxSpriteHeight = sprite_get_height(textBoxSprite);

//Draw textbox if its animated, else this works for static boxes too
draw_sprite_ext(textBoxSprite, textBoxImage, textX, textY , textBoxWidth/textBoxSpriteWidth, textBoxHeight/textBoxSpriteHeight, 0, c_white, 1);

//Options
if (drawChar == textLength[page] && page == pageNumber - 1) {
	
	//Option Selection
	optionLength = array_length(option);
	optionPos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (optionPos < 0) optionPos = optionLength - 1;
	if (optionPos > optionLength - 1) optionPos = 0;
	
	var opSpace = 20;
	var opBord = 4;
	for (var op = 0; op < optionNumber; op++) {
		
		
		//Draw option box
		var ow = string_width(option[op]) * 0.5 + opBord * 2;
		
		var width = ow/textBoxSpriteWidth;
		var height = (opSpace - 1)/textBoxSpriteHeight;
		
		draw_sprite_ext(textBoxSprite, textBoxImage, textX + 16, textY - opSpace * optionNumber + opSpace * op, width, height, 0, c_white, 1);
		
		//Draw option text using smaller text
		draw_set_font(fGUI);
		draw_text(textX +  16 + opBord, textY - opSpace * optionNumber + opSpace * op - 1, option[op]);
		//Reset to large font
		draw_set_font(fGUILarge);
		
		
	}
}


//Draw the text
var drawText = string_copy(text[page], 1, drawChar);
draw_text_ext(textX + border, textY, drawText, lineSep, lineWidth);