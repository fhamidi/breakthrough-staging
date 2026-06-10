// This won't actually derive from `obj_state_parent` for now.
// We want to test the worst-case integration scenario first.

// Create an effects instance if none exists.
if (!instance_exists(obj_effects)) {
	instance_create_layer(x, y + TILE_SIZE, layer, obj_effects);
}

// The animated alpha value of the text drawn in the HUD.
__animated_variables = {
	hud_text_alpha: {
		from: 0.0,
		to: 1.0,
		easing: global.Easing.out_sine
	}
};

// Start animation.
__pulse_hud_text_alpha();

/**
 * Continously pulse the alpha value of the text drawn in the HUD.
 */
function __pulse_hud_text_alpha()
{
	obj_effects.add(new Animation(
		ANIMATION_DURATION, __animated_variables
	), function() {
		// FIXME - We need some kind of looping feature in animations,
		// all this boilerplate is getting tiresome.
		var _keep_going = step();
		if (!_keep_going) {
			obj_state_test_states.__pulse_hud_text_alpha();
		}
		return _keep_going;
	});
}

// FIXME - TEST - Dump layer names and depths.
var _layers = layer_get_all();
array_foreach(_layers, function(_layer) {
	show_debug_message(
		$"|LAYERS      | name: \"{layer_get_name(_layer)}\", depth: {layer_get_depth(_layer)}");
});
