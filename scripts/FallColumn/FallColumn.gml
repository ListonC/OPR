/// @description FallColumn(column)
/// @param column
function FallColumn(argument0) {

	var co = argument0;

	//Lets account for the selector..
	var s_x = obj_selector.curTile.xSlot;
	var s_y = obj_selector.curTile.ySlot;

	repeat(13){
	    for(var o = 12; o > 0; o--){
	        //If we're a blank tile, and above is a non-blank tile..
	        if(obj_master.grid[# co,o].type == "0"){
	            SwapUp(grid[# co, o]);
	        }
	    }
	}

	obj_selector.curTile = obj_master.grid[# s_x,s_y];



}
