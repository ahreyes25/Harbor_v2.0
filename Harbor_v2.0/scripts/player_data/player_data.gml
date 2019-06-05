enum PP { 
	MAX_LIFE, LIFE, CONTROL, AFFINITY, WEAKNESS, SKIN,
	LEFT_KEY, RIGHT_KEY, UP_KEY, DOWN_KEY, A1_KEY, A2_KEY, A3_KEY, A4_KEY, A5_KEY,
	SPELL_COLLECTION, AUTO_SCROLL_SPEED, AUTO_SCROLL_DELAY
}

// Player 1 Data -- Always Main Player, Used For Single Player
global.playerData[PLAYER.P1, PP.MAX_LIFE]			= 10;
global.playerData[PLAYER.P1, PP.LIFE]				= 10;
global.playerData[PLAYER.P1, PP.CONTROL]			= CONTROL.HUMAN;
global.playerData[PLAYER.P1, PP.AFFINITY]			= [ELEMENT.ALL];
global.playerData[PLAYER.P1, PP.WEAKNESS]			= [ELEMENT.NONE];
global.playerData[PLAYER.P1, PP.SKIN]				= "Witch";
global.playerData[PLAYER.P1, PP.SPELL_COLLECTION]	= noone;

global.playerData[PLAYER.P1, PP.LEFT_KEY]			= ord("A");
global.playerData[PLAYER.P1, PP.RIGHT_KEY]			= ord("D");
global.playerData[PLAYER.P1, PP.UP_KEY]				= ord("W");
global.playerData[PLAYER.P1, PP.DOWN_KEY]			= ord("S");
global.playerData[PLAYER.P1, PP.A1_KEY]				= ord("G");
global.playerData[PLAYER.P1, PP.A2_KEY]				= ord("H");
global.playerData[PLAYER.P1, PP.A3_KEY]				= ord("J");
global.playerData[PLAYER.P1, PP.A4_KEY]				= ord("K");
global.playerData[PLAYER.P1, PP.A5_KEY]				= ord("L");

global.playerData[PLAYER.P1, PP.AUTO_SCROLL_SPEED]	= 5;
global.playerData[PLAYER.P1, PP.AUTO_SCROLL_DELAY]	= 20;

// Player 2 Data
global.playerData[PLAYER.P2, PP.MAX_LIFE]			= 10;
global.playerData[PLAYER.P2, PP.LIFE]				= 10;
global.playerData[PLAYER.P2, PP.CONTROL]			= CONTROL.HUMAN;
global.playerData[PLAYER.P2, PP.AFFINITY]			= [ELEMENT.ALL];
global.playerData[PLAYER.P2, PP.WEAKNESS]			= [ELEMENT.NONE];
global.playerData[PLAYER.P2, PP.SKIN]				= "Frog";
global.playerData[PLAYER.P2, PP.SPELL_COLLECTION]	= noone;

global.playerData[PLAYER.P2, PP.LEFT_KEY]			= vk_left;
global.playerData[PLAYER.P2, PP.RIGHT_KEY]			= vk_right;
global.playerData[PLAYER.P2, PP.UP_KEY]				= vk_up;
global.playerData[PLAYER.P2, PP.DOWN_KEY]			= vk_down;
global.playerData[PLAYER.P2, PP.A1_KEY]				= ord("B");
global.playerData[PLAYER.P2, PP.A2_KEY]				= ord("V");
global.playerData[PLAYER.P2, PP.A3_KEY]				= ord("C");
global.playerData[PLAYER.P2, PP.A4_KEY]				= ord("X");
global.playerData[PLAYER.P2, PP.A5_KEY]				= ord("Z");

global.playerData[PLAYER.P2, PP.AUTO_SCROLL_SPEED]	= 5;
global.playerData[PLAYER.P2, PP.AUTO_SCROLL_DELAY]	= 20;