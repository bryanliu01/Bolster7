//draw_self();

draw_text(x+30,y-48,"Hp:" + string(current[@ HEALTH])+"/"+string(base[@ HEALTH])+", Atk:" + string(current[@ ATTACKPOINTS]) + ", Def:" + string(current[@ DEFENCEPOINTS]));

if (selected) draw_sprite(sIndicator, 0, x,y);