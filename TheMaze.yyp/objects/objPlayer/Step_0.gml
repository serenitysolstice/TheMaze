if (move_timer <= 0){
	
	var dx = 0;
	var dy = 0;

	if (keyboard_check(ord("A"))||(keyboard_check(vk_left)))
	{
	    dx = -1;
	}
	if (keyboard_check(ord("D"))||(keyboard_check(vk_right)))
	{
	    dx = 1;
	}
	if (keyboard_check(ord("W"))||(keyboard_check(vk_up)))
	{
	    dy = -1;
	}
	if (keyboard_check(ord("S"))||(keyboard_check(vk_down)))
	{
	    dy = 1;
	}
	
	// only try to move if there's a direction
	if (dx != 0 || dy != 0){
		var new_x = grid_x + dx;
		var new_y = grid_y + dy;
	
		// check bounds
		if (new_x >= 0 && new_x < global.maze_width && new_y >= 0 && new_y < global.maze_height){
			// maze collision check
			if (global.maze[new_y][new_x] == 0){
				grid_x = new_x;
				grid_y = new_y;
				x = grid_x * global.TILE_SIZE;
				y = grid_y * global.TILE_SIZE;
				move_timer = move_delay;
			}
		}
	}
	
} else {
	move_timer -= 1;	
}