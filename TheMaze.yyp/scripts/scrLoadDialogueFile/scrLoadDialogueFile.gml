function scrLoadDialogueFile(_filename) {
    var file = file_text_open_read(_filename);
	var text = "";
	while (!file_text_eof(file)){
		text += file_text_readln(file) + "\n";
	}
	file_text_close(file);
	
    var lines = string_split(text, "\n");

    var map = ds_map_create();
    var current_id = "";
    var current_text = "";

    for (var i = 0; i < array_length(lines); i++) {
        var line = string_trim(lines[i]);

        if (string_length(line) == 0) continue; // skip empty lines

        if (string_char_at(line, 1) == "#") {
            // Save the last entry before starting a new one
            if (current_id != "") {
                ds_map_add(map, current_id, current_text);
            }

            current_id = string_delete(line, 1, 1); // remove the #
            current_text = "";
        } else {
            if (current_text != "") current_text += "\n";
            current_text += line;
        }
    }

    // Save the last block
    if (current_id != "") {
        ds_map_add(map, current_id, current_text);
    }
	
    return map;
}
