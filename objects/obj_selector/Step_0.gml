/// @description Step event for selector...


if(keyboard_check_pressed(vk_left) && curTile.xSlot > 0){
    curTile = obj_master.grid[#curTile.xSlot -1, curTile.ySlot];
}

if(keyboard_check_pressed(vk_right) && curTile.xSlot < 4){
    curTile = obj_master.grid[#curTile.xSlot +1, curTile.ySlot];
}

if(keyboard_check_pressed(vk_up) && curTile.ySlot > 0){
    curTile = obj_master.grid[#curTile.xSlot, curTile.ySlot -1];
}

if(keyboard_check_pressed(vk_down) && curTile.ySlot < 12){
    curTile = obj_master.grid[#curTile.xSlot, curTile.ySlot +1];
}

if(keyboard_check_pressed(vk_space)){
    SwapTiles(curTile);
	ds_list_add(Audio.playlist, SFX.SWAP);
}


