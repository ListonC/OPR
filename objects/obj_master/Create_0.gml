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
PushSpeed = 1;

playerScore = 0;
playerCombo = 1;

Audio = obj_audio;

Player = 1;
Up = 0;
Down = 0;
Left = 0;
Right = 0;

Push = 0;
Swap = 0;

//Fill it..
for(var i = 0; i < 6; i++){
    for(var j = 0; j < 12; j++){
        var b_tile = instance_create(0,0,obj_tile);
        b_tile.xSlot = i;
        b_tile.ySlot = j;
        grid[# i,j] = b_tile;
        b_tile.x = x + xOffset + (i * 32);
        b_tile.y = y + (j * 32) + xOffset + 16;
        b_tile.type = "0";
		b_tile.grid = id;
    }
}

function UpdateControl(_player) {
	
	switch (_player) {
		case 1:
			Up = keyboard_check_pressed(vk_up);
			Down = keyboard_check_pressed(vk_down);
			Left = keyboard_check_pressed(vk_left);
			Right = keyboard_check_pressed(vk_right);
			
			Push = keyboard_check(ord("P"));
			Swap = keyboard_check_pressed(ord("O"));
		break;
		
		case 2:
			Up = keyboard_check_pressed(ord("W"));
			Down = keyboard_check_pressed(ord("S"));
			Left = keyboard_check_pressed(ord("A"));
			Right = keyboard_check_pressed(ord("D"));
			
			Push = keyboard_check(ord("R"));
			Swap = keyboard_check_pressed(ord("T"));
		break;
	}
}

function PushUp() {
	moveTimer = 0;
	//PushSpeed = 2;
}