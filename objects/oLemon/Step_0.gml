//Pass in id to activate textbox
if (position_meeting(x,y, oPlayer) && keyboard_check_pressed(vk_space) && !instance_exists(oTextBox)) {
	
	CreateTextBoxNew(textID);
}