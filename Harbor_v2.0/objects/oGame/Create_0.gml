game_data();
spell_data();
player_data();

deckBuilder			= noone;
puzzleController	= noone;
player1Collection	= master_collection(); // change to maps? allow multiple copies of a spell?
player2Collection	= master_collection();
player1Book			= noone;
player2Book			= noone;

room_goto_next();