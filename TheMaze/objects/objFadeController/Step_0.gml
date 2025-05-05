if (fading_out) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        if (next_room != noone) {
            room_goto(next_room);
        }
    }
} else {
    fade_alpha -= fade_speed;
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        instance_destroy();
    }
}