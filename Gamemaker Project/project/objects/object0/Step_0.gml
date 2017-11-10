if keyboard_check(vk_right) and !place_meeting(x+4,y,o_wall){
	x += 4
	sprite_index = s_player_run_right
	image_speed = .6
}
if keyboard_check(vk_left) and !place_meeting(x-4,y,o_wall){
	x -= 4
	image_speed = .6
}
if keyboard_check(vk_up) and !place_meeting(x,y-4,o_wall){
	y -= 4
	sprite_index = s_player_run_up
	image_speed = .6
}
if keyboard_check(vk_down) and !place_meeting(x,y+4,o_wall){
	y += 4
	sprite_index = s_player_run_down
	image_speed = .6
}