if (instance_exists(oPuzzleController)) {
	if (instance_exists(oPuzzleController.turnController)) {
		if (oPuzzleController.turnController.currentPlayerTurn.id == id) {
			show_message("ME");	
		}
	}
}

show_message(oPuzzleController.turnController.currentPlayerTurn.id);
show_message(id);
