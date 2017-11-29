// movement
depth = -5

if keyboard_check(vk_right) and !place_meeting(x+global.speed_,y,o_wall){
	x += global.speed_
	sprite_index = s_player_run_right
	image_speed = .6
	image_xscale = 1
}
if keyboard_check(vk_left) and !place_meeting(x-global.speed_,y,o_wall){
	x -= global.speed_
	image_speed = .6
	sprite_index = s_player_run_right
	image_xscale = -1
}
if keyboard_check(vk_up) and !place_meeting(x,y-global.speed_,o_wall){
	y -= global.speed_
	sprite_index = s_player_run_up
	image_speed = .6
}
if keyboard_check(vk_down) and !place_meeting(x,y+global.speed_,o_wall){
	y += global.speed_
	sprite_index = s_player_run_down
	image_speed = .6
}

// stopping frames when nothing is pressed

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_left {
	image_speed = 0
	sprite_index = s_player_run_right
	image_xscale = -1
	image_index = 0
}

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_right {
	image_speed = 0
	sprite_index = s_player_run_right
	image_index = 0
}

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_up {
	image_speed = 0
	sprite_index = s_player_run_up
	image_index = 0
}

if !keyboard_check(vk_right) and !keyboard_check(vk_left) and !keyboard_check(vk_up) and !keyboard_check(vk_down) and keyboard_lastkey = vk_down {
	image_speed = 0
	sprite_index = s_player_run_down
	image_index = 0
}


// keys and doors

if keyboard_check(vk_lcontrol)
	and distance_to_object(obj_door) <= 16
	global.door_locked = false








