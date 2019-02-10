/// @param Board

if (argument_count == 1) 
	var b = argument[0];
else
	var b = id;

if (!instance_exists(b))
	return;

b.cursor = b.player.spellBook[b.player.spellBookIndex];
b.cursorW = global.spellData[b.cursor, SP.WIDTH];
b.cursorH = global.spellData[b.cursor, SP.HEIGHT];
b.cursorF = 1;
b.cursorR = 0;
b.config = global.spellData[b.cursor, SP.CONFIG];
b.cursorI = floor(b.gridW / 2) - floor(b.cursorW / 2);
b.cursorJ = floor(b.gridH / 2) - floor(b.cursorH / 2);
