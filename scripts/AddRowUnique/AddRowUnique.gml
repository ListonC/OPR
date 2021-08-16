/// @description AddRowUnique()
function AddRowUnique(argument0) {

	var _me = argument0;
	
	var slot1,slot2,slot3,slot4,slot5,slot6;

	slot1 = choose("A","B","C","D","E");

	slot2 = choose("A","B","C","D","E");

	slot3 = choose("A","B","C","D","E");

	slot4 = choose("A","B","C","D","E");

	slot5 = choose("A","B","C","D","E");

	slot6 = choose("A","B","C","D","E");

	repeat(100){
	    //Avoid 3x vertical...
	    if(_me.grid[# 0,11].type = slot1){
	        if(_me.grid[# 0,11].type == _me.grid[#0,10].type){
	            slot1 = choose("A","B","C","D","E");
	        }
	    }
	    if(_me.grid[# 1,11].type = slot2){
	        if(_me.grid[# 1,11].type == _me.grid[#1,10].type){
	            slot2 = choose("A","B","C","D","E");
	        }
	    }
	    if(_me.grid[# 2,11].type = slot3){
	        if(_me.grid[# 2,11].type == _me.grid[#2,10].type){
	            slot3 = choose("A","B","C","D","E");
	        }
	    }
	    if(_me.grid[# 3,11].type = slot4){
	        if(_me.grid[# 3,11].type == _me.grid[#3,10].type){
	            slot4 = choose("A","B","C","D","E");
	        }
	    }
	    if(_me.grid[# 4,11].type = slot5){
	        if(_me.grid[# 4,11].type == _me.grid[#4,10].type){
	            slot5 = choose("A","B","C","D","E");
	        }
	    }
	    if(_me.grid[# 5,11].type = slot6){
	        if(_me.grid[# 5,11].type == _me.grid[#5,10].type){
	            slot6 = choose("A","B","C","D","E");
	        }
	    }
        
	    //Avoid 3x horizontal..
	    if(slot1 == slot2 && slot2 == slot3){
	        slot2 = choose("A","B","C","D","E");
	    }
	    if(slot2 == slot3 && slot3 == slot4){
	        slot3 = choose("A","B","C","D","E");
	    }
	    if(slot3 == slot4 && slot4 == slot5){
	        slot4 = choose("A","B","C","D","E");
	    }
	    if(slot4 == slot5 && slot5 == slot6){
	        slot5 = choose("A","B","C","D","E");
	    }
	}
	//Should all be unique now..

	var newTile = instance_create(0,0,obj_tile);
	newTile.type = slot1;
	newTile.xSlot = 0;
	newTile.grid = id;
	newTile.player = Player;
	ds_grid_set(grid,0,12,newTile);

	var newTile = instance_create(0,0,obj_tile);
	newTile.type = slot2;
	newTile.xSlot = 1;
	newTile.grid = id;
	newTile.player = Player;
	ds_grid_set(grid,1,12,newTile);

	var newTile = instance_create(0,0,obj_tile);
	newTile.type = slot3;
	newTile.xSlot = 2;
	newTile.grid = id;
	newTile.player = Player;
	ds_grid_set(grid,2,12,newTile);

	var newTile = instance_create(0,0,obj_tile);
	newTile.type = slot4;
	newTile.xSlot = 3;
	newTile.grid = id;
	newTile.player = Player;
	ds_grid_set(grid,3,12,newTile);

	var newTile = instance_create(0,0,obj_tile);
	newTile.type = slot5;
	newTile.xSlot = 4;
	newTile.grid = id;
	newTile.player = Player;
	ds_grid_set(grid,4,12,newTile);

	var newTile = instance_create(0,0,obj_tile);
	newTile.type = slot6;
	newTile.xSlot = 5;
	newTile.grid = id;
	newTile.player = Player;
	ds_grid_set(grid,5,12,newTile);


	//Everything added to grid..

	//Go through the bottom grid and set all the shit.
	for(var i = 0; i < 6; i++){
	    grid[# i, 12].x = x + xOffset + (32 * i);
	    grid[# i, 12].y = bottomRowY;
	}




}
