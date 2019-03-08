/// @description Refill

if (player.state != PLAYER_STATE.WAIT) {
	player.state = PLAYER_STATE.CAST;
	alarm[2] = 1;	
}
else
	refill_board();