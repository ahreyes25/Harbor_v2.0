/// @param BoardInst
/// @param FloodHeight

// *** FLOOD CALLED IN oSPELL DESTROY EVENT *** //

var _boardInst = argument0;
var _floodHeight = argument1;

// Exit
if (!instance_exists(_boardInst)) return;	
if (_boardInst.grid == noone) return;
if (!ds_exists(_boardInst.grid, ds_type_grid)) return;

// Populate, Set Flood Timer
if (_boardInst.alarm[6] < 0) {
	
	_boardInst.floodHeight += _floodHeight;
	_boardInst.floodHeight = clamp(_boardInst.floodHeight, 0, _boardInst.gridH);
	_boardInst.alarm[6] = _boardInst.floodTimer;
	
	// Create list of flood instances
	if (!ds_exists(_boardInst.floodInst, ds_type_list))
		_boardInst.floodInst = ds_list_create();
	else {
		if (ds_list_size(_boardInst.floodInst) == 0) {
			ds_list_destroy(_boardInst.floodInst);
			_boardInst.floodInst = ds_list_create();
		}
	}		
		
	// Create Flood Instances
	if (ds_list_size(_boardInst.floodInst) == 0) {
		for (var i = 0; i < _boardInst.gridW; i++) {
			var _floodInst = instance_create_layer(_boardInst.x + (_boardInst.space * i), _boardInst.y + (_boardInst.gridH * _boardInst.space) - 1, "Boards", oFlood);
			_floodInst.depth = _boardInst.depth - 1;
			_floodInst.target = _floodHeight;
			_floodInst.boardInst = _boardInst;
			ds_list_add(_boardInst.floodInst, _floodInst);
		}
	}
	// Update Old Flood Instances
	else {
		for (var i = 0; i < ds_list_size(_boardInst.floodInst); i++) {
			var _floodInst = ds_list_find_value(_boardInst.floodInst, i);
			_floodInst.target = clamp(_boardInst.floodHeight, 0, _boardInst.gridH);
			_floodInst.state = FLOOD_STATE.EASE_IN;
		}
	}
}