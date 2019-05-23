/// @param spell_book
/// @param card

var _spellBook	= argument0;
var _spell		= argument1; // ENUM

if (!ds_exists(_spellBook, ds_type_list)) return;
if (!is_real(_spell)) return;

var _spellIndex = ds_list_find_index(_spellBook, _spell);

// Didnt Find Spell In Book
if (_spellIndex == -4) return;

// Remove Spell
ds_list_delete(_spellBook, _spellIndex);

show_debug_message("Succesfully removed: " + string(_spell) + " spell from spellBook: " + string(_spellBook) + ".");