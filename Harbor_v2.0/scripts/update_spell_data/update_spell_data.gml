/// @param Board

if (argument_count == 1) 
	var b = argument[0];
else
	var b = id;

b.cursorW = global.spellData[b.cursor, SP.WIDTH];
b.cursorH = global.spellData[b.cursor, SP.HEIGHT];
b.cursorF = 1;
b.cursorR = 0;
b.config = global.spellData[b.cursor, SP.CONFIG];