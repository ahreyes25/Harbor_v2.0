enum BOARD_STATE { WAIT, EASE_IN, NAVIGATE, CAST }

// Grid
grid	= noone;
gridW	= noone;
gridH	= noone;
space	= noone;
scale	= noone;
yRest	= noone;
pGrid	= noone;

// Cursor
cursor		= noone;
cursorW		= 1;	// width
cursorH		= 1;	// height
cursorI		= 0;	// i index
cursorJ		= 0;	// j index
cursorF		= 1;	// flip
cursorR		= 0;	// rotation
config		= [];

// Other
pid				= noone;
player			= noone;
state			= BOARD_STATE.WAIT;
waveCounter		= 0;
chainCounter	= 0;