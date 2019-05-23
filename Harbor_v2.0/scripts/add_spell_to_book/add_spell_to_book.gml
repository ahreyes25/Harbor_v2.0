/// @param spell_book
/// @param card

var _spellBook	= argument0;
var _spell		= argument1; // ENUM

if (!ds_exists(_spellBook, ds_type_list)) return;
if (!is_real(_spell)) return;

ds_list_add(_spellBook, _spell);

show_debug_message("Succesfully added: " + string(_spell) + " spell to spellBook: " + string(_spellBook) + ".");