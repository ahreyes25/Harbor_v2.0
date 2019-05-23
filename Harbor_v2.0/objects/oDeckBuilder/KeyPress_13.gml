/// @description DEBUG -- Test Correct Exit

if (!instance_exists(oGame)) return;
if (!ds_exists(player1Book, ds_type_list)) return;
if (!ds_exists(player2Book, ds_type_list)) return;
if (ds_list_size(player1Book) <= 0 || ds_list_size(player1Book) > spellBookLimit) return;
if (ds_list_size(player2Book) <= 0 || ds_list_size(player2Book) > spellBookLimit) return;

var player1BookArray = [];
var player2BookArray = [];

// Convert List to Array
for (var i = 0; i < ds_list_size(player1Book); i++) {
	player1BookArray[i] = ds_list_find_value(player1Book, i);
}
for (var i = 0; i < ds_list_size(player2Book); i++) {
	player2BookArray[i] = ds_list_find_value(player2Book, i);
}

// Destroy Lists
ds_list_destroy(player1Book);
ds_list_destroy(player2Book);

// Transfer Data
oGame.player1Book = player1BookArray;
oGame.player2Book = player2BookArray;

// Exit
room_goto_next();
instance_destroy();