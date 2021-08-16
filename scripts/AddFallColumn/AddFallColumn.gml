/// @description AddFallColumn(column)
/// @param column
function AddFallColumn(argument0, argument1) {

	var col = argument0;
	var _master = argument1;
	//We check if the column is aleady in the list..

	if(ds_list_find_index(_master.fallList,col) == -1){
	    ds_list_add(_master.fallList,col);
	}



}
