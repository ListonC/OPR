/// @description DRAW SCORE

if (global.HighScore > 0) {
	draw_set_font(fnt_Super);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(x + 100, y - 44,string_hash_to_newline("Hi Score : " + string(global.HighScore)));
}