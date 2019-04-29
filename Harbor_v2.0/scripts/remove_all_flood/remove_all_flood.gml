/// @param BoardInst

var _boardInst = argument0;

// Exit
if (!instance_exists(_boardInst)) return;
if (_boardInst.floodInst == noone) return;
if (!ds_exists(_boardInst.floodInst, ds_type_list)) return;

// Destroy if list is empty
if (ds_list_size(_boardInst.floodInst) == 0) {
	ds_list_destroy(_boardInst.floodInst);
	_boardInst.floodInst = noone;
	return;
}

// Destroy All Floods
for (var i = 0; i < ds_list_size(_boardInst.floodInst); i++) {
	with (ds_list_find_value(_boardInst.floodInst, i))
		state = FLOOD_STATE.DRAIN;
}

ds_list_destroy(_boardInst.floodInst);
_boardInst.floodInst = noone;