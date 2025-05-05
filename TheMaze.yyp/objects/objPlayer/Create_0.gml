// Default player start
grid_x = 0;
grid_y = 0;

// find the first walkable tile
for (y = 0; y < global.maze_height; y++){
		for (x = 0; x < global.maze_width; x++){
			if (global.maze[y][x] == 0) {
				grid_x = x;
				grid_y = y;
				break;
			}
		}
		if (global.maze[grid_y][grid_x] == 0) break;
}

// set pixel position
x = grid_x * global.TILE_SIZE;
y = grid_y * global.TILE_SIZE;

move_timer = 0;
move_delay = 6;
