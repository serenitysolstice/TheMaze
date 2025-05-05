
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(320, 240, "YOU WIN!");

if (can_continue) {
    draw_text(320, 300, "Press SPACE to continue");
}
