if (alpha > 0) {

   alpha -= 0.10;

}
else instance_destroy();

draw_set_alpha(1);

draw_set_colour(c_white);

draw_rectangle(0,0,room_width,room_height,-1);

draw_set_alpha(1); //reset alpha value so it doesn't mess with other draw events

draw_text(100, 100, alpha);