/// @description Step event for master...

if(grid[# 0, 12] == 0){
    AddRowUnique(id);
}
if(!instance_exists(MySelector)){
    MySelector = instance_create(x,y,obj_selector);
	MySelector.Grid = id;
    MySelector.curTile = MySelector.Grid.grid[# 0,12];
	MySelector.myPlayer = Player;
}


if(moving && ds_list_empty(fallList) && ds_list_empty(needChecks)){
    if(moveTimer == 0){
        with(obj_tile){
			if (grid == other.id) {
	            y -= other.PushSpeed + global.Difficulty;
				playerCombo = 1;
			}
        }
        yOffset -= PushSpeed + global.Difficulty;
        if(yOffset <= -32){
            UpTilesInGrid();
            yOffset = 0;
        }
    moveTimer = 4;
    }else{
        moveTimer -=1;
    }
}else{
    //This is not moving..
    
    //Check to see if we're waiting for a match to clear...
    var waitForMatch = false;
    with(obj_tile){
        if(matched){
            waitForMatch = true;
            break;
        }
    }
    //IF we're no longer waiting for a match to clear
    if(!waitForMatch){
        //We're not moving, and we're not waiting for a match
        
        //If there is an altered column we sort..
        
        if(!ds_list_empty(fallList)){
            FallColumn(fallList[| 0]);
            ds_list_delete(fallList,0);
        }else{
            //All fallen, so we re-check all the need check tiles?
            if(!ds_list_empty(needChecks)){
                playerCombo += 1;

//                show_message("Checking " + string(ds_list_size(needChecks)) + " Changed tiles for matches");
                for(var k = 0; k < ds_list_size(needChecks);k++){
                    CheckSwapMatches(needChecks[| k]);
                }
                ds_list_clear(needChecks);
            }else{
                //THEN we can move...
                playerCombo = 1;
                moving = true;
            }
        }        
    }else{
        exit;
    }
}

if (playerScore != drawscore)
{
	isScoring = true;
	drawscore += 1;
}
