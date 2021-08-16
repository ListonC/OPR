/// @description RESET VARS

global.Difficulty = 0;
global.PlayerOneScore = 0;
global.PlayerTwoScore = 0;

alarm_set(1, room_speed * 90);
alarm_set(2, room_speed * 180);
alarm_set(3, room_speed * 240);

hasSpawned = false;