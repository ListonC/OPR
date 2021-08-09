/// @description Master Draw

var x_off = 0;
var y_off = 0;

if (isScoring)
{
	var _rangelow = (playerScore - drawscore) * -1;
	var _rangehi = (playerScore - drawscore);
	x_off = irandom_range(_rangelow, _rangehi);
	y_off = irandom_range(_rangelow, _rangehi);
}


draw_set_font(fnt_Super);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(x + 100 + x_off, y - 48 + y_off,string_hash_to_newline("Score : " + string(playerScore)));

draw_self();