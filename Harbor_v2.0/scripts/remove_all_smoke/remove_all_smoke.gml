/// @param BoardInst

var _boardInst = argument0;

// Exit
if (!instance_exists(_boardInst)) return;
if (_boardInst.smokeInst == noone) return;
if (!ds_exists(_boardInst.smokeInst, ds_type_list)) return;

// Destroy if list is empty
if (ds_list_size(_boardInst.smokeInst) == 0) {
	ds_list_destroy(_boardInst.smokeInst);
	_boardInst.smokeInst = noone;
	return;
}

// Destroy All Floods
for (var i = 0; i < ds_list_size(_boardInst.smokeInst); i++) {
	with (ds_list_find_value(_boardInst.smokeInst, i))
		state = SMOKE_STATE.FADE_OUT;
}

ds_list_destroy(_boardInst.smokeInst);
_boardInst.smokeInst = noone;