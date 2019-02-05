enum PP { 
	MAX_LIFE, LIFE, CONTROL, TYPE, AFFINITY, WEAKNESS, SKIN, CURRENCY,
	LEFT_KEY, RIGHT_KEY, UP_KEY, DOWN_KEY, A1_KEY, A2_KEY, A3_KEY,
	SPELL_COLLECTION,
}

#region Player 1 Data -- Always Main Player, Used For Single Player
global.playerData[PLAYER.P1, PP.MAX_LIFE]			= 10;
global.playerData[PLAYER.P1, PP.LIFE]				= 10;
global.playerData[PLAYER.P1, PP.CONTROL]			= CONTROL.HUMAN;
global.playerData[PLAYER.P1, PP.TYPE]				= CHARACTER_TYPE.HUMAN;
global.playerData[PLAYER.P1, PP.AFFINITY]			= [ELEMENT.ALL];
global.playerData[PLAYER.P1, PP.WEAKNESS]			= [ELEMENT.NONE];
global.playerData[PLAYER.P1, PP.SKIN]				= "Wizard";
global.playerData[PLAYER.P1, PP.CURRENCY]			= 0;
global.playerData[PLAYER.P1, PP.SPELL_COLLECTION]	= noone;

global.playerData[PLAYER.P1, PP.LEFT_KEY]	= ord("A");
global.playerData[PLAYER.P1, PP.RIGHT_KEY]	= ord("D");
global.playerData[PLAYER.P1, PP.UP_KEY]		= ord("W");
global.playerData[PLAYER.P1, PP.DOWN_KEY]	= ord("S");
global.playerData[PLAYER.P1, PP.A1_KEY]		= ord("J");
global.playerData[PLAYER.P1, PP.A2_KEY]		= ord("K");
global.playerData[PLAYER.P1, PP.A3_KEY]		= ord("L");
#endregion