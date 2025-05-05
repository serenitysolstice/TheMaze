// Movement
if (keyboard_check(vk_left)||(keyboard_check(ord("A"))))
{
	if (!instance_place(x-2, y, objWalls)){
    x = x - 2;
	}
}
if (keyboard_check(vk_right)||(keyboard_check(ord("D"))))
{
	if (!instance_place(x+2, y, objWalls)){
    x = x + 2;
	}
}
if (keyboard_check(vk_up)||(keyboard_check(ord("W"))))
{
	if (!instance_place(x, y-2, objWalls)){
    y = y - 2;
	}
}
if (keyboard_check(vk_down)||(keyboard_check(ord("S"))))
{
	if (!instance_place(x, y+2, objWalls)){
    y = y + 2;
	}
}
