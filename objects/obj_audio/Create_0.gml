/// @description Define Enums, Function

playlist = ds_list_create();
audio_channel_num(8);
isActive = true;
image_speed = 0;

enum SFX {
	NONE,
	SWAP,
	LAND,
	BREAK,
	SOLVE,
	COMBO
}


function PlaySound() {
	
	if (!isActive)
		exit;
	
	var _this = playlist[| 0];
	ds_list_delete(playlist, 0);
	var _track = 0;
	var _prio = 0;
	switch (_this) {
		
		case 0:
			exit;
		break;
		
		case SFX.SWAP:
			_track = sfx_Swap;
			_prio = 2;
		break;
		
		case SFX.LAND:
			_track = sfx_Land;
			_prio = 1;
		break;
		
		case SFX.SOLVE:
			_track = sfx_Solve;
			_prio = 3;
		break;
		
		case SFX.COMBO:
			_track = sfx_ComboSolve;
			_prio = 4;
		break;
		
		case SFX.BREAK:
			_track = sfx_BreakUp;
			_prio = 5;
		break
	}
	
	audio_play_sound(_track, _prio, false);
}