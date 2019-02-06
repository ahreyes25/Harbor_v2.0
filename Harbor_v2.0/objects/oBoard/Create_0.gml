enum BOARD_STATE { WAIT, EASE_IN, NAVIGATE, CHARGE, CAST }

grid	= noone;
gridW	= noone;
gridH	= noone;
space	= noone;
scale	= noone;
yRest	= noone;

pid		= noone;
player	= noone;
state	= BOARD_STATE.WAIT;

cursor	= noone;
cursorW = 1;
cursorH = 1;
cursorI = 0;
cursorJ = 0;