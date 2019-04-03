/// @param BoardInst

var board = argument0;

// Exit
if (!instance_exists(board))
	return;
if (board.floodInst == noone)
	return;
if (!ds_exists(board.floodInst, ds_type_list))
	return;

// Destroy if list is empty
if (ds_list_size(board.floodInst) == 0) {
	ds_list_destroy(board.floodInst);
	board.floodInst = noone;
	return;
}

// Destroy All Floods
for (var i = 0; i < ds_list_size(board.floodInst); i++) {
	with (ds_list_find_value(board.floodInst, i))
		state = FLOOD_STATE.DRAIN;
}

ds_list_destroy(board.floodInst);
board.floodInst = noone;