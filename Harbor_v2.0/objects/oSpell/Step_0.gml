switch (moves) {
	case DIR.UP:		
		y -= moveSpeed;
		if (y < -100)
				instance_destroy();
		break;
		
	case DIR.RIGHT:
		x += moveSpeed;
		if (x > room_width + 100)
			instance_destroy();
		break;
		
	case DIR.LEFT:
		x -= moveSpeed;
		if (x < -100)
			instance_destroy();
		break;
		
	case DIR.DOWN:
		y += moveSpeed;
		if (y > room_height + 100)
			instance_destroy();
		break;
}

// Hit Enemy
if (place_meeting(x, y, target) && !dealtDamage)
	dealtDamage = true;

// Play Spell Sound At Key Frame
if (instance_exists(owner)) {
	if (instance_exists(owner.boardInst)) {
		
		// Check if has charge sound
		if (global.spellData[owner.boardInst.cursor, SP.SOUND_CHARGE] != noone) {
			if (!playedSpellSound) {
				if (round(image_index) == global.spellData[owner.boardInst.cursor, SP.SOUND_FRAME]) {
					var _sound = global.spellData[owner.boardInst.cursor, SP.SOUND];
					audio_play_sound(_sound, 0, 0);
					playedSpellSound = true;
				}
			}
		}
	}
}

// Screen Shake
if (owner != noone)
	if (instance_exists(owner))
		if (owner.boardInst != noone)
			if (instance_exists(owner.boardInst))
				if (global.spellData[owner.boardInst.cursor, SP.SCREEN_SHAKE_CAST] != noone)
					screen_shake(global.spellData[owner.boardInst.cursor, SP.SCREEN_SHAKE_CAST]);