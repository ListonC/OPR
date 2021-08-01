/// @description DRAW BASE THEN SPRITE

if (isDying)
{
	sprite_index = spr_BlockSlice;
	image_speed = 1;
	draw_self();
	exit;
}

if (isHot) {
	var _scale = lerp(0, 8, counter) / 100;
	draw_sprite_ext(base, image_index, x,y, 1 + _scale, 1+_scale, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x,y, 1 + _scale, 1+_scale, 0, c_white, 1);
	depth = _scale * -1;
} else {
	draw_sprite(base, image_index, x,y);
	draw_self();
	depth = 0;
}
