/// @description AddFallColumn(column)
/// @param column
function AddFallColumn(argument0) {

	var col = argument0;

	//We check if the column is aleady in the list..

	if(ds_list_find_index(obj_master.fallList,col) == -1){
	    ds_list_add(obj_master.fallList,col);
	}



}
