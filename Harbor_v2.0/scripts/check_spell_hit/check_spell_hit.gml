if (place_meeting(x, y, oSpell) && spellInst == noone) {
	state = PLAYER_STATE.HURT;	
	
	#region Screen Shake & Flash
	if (boardInst != noone) {
		if (instance_exists(boardInst))	{
			
			// Screen Flash
			if (global.spellData[boardInst.cursor, SP.SCREEN_FLASH_HIT] != noone)
				screen_flash(global.spellData[boardInst.cursor, SP.SCREEN_FLASH_HIT]);
			
			// Screen Shake
			if (global.spellData[boardInst.cursor, SP.SCREEN_SHAKE_HIT] != noone)
				screen_shake(global.spellData[boardInst.cursor, SP.SCREEN_SHAKE_HIT]);
		}
	}
	#endregion
}