/// @description Cursor Auto Scroll Speed
if (player != noone)
	if (instance_exists(player))
		alarm[7] = global.playerData[player.pid, PP.AUTO_SCROLL_SPEED];