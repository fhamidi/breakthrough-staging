// Check room restart
if (instance_number(obj_brick_parent) - instance_number(obj_brick_gold) == 0) {
	if (room == rm_level_003) {
		global.high_score = global.player_score;
		room_goto(rm_level_001);
	} else {
		room_goto_next();
	}
}