/// @description Master object.
randomize();
grid = ds_grid_create(6,13);
Audio = obj_audio;

xOffset = 18;
yOffset = 0;
moveTimer = 2;
moving = true;
bottomRowY = bbox_bottom;
leftSide = bbox_right;
fallList = ds_list_create();
needChecks = ds_list_create();

playerScore = 0;
playerCombo = 1;


//Fill it..
for(var i = 0; i < 6; i++){
    for(var j = 0; j < 12; j++){
        var b_tile = instance_create(0,0,obj_tile);
        b_tile.xSlot = i;
        b_tile.ySlot = j;
        grid[# i,j] = b_tile;
        b_tile.x = x + xOffset + (i * 32);
        b_tile.y = y + (j * 32) + xOffset;
        b_tile.type = "0";
    }
}
