///@param combatCharacter
///@param amount
///@param showText?

var _combatCharacter = argument0;
var _amount			 = argument1;
var _showText		 = argument2;

if (!instance_exists(_combatCharacter)) return;

_combatCharacter.life += _amount;
_combatCharacter.life  = clamp(_combatCharacter.life, 0, _combatCharacter.startingLife);

if (_showText) {
	float_text(_combatCharacter.x, _combatCharacter.y, _amount, 0);
}