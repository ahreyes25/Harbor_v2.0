/// @description Cursor Auto Scroll Delay
if (player != noone)
	if (instance_exists(player))
		alarm[8] = global.playerData[player.pid, PP.AUTO_SCROLL_SPEED];