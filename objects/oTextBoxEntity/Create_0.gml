Box = sEntityTextBoxBeta;

Page = 0;

BoxWidth = sprite_get_width(Box);
BoxHeight = sprite_get_height(Box);

BoxX = (RESOLUTION_W - BoxWidth)/2
BoxY = RESOLUTION_H - BoxHeight + 1;

XBuffer = 12;
YBuffer = 18;
TextX = BoxX + XBuffer;
TextY = BoxY + YBuffer;

Counter = 0;
Pause = false;

TextColour = c_white;

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
