/// @description Selector end step, to set stuff...


x = curTile.x;
y = curTile.y; 

My_X = curTile.xSlot;
My_Y = curTile.ySlot;

with (obj_tile) {
	if (player == other.myPlayer) {
		isHot = false;
	}
}

curTile.isHot = true;
var _right = Grid.grid[#curTile.xSlot +1, curTile.ySlot];
_right.isHot = true;

visible = false;
if (curTile.type == "0" and _right.type == "0") {
	visible = true;
	image_index = 0;
	exit;
}
if (_right.type != "0") 
{
	visible = true;
	image_index = 2;
}

if (curTile.type != "0")
{
	if (_right.type == "0")
	{
		visible = true;
		image_index = 1;
	}
}

if (curTile.type != "0" and _right.type != "0") {
	visible = false;
}