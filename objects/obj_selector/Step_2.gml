/// @description Selector end step, to set stuff...


x = curTile.x;
y = curTile.y; 

My_X = curTile.xSlot;
My_Y = curTile.ySlot;

with (obj_tile) {isHot = false;}

curTile.isHot = true;
var _right = obj_master.grid[#curTile.xSlot +1, curTile.ySlot];
_right.isHot = true;

visible = false;
if (curTile.type == "0") {
	if (_right.type == "0") {
		visible = true;	
	}
}