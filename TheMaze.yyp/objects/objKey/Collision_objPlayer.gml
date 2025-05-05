global.stairs_unlocked = true;

if (!ds_map_exists(global.dialogue_flags, "touch key")) {
    scrShowDialogue("touch key");
    ds_map_add(global.dialogue_flags, "touch key", true);
}

instance_destroy();
