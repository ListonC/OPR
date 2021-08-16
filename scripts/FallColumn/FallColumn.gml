/// @description FallColumn(column)
/// @param column
function FallColumn(argument0) {

	var co = argument0;

	//Lets account for the selector..
	var s_x = MySelector.curTile.xSlot;
	var s_y = MySelector.curTile.ySlot;

	repeat(13){
	    for(var o = 12; o > 0; o--){
	        //If we're a blank tile, and above is a non-blank tile..
	        if(MySelector.Grid.grid[# co,o].type == "0"){
	            SwapUp(MySelector.Grid.grid[# co, o]);
	        }
	    }
	}

	MySelector.curTile = MySelector.Grid.grid[# s_x,s_y];



}
