/// @param BoardInst

var _boardInst = argument0;

// Exit
if (!instance_exists(_boardInst)) return;
if (_boardInst.grid == noone) return;
if (!ds_exists(_boardInst.grid, ds_type_grid)) return;
	
var _count = 0;
for (var i = 0; i < _boardInst.gridW; i++) {
	for (var j = 0; j < _boardInst.gridH; j++) {
		if (ds_grid_get(_boardInst.grid, i, j) == 0)
			_count++;
	}
}

return _count - array_length_1d(_boardInst.config);