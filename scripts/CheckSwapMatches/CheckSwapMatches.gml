/// @description CheckSwapMatches(TileToCheck)
/// @param TileToCheck
function CheckSwapMatches(argument0) {

	var homeTile = argument0;
	//for now, don't match on crap tiles
	if(homeTile.type = "0"){
	    exit;
	}
	
	var master = homeTile.grid;

	var matchList = ds_list_create();
	//Check leftwards if possible

	if(homeTile.xSlot > 0){
	    //If tile directly to the left...
	    if(master.grid[# homeTile.xSlot-1, homeTile.ySlot].type == homeTile.type){
	        //If tile to the left of that one...
	        if(homeTile.xSlot > 1 && master.grid[# homeTile.xSlot-2, homeTile.ySlot].type == homeTile.type){
	            //matchMade!
	            //Check another left... 
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot-1, homeTile.ySlot]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot-2, homeTile.ySlot]);
	        }else{
	            if(homeTile.xSlot < 5 && master.grid[# homeTile.xSlot+1, homeTile.ySlot].type == homeTile.type){
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot-1, homeTile.ySlot]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot+1, homeTile.ySlot]);
	            }
	        }    
	    }
	}

	if(homeTile.xSlot < 5){
	    //If tile directly to the left...
	    if(master.grid[# homeTile.xSlot+1, homeTile.ySlot].type == homeTile.type){
	        //If tile to the left of that one...
	        if(homeTile.xSlot < 4 && master.grid[# homeTile.xSlot+2, homeTile.ySlot].type == homeTile.type){
	            //matchMade!
	            //Check another left... 
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot+1, homeTile.ySlot]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot+2, homeTile.ySlot]);
	        }else{
	            if(homeTile.xSlot > 0 && master.grid[# homeTile.xSlot-1, homeTile.ySlot].type == homeTile.type){
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot+1, homeTile.ySlot]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot-1, homeTile.ySlot]);
	            }
	        }    
	    }
	}

	if(homeTile.ySlot > 2){
	    //If tile directly to the left...
	    if(master.grid[# homeTile.xSlot, homeTile.ySlot-1].type == homeTile.type){
	        //If tile to the left of that one...
	        if(homeTile.ySlot > 1 && master.grid[# homeTile.xSlot, homeTile.ySlot-2].type == homeTile.type){
	            //matchMade!
	            //Check another left... 
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot-1]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot-2]);
	        }else{
	            if(homeTile.ySlot < 11 && master.grid[# homeTile.xSlot, homeTile.ySlot+1].type == homeTile.type){
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot-1]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot+1]);
	            }
	        }    
	    }
	}


	//bottomwards..
	if(homeTile.ySlot < 12){
	    //If tile directly to the left...
	    if(master.grid[# homeTile.xSlot, homeTile.ySlot+1].type == homeTile.type){
	        //If tile to the left of that one...
	        if(homeTile.ySlot < 11 && master.grid[# homeTile.xSlot, homeTile.ySlot+2].type == homeTile.type){
	            //matchMade!
	            //Check another left... 
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot+1]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot+2]);
	        }else{
	            if(homeTile.ySlot > 1 && master.grid[# homeTile.xSlot, homeTile.ySlot-1].type == homeTile.type){
	                ds_list_add(matchList,homeTile);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot-1]);
	                ds_list_add(matchList,master.grid[# homeTile.xSlot, homeTile.ySlot+1]);
	            }
	        }    
	    }
	}

	if(ds_list_size(matchList) > 0){
		//ds_list_add(Audio.playlist, SFX.SOLVE);
	    master.moving = false;
	    for(var p = 0; p < ds_list_size(matchList); p++){
	        matchList[| p].matched = true;
	        AddFallColumn(matchList[| p].xSlot, master);
	    }
	
	}

	ds_list_destroy(matchList);



}
