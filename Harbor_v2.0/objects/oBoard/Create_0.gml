enum BOARD_STATE { WAIT, EASE_IN, NAVIGATE, CHARGE, CAST }

// Grid
grid	= noone;
gridW	= noone;
gridH	= noone;
space	= noone;
scale	= noone;
yRest	= noone;

// Cursor
cursor		= noone;
cursorW		= 1;
cursorH		= 1;
cursorI		= 0;
cursorJ		= 0;

// Other
pid		= noone;
player	= noone;
state	= BOARD_STATE.WAIT;