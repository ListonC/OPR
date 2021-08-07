/// @description DRAW BASE THEN SPRITE

var _r, _g, _b;
_r = Red;
_g = Grn;
_b = Blu;
_r = clamp(_r, 0,1);
_g = clamp(_g, 0,1);
_b = clamp(_b, 0,1);

var y_height = obj_master.sprite_height - (ySlot * (abs(obj_master.yOffset)*Mod));
y_height = clamp(y_height, 0, 255);

var _col = make_color_rgb(Red + (y_height * _r)div Mod, 
						  Grn + (y_height * _g)div Mod, 
						  Blu + (y_height * _b)div Mod);

var x_off = x;
var y_off = y;
if (isNervous)
{
	x_off += irandom_range(-2, 2);
	y_off += irandom_range(-2, 2);
}

if (isDying)
{
	sprite_index = spr_BlockSlice;
	image_speed = 1;
	draw_self();
	exit;
}

if (isHot) {
	var _scale = lerp(0, 6, counter) / 100 * -1;
	draw_sprite_ext(base, image_index, x_off, y_off, 1 + _scale, 1+_scale, 0, c_white, 1);
	draw_rectangle_color(x_off-16,y_off-16, x_off+15,y_off+15, _col, _col, _col, _col, false);
	draw_sprite_ext(sprite_index, image_index, x_off, y_off, 1 + _scale, 1+_scale, 0, c_white, 1);
	depth = _scale * -1;
} else {
	draw_sprite(base, image_index, x_off, y_off);
	draw_rectangle_color(x_off-16,y_off-16, x_off+15,y_off+15, _col, _col, _col, _col, false);
	draw_self();
	depth = 0;
}
