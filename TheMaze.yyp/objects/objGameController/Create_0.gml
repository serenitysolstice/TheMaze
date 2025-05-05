global.stairs_unlocked = false;
if (room == rLevelOne){
	global.stairs_unlocked = true;
}
global.TILE_SIZE = 32;

global.maze_height = 9;
global.maze_width = 11;
persistent = true;

global.maze = load_maze_from_file(get_maze_file_for_room(room));
if (!variable_global_exists("dialogue_lines")){
	global.dialogue_lines = scrLoadDialogueFile("dialogue.txt");
	global.dialogue_line_count = 0;
}

// Room map - used for controlling dialogue
global.room_dialogue_ids = ds_map_create();
ds_map_add(global.room_dialogue_ids, "rLevelOne", "default");
ds_map_add(global.room_dialogue_ids, "rLevelTwo", "room two");
ds_map_add(global.room_dialogue_ids, "rLevelThree", "default");


if (!variable_global_exists("dialogue_flags")){
	global.dialogue_flags = ds_map_create();
}
