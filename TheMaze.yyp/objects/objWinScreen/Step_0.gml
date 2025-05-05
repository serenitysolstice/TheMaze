if (win_timer > 0){
	win_timer--;
	if (win_timer <= 0){
		can_continue = true;
	}
}

if (can_continue && keyboard_check_pressed(vk_space)){
	room_goto(rLevelOne);	
}
