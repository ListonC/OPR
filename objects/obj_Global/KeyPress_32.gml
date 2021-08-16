/// @description Spawn 2p

if (hasSpawned)
	exit;
	
var _new = instance_create_layer(32, 288, "Instances", obj_master);
_new.Player = 2;

obj_PtwoControl.isActive = true;

hasSpawned = true;