/// @description	This script immediately skips to the previous team, skipping past all of the other
//					players in line. It skips to the previous team, and sets the current player to the 
//					first player in that list.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Previous Team

if (!instance_exists(oTurnController))
	return;

// If the current team is not the first team in the team manager list, then move onto the previous team
if (oTurnController.currentTeamIndex > 0) {
	oTurnController.currentTeamIndex--;
}
// If the current team is the first team in the team manager list, then move onto the last team
else {
	oTurnController.currentTeamIndex = ds_list_size(oTurnController.teams) - 1;
}
// Set the current player to be the first player in that list
oTurnController.currentTeamPlayerIndex = 0;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Update current team and current player
oTurnController.currentTeamTurn		= ds_list_find_value(oTurnController.teams, oTurnController.currentTeamIndex);
oTurnController.currentPlayerTurn	= ds_list_find_value(oTurnController.currentTeamTurn, oTurnController.currentTeamPlayerIndex);

// Update all of our other variables before moving on...
update_team_order();
update_player_order();