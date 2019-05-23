#region Book Object Instance 

enum SPELL_BOOK_STATE {
	DROP_IN, DROP_OUT, OPEN, CLOSE, OPEN_IDLE, CLOSE_IDLE
}

// Fade In
targetAlpha		= 1;
startAlpha		= 0;
alpha			= startAlpha;
alphaSpeed		= 0.1;

// Scale In
targetScale		= 1.0;
startScale		= targetScale * 4;
imageScale		= startScale;
scaleSpeed		= 0.1;

// Book Open
openIter		= 0.9;
openXScale		= 1;
openDelay		= 20;

image_xscale	= imageScale;
image_yscale	= imageScale;
x = room_width / 2;
y = room_height / 2;
state = SPELL_BOOK_STATE.DROP_IN;

#endregion

#region Screen Shake

shakeSize	= 0;
shakeScreen = false;

#endregion

player1Book			= ds_list_create();
player2Book			= ds_list_create();
player1Collection	= noone;
player2Collection	= noone;
player1Scroll		= 0;
player2Scroll		= 0;
scrollSpeed			= 3;
spellIconsOffset	= 24;
spellIconsSpacing	= 16;
spellBookLimit		= 5;
invisibleFrame		= surface_create(room_width, room_height);