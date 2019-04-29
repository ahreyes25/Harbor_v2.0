/// @param BoardInst
/// @param Timer
/// @param xIndex*
/// @param yIndex*
/// @param ww*
/// @param hh*

var _boardInst	= argument[0];
var _timer		= argument[1];

// Exit
if (!instance_exists(_boardInst)) return;
if (_boardInst.grid == noone) return;
if (!ds_exists(_boardInst.grid, ds_type_grid)) return;
	
// Create smoke inst list
if (!ds_exists(_boardInst.smokeInst, ds_type_list))
	_boardInst.smokeInst = ds_list_create();
else {
	if (ds_list_size(_boardInst.smokeInst) == 0) {
		ds_list_destroy(_boardInst.smokeInst);
		_boardInst.smokeInst = ds_list_create();
	}
}
	
#region Create Smoke Precise To Spell Cursor
	
	if (argument_count <= 2) {
	
		// Check Instances Exists
		if (!instance_exists(_boardInst.player)) return;
		if (!instance_exists(_boardInst.player.enemy)) return;
		if (!instance_exists(_boardInst.player.enemy.boardInst)) return;
	
		for (var i = 0; i < array_length_1d(_boardInst.player.enemy.boardInst.config); i++) {
	
			var c = _boardInst.player.enemy.boardInst.config[i];

			// Create Smoke Instance
			var _smokeInst = instance_create_layer(
						board_to_world(_boardInst, _boardInst.player.enemy.boardInst.cursorI + c[0], "x"),
						board_to_world(_boardInst, _boardInst.player.enemy.boardInst.cursorJ + c[1], "y"),
						"Boards", oSmoke
					);
		
			// Set Smoke Props
			_smokeInst.depth	 = _boardInst.depth - 1;
			_smokeInst.timer	 = _timer;
			_smokeInst.state	 = SMOKE_STATE.FADE_IN;
			_smokeInst.boardInst = _boardInst;
			_smokeInst.ii		 = _boardInst.player.enemy.boardInst.cursorI + c[0];
			_smokeInst.jj		 = _boardInst.player.enemy.boardInst.cursorJ + c[1];
	
			ds_list_add(_boardInst.smokeInst, _smokeInst);
		}	
	}
	
#endregion

#region Create Smoke With Given Width & Height
else {
	var xx	= argument[2];
	var yy	= argument[3];
	var ww	= argument[4];
	var hh	= argument[5];

	for (var i = 0; i < ww; i++) {
		for (var j = 0; j < hh; j++) {
			
			// Create Smoke Instance
			var _smokeInst = instance_create_layer(
						board_to_world(_boardInst, xx + i, "x"),
						board_to_world(_boardInst, yy + j, "y"),
						"Boards", oSmoke
					);
		
			// Set Smoke Props
			_smokeInst.depth = _boardInst.depth - 1;
			_smokeInst.timer = _timer;
			_smokeInst.state = SMOKE_STATE.FADE_IN;
			_smokeInst.boardInst = _boardInst;
			_smokeInst.ii = xx + i;
			_smokeInst.jj = yy + j;
	
			ds_list_add(_boardInst.smokeInst, _smokeInst);	
		}
	}
}
#endregion