//script_game_end()
screen_save("playingScreen.png");
instance_deactivate_all(true);
backPage = sprite_add("playingScreen.png", 0, false, true, 1280, 720);

draw_sprite(bck_conPage_backdrop,0,room_width/2,room_height/2);
