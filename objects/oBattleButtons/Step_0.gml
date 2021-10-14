menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menuIndex += menuMove;

if (menuIndex < 0) menuIndex = numberOfButtons - 1;
if (menuIndex > (numberOfButtons - 1)) menuIndex = 0;

if (menuIndex != lastSelected) audio_play_sound(vBoop, 1, false);

lastSelected = menuIndex;

if (menuIndex = attack) image_index = 1;
if (menuIndex = specialAttack) image_index = 2;
if (menuIndex = defend) image_index = 3;