#region Enums
enum SPELL { 
	BASIC, FIREBALL, ELECTRIC_BOLT, ELEMENTAL, SPROUT, TSUNAMI, BRUSHFIRE, THUNDERSTORM,
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

#region Elemental
global.spellData[SPELL.ELEMENTAL, SP.SPELL_ID]				= 4;
global.spellData[SPELL.ELEMENTAL, SP.SPELL_NAME]			= "Elemental";	
global.spellData[SPELL.ELEMENTAL, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.ELEMENTAL, SP.SPELL_ELEMENT]			= ELEMENT.ALL;
global.spellData[SPELL.ELEMENTAL, SP.CONFIG]				= [[0, 0], [1, 0], [0, 1], [1, 1]];
global.spellData[SPELL.ELEMENTAL, SP.WIDTH]					= 2;						
global.spellData[SPELL.ELEMENTAL, SP.HEIGHT]				= 2;
global.spellData[SPELL.ELEMENTAL, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.ELEMENTAL, SP.CAN_FLIP]				= false;
global.spellData[SPELL.ELEMENTAL, SP.CHAIN_PIECE]			= noone;

global.spellData[SPELL.ELEMENTAL, SP.TARGET_BOARD]			= TEAM.ENEMY;
global.spellData[SPELL.ELEMENTAL, SP.ELEMENT_TYPE]			= ELEMENT.ALL;
global.spellData[SPELL.ELEMENTAL, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.ELEMENTAL, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.ELEMENTAL, SP.ACCURACY]				= 100;
#endregion

#region Tsunami
global.spellData[SPELL.TSUNAMI, SP.SPELL_ID]			= 5;
global.spellData[SPELL.TSUNAMI, SP.SPELL_NAME]			= "Tsunami";	
global.spellData[SPELL.TSUNAMI, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.TSUNAMI, SP.SPELL_ELEMENT]		= ELEMENT.WATER;
global.spellData[SPELL.TSUNAMI, SP.CONFIG]				= [[0, 0], [1, 0], [0, 1]];
global.spellData[SPELL.TSUNAMI, SP.WIDTH]				= 2;						
global.spellData[SPELL.TSUNAMI, SP.HEIGHT]				= 2;
global.spellData[SPELL.TSUNAMI, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.TSUNAMI, SP.CAN_FLIP]			= true;
global.spellData[SPELL.TSUNAMI, SP.CHAIN_PIECE]			= ELEMENT.WATER;

global.spellData[SPELL.TSUNAMI, SP.TARGET_BOARD]		= TEAM.ENEMY;
global.spellData[SPELL.TSUNAMI, SP.ELEMENT_TYPE]		= ELEMENT.WATER;
global.spellData[SPELL.TSUNAMI, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.TSUNAMI, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.TSUNAMI, SP.ACCURACY]			= 100;
#endregion

#region Sprout
global.spellData[SPELL.SPROUT, SP.SPELL_ID]				= 6;
global.spellData[SPELL.SPROUT, SP.SPELL_NAME]			= "Sprout";	
global.spellData[SPELL.SPROUT, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.SPROUT, SP.SPELL_ELEMENT]		= ELEMENT.GRASS;
global.spellData[SPELL.SPROUT, SP.CONFIG]				= [[0, 0], [1, 1], [2, 0]];
global.spellData[SPELL.SPROUT, SP.WIDTH]				= 3;						
global.spellData[SPELL.SPROUT, SP.HEIGHT]				= 2;
global.spellData[SPELL.SPROUT, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.SPROUT, SP.CAN_FLIP]				= false;
global.spellData[SPELL.SPROUT, SP.CHAIN_PIECE]			= noone;

global.spellData[SPELL.SPROUT, SP.TARGET_BOARD]			= TEAM.ENEMY;
global.spellData[SPELL.SPROUT, SP.ELEMENT_TYPE]			= ELEMENT.GRASS;
global.spellData[SPELL.SPROUT, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.SPROUT, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.SPROUT, SP.ACCURACY]				= 100;
#endregion

#region Brushfire
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_ID]				= 7;
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_NAME]			= "Brushfire";	
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_ELEMENT]			= ELEMENT.FIRE;
global.spellData[SPELL.BRUSHFIRE, SP.CONFIG]				= [[0, 0], [1, 0], [2, 0]];
global.spellData[SPELL.BRUSHFIRE, SP.WIDTH]					= 3;						
global.spellData[SPELL.BRUSHFIRE, SP.HEIGHT]				= 1;
global.spellData[SPELL.BRUSHFIRE, SP.CAN_ROTATE]			= true;
global.spellData[SPELL.BRUSHFIRE, SP.CAN_FLIP]				= false;
global.spellData[SPELL.BRUSHFIRE, SP.CHAIN_PIECE]			= ELEMENT.GRASS;

global.spellData[SPELL.BRUSHFIRE, SP.TARGET_BOARD]			= TEAM.ENEMY;
global.spellData[SPELL.BRUSHFIRE, SP.ELEMENT_TYPE]			= ELEMENT.FIRE;
global.spellData[SPELL.BRUSHFIRE, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.BRUSHFIRE, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.BRUSHFIRE, SP.ACCURACY]				= 100;
#endregion