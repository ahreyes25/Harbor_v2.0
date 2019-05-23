switch(state) {

	#region Drop In
	
	case SPELL_BOOK_STATE.DROP_IN:
		if (imageScale > targetScale)
			imageScale -= scaleSpeed;
		if (alpha < targetAlpha)
			alpha += alphaSpeed;
		if (alpha >= targetAlpha && imageScale <= targetScale)
			if (alarm[0] == -1) {
				alarm[0] = openDelay;
				screen_shake(5, 10);
			}
		break;
	
	#endregion
		
	#region Opening
		
	case SPELL_BOOK_STATE.OPEN:
		openIter += 0.1;
		openXScale = cos(openIter);
		
		if (openXScale <= -0.99) {
			state = SPELL_BOOK_STATE.OPEN_IDLE;
			screen_shake(3, 10);
		}
		break;
	
	#endregion
		
	#region Closing
	
	case SPELL_BOOK_STATE.CLOSE:
		openIter += 0.1;
		openXScale = cos(openIter);
		
		if (openXScale >= 0.99)
			state = SPELL_BOOK_STATE.CLOSE_IDLE;
		break;
	
	#endregion
		
	#region Drop Out
	
	case SPELL_BOOK_STATE.DROP_OUT:
		if (imageScale < startScale)
			imageScale += scaleSpeed;
		if (alpha > startAlpha)
			alpha -= alphaSpeed;
		break;
	
	#endregion
}

#region Screen Shake

if (shakeScreen) {
	view_xport[0] = random_range(-shakeSize, shakeSize); //sets the view to a random x position
	view_yport[0] = random_range(-shakeSize, shakeSize); //sets the view to a random y position
}
// Reset screen
else {
	if view_xport[0] < 0
		view_xport[0] = 0;
		
	if view_xport[0] > 0
		view_xport[0] = 0;
		
	if view_yport[0] < 0
		view_yport[0] = 0;
		
	if view_yport[0] > 0
		view_yport[0] = 0;
}	

#endregion

#region Adjust Scroll Values

if (mouse_wheel_down())
	player1Scroll--;
if (mouse_wheel_up())
	player1Scroll++;

#endregion