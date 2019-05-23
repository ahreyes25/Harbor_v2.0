#region Load rm_deckBuilder
if (room == rm_deckBuilder) {
	// Create Deck Builder Controller	
	if (deckBuilder == noone) {
		if (!instance_exists(deckBuilder)) {
			
			deckBuilder = instance_create_layer(0, 0, "Controllers", oDeckBuilder);	
			
			if (player1Collection != noone && player2Collection != noone) {
				deckBuilder.player1Collection = player1Collection;
				deckBuilder.player2Collection = player2Collection;
			}
			else {
				show_message("Entered rm_deckBuilder without a collection loaded.");	
			}
		}
		else {
			with(oDeckBuilder)
				instance_destroy();
			deckBuilder = noone;
		}
	}
}
#endregion

#region Load rm_puzzle
if (room == rm_puzzle) {
	// Create Puzzle Controller
	if (puzzleController == noone) {
		if (!instance_exists(puzzleController)) {
			
			puzzleController = instance_create_layer(0, 0, "Controllers", oPuzzleController);	
			
			// Store oGame books in oPuzzleController for next room 
			if (player1Book != noone && player2Book != noone) {
				puzzleController.player1Book = player1Book;
				puzzleController.player2Book = player2Book;
			}
			else {
				show_message("Entered rm_puzzle without a spellBook loaded.");
			}
		}
		else {
			with(oPuzzleController)
				instance_destroy();
			puzzleController = noone;
		}
	}
}
#endregion

if (room == rm_puzzle)
	if (!instance_exists(oPuzzleController))
		instance_create_layer(0, 0, "Controllers", oPuzzleController);