/// @description Step event for selector...


if(Grid.Left && curTile.xSlot > 0){
    curTile = Grid.grid[#curTile.xSlot -1, curTile.ySlot];
}

if(Grid.Right && curTile.xSlot < 4){
    curTile = Grid.grid[#curTile.xSlot +1, curTile.ySlot];
}

if(Grid.Up && curTile.ySlot > 0){
    curTile = Grid.grid[#curTile.xSlot, curTile.ySlot -1];
}

if(Grid.Down && curTile.ySlot < 12){
    curTile = Grid.grid[#curTile.xSlot, curTile.ySlot +1];
}

if(Grid.Swap){
    SwapTiles(curTile);
	ds_list_add(Audio.playlist, SFX.SWAP);
}

if (Grid.Push) {
	Grid.PushUp();	
}


