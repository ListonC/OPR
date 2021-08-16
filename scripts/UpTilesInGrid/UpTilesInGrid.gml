/// @description UpTilesInGrid()
function UpTilesInGrid() {

	//Check the top row...
	for(var ii = 0; ii < 6; ii++){
	    if(grid[# ii,0].type == "0"){
	        if(MySelector.curTile == grid[# ii,0]){
	            MySelector.curTile = grid[# ii,1];
	        }
	        instance_destroy(grid[# ii,0]);
	        grid[# ii,0] = 0;
	    }else{
	        room_restart(); 
	    }
	}



	//Go left to right in grid, then down..
	for(var i = 0; i < 6; i++){
	    for(var j = 1; j < 13; j++){
	        if(grid[# i,j] != 0){
	            grid[# i,j].ySlot -=1;
	            grid[# i, j-1] = grid[#i,j];
	        }
	    }
	}

	grid[# 0,12] = 0;

}
