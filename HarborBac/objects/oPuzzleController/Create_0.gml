// Destroy All Old Turn Controllers
if (instance_exists(oTurnController))
	with (oTurnController)
		instance_destroy();
		
// Create New Turn Controller
turnController = instance_create_layer(0, 0, "Controllers", oTurnController);

// Setup Room

// Create Players
player1 = instance_create_layer(room_width / 2, room_height / 2, "Instances", oCombatPlayer);

// Add Players To Turn Controller
if (ds_exists(turnController.leftTeam, ds_type_list))
	ds_list_add(turnController.leftTeam, player1);