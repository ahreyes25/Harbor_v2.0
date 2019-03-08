randomize();

enum DIR {
	LEFT, RIGHT, UP, DOWN
}
enum ELEMENT { 
	NONE, FIRE, WATER, GRASS, ELECTRIC, ALL
}
enum PLAYER {	
	P1, P2, P3, P4
}
enum CONTROL { 
	HUMAN, CPU
}
enum TEAM {
	FRIENDLY, ENEMY
}

global.screenFlashMult = 1;
global.screenShakeMult = 1;
global.audioSFXMult = 1;
global.audioMusicMult = 1;