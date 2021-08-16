/// @description Score Update

var p1_x = 0;
var p1_y = 0;
var p2_x = 0;
var p2_y = 0;

with (obj_master) {
	if (Player == 1) {
		global.PlayerOneScore = playerScore;
		p1_x = x;
		p1_y = y;
	}
	if (Player == 2) {
		global.PlayerTwoScore = playerScore;
		p2_x = x;
		p2_y = y;
	}
}

if (global.PlayerOneScore > global.HighScore)
{
	global.HighScore = global.PlayerOneScore;
	x = p1_x;
	y = p1_y;
}

if (global.PlayerTwoScore > global.HighScore)
{
	global.HighScore = global.PlayerTwoScore;
	x = p2_x;
	y = p2_y;
}

alarm_set(4, room_speed);