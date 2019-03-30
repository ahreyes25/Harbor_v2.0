#region Puzzle Room State
switch(state) {
	
	#region Load Data
	case PUZZLE_ROOM_STATE.LOAD_DATA:

		#region Setup Environment
		ground1 = instance_create_layer(groundX, groundY, "Instances", oGround);			
		ground2 = instance_create_layer(room_width - groundX, groundY, "Instances", oGround);
		instance_create_layer((ground1.x + ground2.x) / 2, ground1.y, "BackInstances", oCloud);
		#endregion

		#region Spawn Player
		player1Inst = instance_create_layer(ground1.x, ground1.y - 1, "Instances", oCombatCharacter);			
		player1Inst.spellBook = master_book();
		player1Inst.pid = PLAYER.P1;
		player1Inst.skin = global.playerData[player1Inst.pid, PP.SKIN];
		player1Inst.ground = ground1;
		ground1.playerInst = player1Inst;
		
		player2Inst = instance_create_layer(ground2.x, ground2.y - 1, "Instances", oCombatCharacter);
		player2Inst.spellBook = master_book();
		player2Inst.pid = PLAYER.P2;
		player2Inst.skin = global.playerData[player2Inst.pid, PP.SKIN];
		player2Inst.ground = ground2;
		ground2.playerInst = player2Inst;
		
		player1Inst.enemy = player2Inst;
		player2Inst.enemy = player1Inst;
		#endregion
		
		#region Setup Board
		var b1X = boardXOff;
		var b2X = (room_width - b1X) - (board1W * boardSpace);
		var bY  = boardYOff;
		
		var board1 = ds_grid_create(board1W, board1H);
		randomize_grid(board1);
		board1Inst = instance_create_layer(b1X, -bY - (board1H * boardSpace), "Controllers", oBoard);
		board1Inst.grid = board1;
		board1Inst.gridW = board1W;
		board1Inst.gridH = board1H;
		board1Inst.space = boardSpace;
		board1Inst.scale = boardScale;
		board1Inst.yRest = bY;
		board1Inst.pid = PLAYER.P1;
		board1Inst.player = player1Inst;
		player1Inst.boardInst = board1Inst;
		board1Inst.cursor = player1Inst.spellBook[player1Inst.spellBookIndex];
		board1Inst.ground = ground1;
		ground1.boardInst = board1Inst;
		update_spell_data(board1Inst);
		
		var board2 = ds_grid_create(board2W, board2H);
		randomize_grid(board2);		
		board2Inst = instance_create_layer(b2X, -bY - (board1H * boardSpace), "Controllers", oBoard);		
		board2Inst.grid = board2;
		board2Inst.gridW = board2W;
		board2Inst.gridH = board2H;
		board2Inst.space = boardSpace;
		board2Inst.scale = boardScale;
		board2Inst.yRest = bY;
		board2Inst.pid = PLAYER.P2;
		board2Inst.player = player2Inst;
		player2Inst.boardInst = board2Inst;
		board2Inst.cursor = player2Inst.spellBook[player2Inst.spellBookIndex];
		board2Inst.ground = ground2;
		ground2.boardInst = board2Inst;
		update_spell_data(board2Inst);
		#endregion
		
		state = PUZZLE_ROOM_STATE.PRE_COMBAT;
		
	break;
	#endregion
	
	#region Pre Combat
	case PUZZLE_ROOM_STATE.PRE_COMBAT:
	
		#region Walk Players In
		#endregion
		
		#region Drop Boards Down
			board1Inst.state = BOARD_STATE.EASE_IN;
			board2Inst.state = BOARD_STATE.EASE_IN;
		#endregion
		
		state = PUZZLE_ROOM_STATE.COMBAT;
		
	break;
	#endregion
		
	#region Combat
	case PUZZLE_ROOM_STATE.COMBAT:
		break;
	#endregion
}
#endregion

#region Screen Shake
if (shakeScreen) {
	view_xport[0] = random_range(-shakeSize, shakeSize); //sets the view to a random x position
	view_yport[0] = random_range(-shakeSize, shakeSize); //sets the view to a random y position
}
// Reset screen
else {
	if view_xport[0] < 0
		view_xport[0] = 0;
		
	if view_xport[0] > 0
		view_xport[0] = 0;
		
	if view_yport[0] < 0
		view_yport[0] = 0;
		
	if view_yport[0] > 0
		view_yport[0] = 0;
}	
#endregion

if (instance_exists(oBoard))
	depth = oBoard.depth + 1;