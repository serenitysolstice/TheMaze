// Dialogue goes here;
if (!variable_global_exists("dialogue_lines")){
	show_debug_message("ERROR: dialogue_lines not loaded yet!");
} else {
	var room_id = global.room_dialogue_ids[? room_get_name(room)];
	show_debug_message("Using dialogue id: " + room_id);
	scrShowDialogue(room_id);
}
