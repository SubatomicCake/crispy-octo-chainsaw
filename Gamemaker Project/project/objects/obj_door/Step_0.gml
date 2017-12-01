if global.door_locked = true
	sprite_index = s_door_closed

if global.door_locked = false and global.player_has_key = true
	sprite_index = s_door_open
	//play sound