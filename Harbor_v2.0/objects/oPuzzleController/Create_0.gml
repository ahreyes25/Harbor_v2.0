enum PUZZLE_ROOM_STATE { LOAD_DATA, PRE_COMBAT, COMBAT }

state	= PUZZLE_ROOM_STATE.LOAD_DATA;

boardSpace			= 7;
boardScale			= 1;
boardXOff			= 20;
boardYOff			= 10;

board1W				= 12; //irandom_range(8, 14);
board1H				= 8; //irandom_range(4, 12);
board2W				= board1W;
board2H				= board1H;

player1Inst			= noone;
board1Inst			= noone;
player1Collection	= noone;
player1Name			= noone;

player2Inst			= noone;
board2Inst			= noone;
player2Collection	= noone;
player2Name			= noone;

shakeSize	= 0;
shakeScreen = false;

groundX = boardXOff + ((board1W / 2) * boardSpace);
groundY = (room_height - (room_height / 8)) + 10;

// Surfaces
global.puzzleSurface = surface_create(room_width, room_height);