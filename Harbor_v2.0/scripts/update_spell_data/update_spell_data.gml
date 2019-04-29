/// @param Board

if (argument_count == 1) 
	var _boardInst = argument[0];
else
	var _boardInst = id;

if (!instance_exists(_boardInst)) return;
if (_boardInst.player == noone) return;
if (!instance_exists(_boardInst.player)) return;

_boardInst.cursor = _boardInst.player.spellBook[_boardInst.player.spellBookIndex];
_boardInst.cursorW = global.spellData[_boardInst.cursor, SP.WIDTH];
_boardInst.cursorH = global.spellData[_boardInst.cursor, SP.HEIGHT];
_boardInst.cursorF = 1;
_boardInst.cursorR = 0;
_boardInst.config = global.spellData[_boardInst.cursor, SP.CONFIG];
_boardInst.cursorI = floor(_boardInst.gridW / 2) - floor(_boardInst.cursorW / 2);
_boardInst.cursorJ = floor(_boardInst.gridH / 2) - floor(_boardInst.cursorH / 2);