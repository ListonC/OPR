/// @description Init Vars

game_set_speed(60, gamespeed_fps);

global.SECONDS = 0;

global.PlayerOneScore = 0;
global.PlayerTwoScore = 0;
global.HighScore = 0;

global.Difficulty = 0;

alarm_set(1, room_speed * 60);
alarm_set(2, room_speed * 120);
alarm_set(3, room_speed * 180);
alarm_set(4, room_speed * 3);
alarm_set(5, 5);
alarm_set(7, room_speed);

hasSpawned = false;


function SetBG(_layer, _vspd, _hspd) {
	
	var bgone = layer_get_id(_layer);
	layer_vspeed(bgone, _vspd);
	layer_hspeed(bgone, _hspd);
}

SetBG("BG1", 0.50, 0);



