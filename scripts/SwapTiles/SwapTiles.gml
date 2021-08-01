/// @description SwapTiles(leftTile)
/// @param leftTile
function SwapTiles(argument0) {

	//Get the 2 tiles.
	var l_tile = argument0;
	var r_tile = obj_master.grid[#l_tile.xSlot + 1, l_tile.ySlot];


	//Set temps..
	var t_left = l_tile.xSlot;
	var t_left_x = l_tile.x;
	var t_right = r_tile.xSlot;
	var t_right_x = r_tile.x;

	//Swap the slots...
	l_tile.xSlot = t_right;
	l_tile.x = t_right_x;
	r_tile.xSlot = t_left;
	r_tile.x = t_left_x;

	//Swap the grid positions..

	obj_master.grid[# r_tile.xSlot,r_tile.ySlot] = r_tile;
	obj_master.grid[# l_tile.xSlot,l_tile.ySlot] = l_tile;

	//Do match logic...

	CheckSwapMatches(r_tile);
	CheckSwapMatches(l_tile);

	AddFallColumn(r_tile.xSlot);
	AddFallColumn(l_tile.xSlot);

	curTile = r_tile;





}
