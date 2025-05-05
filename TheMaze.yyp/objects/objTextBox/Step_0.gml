if (!is_done_typing){
	char_timer++;
	if (char_timer >= char_speed){
		char_timer = 0;
		char_index++;
		var line = dialogue[current_line];
		if (char_index >= string_length(line)){
			is_done_typing = true;
		}
	}
} else {
	if  (keyboard_check_pressed(vk_space)){
		current_line++;
		if (current_line >= array_length(dialogue)){
			instance_destroy();
		}
		else {
			char_index = 0;
			is_done_typing = false;
		}
	}
}