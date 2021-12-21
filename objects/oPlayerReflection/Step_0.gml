x = oPlayer.x;

offset = oPlayer.y - mirrorLine;

y = mirrorLine - offset - 14;

sprite_index = oPlayer.sprite_index;

//Time constraint and niche usage allows for numeric substituion
if (oPlayer.image_index >= 12 && oPlayer.image_index < 16) image_index = oPlayer.image_index - 8;

else if (oPlayer.image_index >= 4 && oPlayer.image_index < 8) image_index = oPlayer.image_index + 8;

else image_index = oPlayer.image_index;