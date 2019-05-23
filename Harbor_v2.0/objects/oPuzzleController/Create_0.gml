enum PUZZLE_ROOM_STATE { 
	LOAD_DATA, PRE_COMBAT, COMBAT
}

global.squaresSurface = surface_create(room_width, room_height);
state		= PUZZLE_ROOM_STATE.LOAD_DATA;
shakeSize	= 0;
shakeScreen = false;

#region Board

boardSpace			= 7;
boardScale			= 1;
boardXOff			= 19;
boardYOff			= 10;
board1W				= 14;
board1H				= 8;
board2W				= board1W;
board2H				= board1H;

#endregion

#region Players 

player1Inst			= noone;
board1Inst			= noone;
player1Name			= noone;
player1SpellBook	= noone;

player2Inst			= noone;
board2Inst			= noone;
player2Name			= noone;
player2SpellBook	= noone;

#endregion

#region Environment

ground1	= noone;
ground2	= noone;
groundX = boardXOff + ((board1W / 2) * boardSpace);
groundY = room_height - 10;

#endregion

