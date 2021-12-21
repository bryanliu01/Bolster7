draw_text(400, 50, "Camera Position: " + string(camera_get_view_x(cam)) +". " + string(camera_get_view_y(cam)));
draw_text(400, 60, "Camera Size: " + string(camera_get_view_width(cam)) +". " + string(camera_get_view_height(cam)));
draw_text(400, 70, "OffSets: " + string(testX) + ", " + string(testY));
draw_text(400, 80, "PlayerPosition: " + string(oPlayerBattle.x) + ", " + string(oPlayerBattle.y));