#region Enums
enum SPELL { 
	BASIC, FIREBALL, ELEMENTAL, ELECTRIC_BOLT, SPROUT, TSUNAMI, BRUSHFIRE, THUNDERSTORM,
}

enum SP {
	SPELL_ID, SPELL_NAME, SPELL_TYPE, SPELL_ELEMENT, CONFIG, WIDTH, HEIGHT, CAN_ROTATE, CAN_FLIP,
	CHAIN_PIECE,
	
	TARGET_BOARD,ELEMENT_TYPE, DAMAGE_LOW, DAMAGE_HIGH, ACCURACY,
}
#endregion

#region Basic
global.spellData[SPELL.BASIC, SP.SPELL_ID]				= 1;
global.spellData[SPELL.BASIC, SP.SPELL_NAME]			= "Basic";	
global.spellData[SPELL.BASIC, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.BASIC, SP.SPELL_ELEMENT]			= ELEMENT.ALL;
global.spellData[SPELL.BASIC, SP.CONFIG]				= [[0, 0]];
global.spellData[SPELL.BASIC, SP.WIDTH]					= 1;						
global.spellData[SPELL.BASIC, SP.HEIGHT]				= 1;
global.spellData[SPELL.BASIC, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.BASIC, SP.CAN_FLIP]				= false;
global.spellData[SPELL.BASIC, SP.CHAIN_PIECE]			= noone;

global.spellData[SPELL.BASIC, SP.TARGET_BOARD]			= TEAM.ENEMY;
global.spellData[SPELL.BASIC, SP.ELEMENT_TYPE]			= ELEMENT.ALL;
global.spellData[SPELL.BASIC, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.BASIC, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.BASIC, SP.ACCURACY]				= 100;
#endregion

#region Fireball
global.spellData[SPELL.FIREBALL, SP.SPELL_ID]				= 2;
global.spellData[SPELL.FIREBALL, SP.SPELL_NAME]				= "Fireball";	
global.spellData[SPELL.FIREBALL, SP.SPELL_TYPE]				= "Active";
global.spellData[SPELL.FIREBALL, SP.SPELL_ELEMENT]			= ELEMENT.FIRE;
global.spellData[SPELL.FIREBALL, SP.CONFIG]					= [[1, 0], [0, 1], [1, 1], [2, 1], [1, 2]];
global.spellData[SPELL.FIREBALL, SP.WIDTH]					= 3;						
global.spellData[SPELL.FIREBALL, SP.HEIGHT]					= 3;
global.spellData[SPELL.FIREBALL, SP.CAN_ROTATE]				= false;
global.spellData[SPELL.FIREBALL, SP.CAN_FLIP]				= false;
global.spellData[SPELL.FIREBALL, SP.CHAIN_PIECE]			= noone;

global.spellData[SPELL.FIREBALL, SP.TARGET_BOARD]			= TEAM.ENEMY;
global.spellData[SPELL.FIREBALL, SP.ELEMENT_TYPE]			= ELEMENT.FIRE;
global.spellData[SPELL.FIREBALL, SP.DAMAGE_LOW]				= 1;						
global.spellData[SPELL.FIREBALL, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.FIREBALL, SP.ACCURACY]				= 100;
#endregion

#region ElectricBolt
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_ID]				= 3;
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_NAME]			= "ElectricBolt";	
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_ELEMENT]			= ELEMENT.ELECTRIC;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CONFIG]				= [[0, 1], [1, 1], [1, 0], [2, 0]];
global.spellData[SPELL.ELECTRIC_BOLT, SP.WIDTH]					= 3;						
global.spellData[SPELL.ELECTRIC_BOLT, SP.HEIGHT]				= 2;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CAN_ROTATE]			= true;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CAN_FLIP]				= true;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CHAIN_PIECE]			= ELEMENT.ELECTRIC;

global.spellData[SPELL.ELECTRIC_BOLT, SP.TARGET_BOARD]			= TEAM.ENEMY;
global.spellData[SPELL.ELECTRIC_BOLT, SP.ELEMENT_TYPE]			= ELEMENT.ELECTRIC;
global.spellData[SPELL.ELECTRIC_BOLT, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.ELECTRIC_BOLT, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.ELECTRIC_BOLT, SP.ACCURACY]				= 100;
#endregion