/// @description	This script just looks at what our current player is, and the looks at the player before
//					it, and the player after it. These player all exist in our team lists.
//					These team lists are dynamic and can change in size at any point.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Update Player Order

if (!instance_exists(oTurnController))
	return;

// If we are not the last player in our team list, then the next player is simply the next player in line
if ((oTurnController.currentTeamPlayerIndex + 1) < ds_list_size(oTurnController.currentTeamTurn)) {
	oTurnController.nextPlayerTurn = ds_list_find_value(oTurnController.currentTeamTurn, oTurnController.currentTeamPlayerIndex + 1);
}
// If we are the last player in our team list, then the next player is the first player in the next team 
else {
	oTurnController.nextPlayerTurn = ds_list_find_value(oTurnController.nextTeamTurn, 0);
}

// If we are not the first player in our team list, then the previous player is simply the previous player in line
if ((oTurnController.currentTeamPlayerIndex - 1) > 0) {
	oTurnController.previousPlayerTurn = ds_list_find_value(oTurnController.currentTeamTurn, oTurnController.currentTeamPlayerIndex - 1);
}
// If we are the first player in our team list, then the previous player is the last player in the previous team 
else {
	oTurnController.previousPlayerTurn = ds_list_find_value(oTurnController.previousTeamTurn, ds_list_size(oTurnController.previousTeamTurn) - 1);
}