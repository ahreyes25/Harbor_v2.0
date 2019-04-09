///@param combatCharacter
///@param amount
///@param showText

var cc = argument0;
var am = argument1;
var st = argument2;

if (!instance_exists(cc))
	return;

cc.life += am;
cc.life = clamp(cc.life, 0, cc.startingLife);

if (st)
	float_text(cc.x, cc.y, am, 0);