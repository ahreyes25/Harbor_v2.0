if (ds_exists(player1Book, ds_type_list))
	ds_list_destroy(player1Book);
if (ds_exists(player2Book, ds_type_list))
	ds_list_destroy(player2Book);
surface_free(invisibleFrame);