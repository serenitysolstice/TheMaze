if (room == rLevelFour){
	instance_create_layer(320, 320, "Instances", objWinScreen);
} else {
	if (global.stairs_unlocked == true){
		global.stairs_unlocked = false; // ensure next door is locked
		room_goto_next();
	}
}