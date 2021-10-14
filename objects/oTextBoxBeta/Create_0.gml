Box = sTextBoxBeta;
Frame = sMSIntroPortraitFrame;
Portrait = npcFrame.Portrait;
NameBox = sNameBox;

Page = 0;

BoxWidth = sprite_get_width(Box);
BoxHeight = sprite_get_height(Box);
PortWidth = sprite_get_width(Portrait[Page]);
PortHeight = sprite_get_height(Portrait[Page]);
NameBoxWidth = sprite_get_width(NameBox);
NameBoxHeight = sprite_get_height(NameBox);

PortX = (RESOLUTION_W - BoxWidth - PortWidth) * 0.5;
PortY = (RESOLUTION_H*0.98) - PortHeight;
BoxX = PortX + PortWidth;
BoxY = PortY;
NameBoxX = RESOLUTION_W - PortX - 128;
NameBoxY = BoxY - NameBoxHeight + 15;

XBuffer = 12;
YBuffer = 18;
TextX = BoxX + XBuffer;
TextY = BoxY + YBuffer;
NameTextX = NameBoxX + (NameBoxWidth/2);
NameTextY = NameBoxY + (NameBoxHeight/2);

PortraitIndex = 0;
Counter = 0;
Pause = false;

TextColour = c_white;
NameTextColour = c_white;

draw_set_font(fText);
TextHeight = string_height("M");
TextMaxWidth = BoxWidth - (2*XBuffer);

Text[0] = "";
//Page = 0;
Name = "";
Voice = vDefault;



KeyActivate = ord("Z");
Choice = 0;
ChoiceColour = c_lime;

/* TEST
event_perform(ev_other, ev_user1)
Text[0] = "THIS IS TEST STRING THIS IS TEST STRING... HELLO?";
Text[1] = "Eduard has seen you do your work. Eduard is sure that our time together... wil be very, interesting.";
*/
