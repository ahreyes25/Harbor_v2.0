/// @description	This script just looks at what our current team is, and the looks at the team before
//					it, and the team after it. These teams all exist in our team manager list simply called
//					"teams". This teams list is dynamic and can change in size at any point.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Update Team Order

if (!instance_exists(oTurnController))
	return;

// If our current team is not the last team in the teams list, then set the next team to the next one in line
if ((oTurnController.currentTeamIndex + 1) < ds_list_size(oTurnController.teams)) {
	oTurnController.nextTeamTurn	= ds_list_find_value(oTurnController.teams, oTurnController.currentTeamIndex + 1);
	
	// If our team is the first team in the list, then we need to set the previous team to the last team in the list
	if (oTurnController.currentTeamIndex == 0) {
		oTurnController.previousTeamTurn = ds_list_find_value(oTurnController.teams, ds_list_size(oTurnController.teams) - 1);
	}
	// If our team is not the first team, then the previous team is just the one before it
	else {
		oTurnController.previousTeamTurn = ds_list_find_value(oTurnController.teams, oTurnController.currentTeamIndex - 1);	
	}
}
// If our current team is the last team in the list, then set next to the first team, and previous to the one before
else {
	oTurnController.nextTeamTurn		= ds_list_find_value(oTurnController.teams, 0);
	oTurnController.previousTeamTurn = ds_list_find_value(oTurnController.teams, ds_list_size(oTurnController.teams) - 2);
}