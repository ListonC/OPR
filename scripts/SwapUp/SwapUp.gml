/// @description SwapUp(tile)
/// @param tile
function SwapUp(argument0) {

	//Get the 2 tiles.
	var b_tile = argument0;
	var t_tile = obj_master.grid[#b_tile.xSlot, b_tile.ySlot - 1];

	//If we're not a blank tile, and its not on the list already
	if(t_tile.type != "0"){
	    if(ds_list_find_index(obj_master.needChecks,t_tile) = -1){
	        ds_list_add(obj_master.needChecks,t_tile);
	    }
	}
	//Set temps..
	var t_bot = b_tile.ySlot;
	var t_bot_y = b_tile.y;
	var t_top = t_tile.ySlot;
	var t_top_y = t_tile.y;

	//Swap the slots...
	b_tile.ySlot = t_top;
	b_tile.y = t_top_y;
	t_tile.ySlot = t_bot;
	t_tile.y = t_bot_y;

	//Swap the grid positions..

	obj_master.grid[# t_tile.xSlot,t_tile.ySlot] = t_tile;
	obj_master.grid[# b_tile.xSlot,b_tile.ySlot] = b_tile;



}
