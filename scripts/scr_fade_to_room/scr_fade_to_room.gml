/// @arg target_room
function scr_fade_to_room() {
	var _fade = instance_create_layer(x, y, "Fade", obj_fade);
	with (_fade) {
		target_rm = argument0;
	}
}