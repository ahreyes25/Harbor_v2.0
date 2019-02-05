game_data();
spell_data();
player_data();

// Load Player Data If It Exists
// ...

// Else, Create New Data
global.profile = instance_create_layer(0, 0, "Controllers", oProfile);
global.profile.profileName = "Adelie";
global.profile.spellCollection = ds_map_create();
global.playerData[PLAYER.P1, PP.SPELL_COLLECTION] = global.profile.spellCollection;

room_goto_next();
instance_destroy();