// Draw help text in HUD.
var _game_hud_width = room_width - GAME_HUD_LEFT - TILE_SIZE;
var _half_room_height = room_height / 2;
draw_set_font(-1);
draw_text_ext_transformed_color(
    GAME_HUD_LEFT, _half_room_height - TILE_SIZE * 4,
    "[+] PUSH STATE WITH BG LAYER",
    TILE_SIZE, _game_hud_width / TEXT_SCALE_MEDIUM,
    TEXT_SCALE_MEDIUM, TEXT_SCALE_MEDIUM, 0,
    c_yellow, c_yellow, c_yellow, c_yellow,
    __animated_variables.hud_text_alpha.value);
draw_text_ext_transformed_color(
    GAME_HUD_LEFT, _half_room_height,
    "[-] PUSH STATE WITHOUT BG LAYER",
    TILE_SIZE, _game_hud_width / TEXT_SCALE_MEDIUM,
    TEXT_SCALE_MEDIUM, TEXT_SCALE_MEDIUM, 0,
    c_yellow, c_yellow, c_yellow, c_yellow,
    __animated_variables.hud_text_alpha.value);
