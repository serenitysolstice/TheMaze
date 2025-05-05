// draw dialogue box sprite
draw_sprite(sprDialogueBox, 0, 0, 0);

draw_set_color(c_white);
draw_set_font(-1); // -1 = default built-in font
//draw_rectangle(100, 680, 1000, 720, true);

if (current_line < array_length(dialogue)){
	var line = dialogue[current_line];
	var visible_text = string_copy(line, 1, char_index);
	draw_text(text_x, text_y, visible_text);
}