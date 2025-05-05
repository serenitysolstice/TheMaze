if (!instance_exists(objFadeController)) {
	show_debug_message("Current room: " + string(room));
	show_debug_message("Next room: " + string(room_next));
    var f = instance_create_layer(0, 0, "Instances", objFadeController);
    f.next_room = room_next; // Let the fade object handle the transition
}