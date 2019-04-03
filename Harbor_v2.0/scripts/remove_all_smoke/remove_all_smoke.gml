/// @param BoardInst

var board = argument0;

// Exit
if (!instance_exists(board))
	return;
if (board.smokeInst == noone)
	return;
if (!ds_exists(board.smokeInst, ds_type_list))
	return;

// Destroy if list is empty
if (ds_list_size(board.smokeInst) == 0) {
	ds_list_destroy(board.smokeInst);
	board.smokeInst = noone;
	return;
}

// Destroy All Floods
for (var i = 0; i < ds_list_size(board.smokeInst); i++) {
	with (ds_list_find_value(board.smokeInst, i))
		state = SMOKE_STATE.FADE_OUT;
}

ds_list_destroy(board.smokeInst);
board.smokeInst = noone;