function scrShowDialogue(_id) {
    var text = global.dialogue_lines[? _id];

    if (text != undefined) {
        var lines = string_split(text, "\n");
        var box = instance_create_layer(0, 0, "Instances", objTextBox);
        box.dialogue = lines;
		show_debug_message("Spawning dialogue box for: " + _id);
    } else {
        show_debug_message("Dialogue ID not found: " + _id);
    }
}
