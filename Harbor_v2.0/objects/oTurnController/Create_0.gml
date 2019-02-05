// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Create Team Manager
teams			= ds_list_create();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Create Teams
leftTeam		= ds_list_create();
rightTeam		= ds_list_create();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Add Teams to Team Manager, the order that these teams get added are
// important as they will define the startng order for when you iterated
// to next and previous teams. You can randomize this with ds_list_shuffle(teams);
ds_list_add(teams, leftTeam);
ds_list_add(teams, rightTeam);


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Tracking Turns
currentTeamTurn			= noone;
nextTeamTurn			= noone;
previousTeamTurn		= noone;
currentTeamIndex		= 0;

currentPlayerTurn		= noone;
nextPlayerTurn			= noone;
previousPlayerTurn		= noone;
currentTeamPlayerIndex	= 0;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set starting team to the first team in the list
currentTeamTurn = ds_list_find_value(teams, currentTeamIndex);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Starting Player
currentPlayerTurn = ds_list_find_value(currentTeamTurn, currentTeamPlayerIndex);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Get Order Info
update_team_order();
update_player_order();