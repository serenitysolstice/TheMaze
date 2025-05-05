function scrMazeLoader(){

}

function load_maze_from_file(filename) {
	var file = file_text_open_read(filename);
	var rows = [];
	while (!file_text_eof(file)){
		var line = file_text_read_string(file);
		file_text_readln(file);
		var row = [];
		for (var i = 1; i <= string_length(line); i++) {
            row[i - 1] = real(string_char_at(line, i));
        }
		array_push(rows, row);
	}
	file_text_close(file);
	return rows;
}

function get_maze_file_for_room(r){
		switch (r){
			case rLevelOne: {
				global.maze_height = 9;
				global.maze_width = 11;
				return "maps/maze_01.txt";
			}
			case rLevelTwo: {
				global.maze_height = 14;
				global.maze_width = 18;
				global.current_dialogue_id = "room two";
				return "maps/maze_02.txt";
			}
			case rLevelThree: {
				global.maze_height = 19;
				global.maze_width = 10;
				global.current_dialogue_id = "default";
				return "maps/maze_03.txt";
			}
			case rLevelFour: {
				global.maze_height = 12;
				global.maze_width = 24;
				global.current_dialogue_id = "room four";
				return "maps/maze_04.txt";
			}
			default:
				return "maps/maze_01.txt";
		}
}