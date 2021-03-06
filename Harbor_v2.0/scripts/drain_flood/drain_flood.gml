/// @param Amount

floodHeight -= argument0;
	
if (floodHeight > 0) {
	for (var i = 0; i < ds_list_size(floodInst); i++) {
		var _floodInst = ds_list_find_value(floodInst, i);
		_floodInst.target -= argument0;	
	}	
}		
else {
	// Stop Draining
	floodHeight = 0;
	
	// Destroy Flood Instances
	if (ds_exists(floodInst, ds_type_list))
		for (var i = 0; i < ds_list_size(floodInst); i++) {
			var _floodInst = ds_list_find_value(floodInst, i);
			_floodInst.state = FLOOD_STATE.DRAIN;
		}
	
	// Destroy Flood Instances List
	if (ds_exists(floodInst, ds_type_list))
		ds_list_destroy(floodInst);
	floodInst = noone;
}