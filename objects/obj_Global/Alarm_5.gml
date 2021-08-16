/// @description STARS


var _x = irandom_range(32, room_width-32);

var _star = instance_create_layer(_x, -64, "Stars", obj_stars);
_star.vspeed = irandom_range(2, 5);
_star.hspeed = irandom_range(-1, 1);

alarm_set(5, irandom_range(1, 9) * room_speed);