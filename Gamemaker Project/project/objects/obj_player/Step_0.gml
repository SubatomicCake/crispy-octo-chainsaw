// movement
depth = -5

if keyboard_check(vk_right) and !place_meeting(x+global.speed_,y,o_wall){
	x += global.speed_
	sprite_index = s_player_run_right
	image_speed = .8
	image_xscale = 1
}
if keyboard_check(vk_left) and !place_meeting(x-global.speed_,y,o_wall){
	x -= global.speed_
	image_speed = .8
	sprite_index = s_player_run_right
	image_xscale = -1
}
if keyboard_check(vk_up) and !place_meeting(x,y-global.speed_,o_wall){
	y -= global.speed_
	sprite_index = s_player_run_down1
	image_speed = .8
}
if keyboard_check(vk_down) and !place_meeting(x,y+global.speed_,o_wall){
	y += global.speed_
	sprite_index = s_player_run_down1
	image_speed = .8
}

// stopping frames when nothing is pressed

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_left {
	image_speed = 0
	sprite_index = s_player_right_still
	image_xscale = -1
}

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_right {
	image_speed = 0
	sprite_index = s_player_right_still
}

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_up {
	image_speed = 0
	sprite_index = s_player_run_up
	image_index = 0
}

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_down {
	image_speed = 0
	sprite_index = s_player_down_still
	image_index = 0
}


// keys and doors

if keyboard_check(vk_lcontrol)
	and distance_to_object(obj_door) <= 10 and global.player_has_key = true
	global.door_locked = false
	







