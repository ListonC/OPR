/// @description Master Draw


draw_set_font(fnt_default);
draw_set_color(c_white);
draw_text(15,30,string_hash_to_newline("Score : " + string(playerScore)));

draw_self();