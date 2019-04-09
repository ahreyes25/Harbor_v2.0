if (ds_exists(lastingEffects, ds_type_list)) {
	
	// Destroy Effect Instances
	for (var i = 0; i < ds_list_size(lastingEffects); i++) {
		with (ds_list_find_value(lastingEffects, i))
			instance_destroy();
	}
	
	// Destroy List
	ds_list_destroy(lastingEffects);
}