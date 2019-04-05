#region Enums
enum SPELL {
	BASIC, FIREBALL, ELECTRIC_BOLT, ELEMENTAL, SPROUT, TSUNAMI, BRUSHFIRE, THUNDERSTORM,
}

enum SP {	
	SPELL_NAME, SPELL_INFO, SPELL_TYPE, SPELL_ELEMENT, CONFIG, WIDTH, HEIGHT, CAN_ROTATE, CAN_FLIP,
	CHAIN_PIECE, ORIGIN, DAMAGE_LOW, DAMAGE_HIGH, ACCURACY, MOVES,
	FLOOD_CHANCE, FLOOD_AMOUNT_LO, FLOOD_AMOUNT_HI, SMOKE_CHANCE, SMOKE_TIME,
	SOUND, SOUND_CHARGE, SOUND_FRAME, SPRITE_ANIMATION,
}
#endregion

#region Basic
global.spellData[SPELL.BASIC, SP.SPELL_NAME]			= "Basic";	
global.spellData[SPELL.BASIC, SP.SPELL_INFO]			= "Dmg: 1";
global.spellData[SPELL.BASIC, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.BASIC, SP.SPELL_ELEMENT]			= ELEMENT.ALL;
global.spellData[SPELL.BASIC, SP.CONFIG]				= [[0, 0]];
global.spellData[SPELL.BASIC, SP.WIDTH]					= 1;						
global.spellData[SPELL.BASIC, SP.HEIGHT]				= 1;
global.spellData[SPELL.BASIC, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.BASIC, SP.CAN_FLIP]				= false;
global.spellData[SPELL.BASIC, SP.CHAIN_PIECE]			= noone;
global.spellData[SPELL.BASIC, SP.DAMAGE_LOW]			= 1;						
global.spellData[SPELL.BASIC, SP.DAMAGE_HIGH]			= 1;							
global.spellData[SPELL.BASIC, SP.ORIGIN]				= [noone, TEAM.FRIENDLY, TEAM.ENEMY, TEAM.ENEMY, TEAM.FRIENDLY];
global.spellData[SPELL.BASIC, SP.ACCURACY]				= 100;
global.spellData[SPELL.BASIC, SP.MOVES]					= noone;
global.spellData[SPELL.BASIC, SP.SOUND]					= [noone, sfx_basic_fire, sfx_basic_water, sfx_basic_grass, sfx_basic_electric];
global.spellData[SPELL.BASIC, SP.SOUND_CHARGE]			= noone;
global.spellData[SPELL.BASIC, SP.SOUND_FRAME]			= noone;
global.spellData[SPELL.BASIC, SP.SPRITE_ANIMATION]		= [noone, sBasicFire, sBasicWater, sBasicGrass, sBasicElectric];
#endregion

#region Fireball
global.spellData[SPELL.FIREBALL, SP.SPELL_NAME]				= "Fireball";	
global.spellData[SPELL.FIREBALL, SP.SPELL_INFO]				= "Dmg: 6-8";
global.spellData[SPELL.FIREBALL, SP.SPELL_TYPE]				= "Active";
global.spellData[SPELL.FIREBALL, SP.SPELL_ELEMENT]			= ELEMENT.FIRE;
global.spellData[SPELL.FIREBALL, SP.CONFIG]					= [[1, 0], [0, 1], [1, 1], [2, 1], [1, 2]];
global.spellData[SPELL.FIREBALL, SP.WIDTH]					= 3;						
global.spellData[SPELL.FIREBALL, SP.HEIGHT]					= 3;
global.spellData[SPELL.FIREBALL, SP.CAN_ROTATE]				= false;
global.spellData[SPELL.FIREBALL, SP.CAN_FLIP]				= false;
global.spellData[SPELL.FIREBALL, SP.CHAIN_PIECE]			= noone;
global.spellData[SPELL.FIREBALL, SP.DAMAGE_LOW]				= 6;						
global.spellData[SPELL.FIREBALL, SP.DAMAGE_HIGH]			= 8;	
global.spellData[SPELL.FIREBALL, SP.ORIGIN]					= TEAM.FRIENDLY;				
global.spellData[SPELL.FIREBALL, SP.ACCURACY]				= 100;
global.spellData[SPELL.FIREBALL, SP.MOVES]					= noone;
global.spellData[SPELL.FIREBALL, SP.SMOKE_CHANCE]			= 1;
global.spellData[SPELL.FIREBALL, SP.SMOKE_TIME]				= 3;
global.spellData[SPELL.FIREBALL, SP.SMOKE_TIME]				= 3;
global.spellData[SPELL.FIREBALL, SP.SOUND]					= sfx_fireball;
global.spellData[SPELL.FIREBALL, SP.SOUND_CHARGE]			= sfx_fireball_charge;
global.spellData[SPELL.FIREBALL, SP.SOUND_FRAME]			= 8;
global.spellData[SPELL.FIREBALL, SP.SPRITE_ANIMATION]		= sFireball;

#endregion

#region ElectricBolt
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_NAME]			= "ElectricBolt";
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_INFO]			= "Dmg: 4";
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPELL_ELEMENT]			= ELEMENT.ELECTRIC;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CONFIG]				= [[0, 1], [1, 1], [1, 0], [2, 0]];
global.spellData[SPELL.ELECTRIC_BOLT, SP.WIDTH]					= 3;						
global.spellData[SPELL.ELECTRIC_BOLT, SP.HEIGHT]				= 2;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CAN_ROTATE]			= true;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CAN_FLIP]				= true;
global.spellData[SPELL.ELECTRIC_BOLT, SP.CHAIN_PIECE]			= ELEMENT.ELECTRIC;
global.spellData[SPELL.ELECTRIC_BOLT, SP.DAMAGE_LOW]			= 4;						
global.spellData[SPELL.ELECTRIC_BOLT, SP.DAMAGE_HIGH]			= 4;
global.spellData[SPELL.ELECTRIC_BOLT, SP.ORIGIN]				= TEAM.FRIENDLY;
global.spellData[SPELL.ELECTRIC_BOLT, SP.ACCURACY]				= 100;
global.spellData[SPELL.ELECTRIC_BOLT, SP.MOVES]					= noone;
global.spellData[SPELL.ELECTRIC_BOLT, SP.SOUND]					= sfx_electricBolt;
global.spellData[SPELL.ELECTRIC_BOLT, SP.SOUND_CHARGE]			= sfx_electricBolt_charge;
global.spellData[SPELL.ELECTRIC_BOLT, SP.SOUND_FRAME]			= 8;
global.spellData[SPELL.ELECTRIC_BOLT, SP.SPRITE_ANIMATION]		= sElectricBolt;
#endregion

#region Elemental
global.spellData[SPELL.ELEMENTAL, SP.SPELL_NAME]			= "Elemental";	
global.spellData[SPELL.ELEMENTAL, SP.SPELL_INFO]			= "Dmg: 0 or 10";
global.spellData[SPELL.ELEMENTAL, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.ELEMENTAL, SP.SPELL_ELEMENT]			= ELEMENT.ALL;
global.spellData[SPELL.ELEMENTAL, SP.CONFIG]				= [[0, 0], [1, 0], [0, 1], [1, 1]];
global.spellData[SPELL.ELEMENTAL, SP.WIDTH]					= 2;						
global.spellData[SPELL.ELEMENTAL, SP.HEIGHT]				= 2;
global.spellData[SPELL.ELEMENTAL, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.ELEMENTAL, SP.CAN_FLIP]				= false;
global.spellData[SPELL.ELEMENTAL, SP.CHAIN_PIECE]			= noone;
global.spellData[SPELL.ELEMENTAL, SP.DAMAGE_LOW]			= 0;						
global.spellData[SPELL.ELEMENTAL, SP.DAMAGE_HIGH]			= 10;	
global.spellData[SPELL.ELEMENTAL, SP.ORIGIN]				= TEAM.FRIENDLY;
global.spellData[SPELL.ELEMENTAL, SP.ACCURACY]				= 100;
global.spellData[SPELL.ELEMENTAL, SP.MOVES]					= noone;
global.spellData[SPELL.ELEMENTAL, SP.SOUND]					= sfx_elemental;
global.spellData[SPELL.ELEMENTAL, SP.SOUND_CHARGE]			= sfx_elemental_charge;
global.spellData[SPELL.ELEMENTAL, SP.SOUND_FRAME]			= 9;
global.spellData[SPELL.ELEMENTAL, SP.SPRITE_ANIMATION]		= sElemental;
#endregion

#region Tsunami
global.spellData[SPELL.TSUNAMI, SP.SPELL_NAME]			= "Tsunami";	
global.spellData[SPELL.TSUNAMI, SP.SPELL_INFO]			= "Dmg: 2";
global.spellData[SPELL.TSUNAMI, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.TSUNAMI, SP.SPELL_ELEMENT]		= ELEMENT.WATER;
global.spellData[SPELL.TSUNAMI, SP.CONFIG]				= [[0, 0], [1, 0], [0, 1]];
global.spellData[SPELL.TSUNAMI, SP.WIDTH]				= 2;						
global.spellData[SPELL.TSUNAMI, SP.HEIGHT]				= 2;
global.spellData[SPELL.TSUNAMI, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.TSUNAMI, SP.CAN_FLIP]			= true;
global.spellData[SPELL.TSUNAMI, SP.CHAIN_PIECE]			= ELEMENT.WATER;
global.spellData[SPELL.TSUNAMI, SP.DAMAGE_LOW]			= 2;						
global.spellData[SPELL.TSUNAMI, SP.DAMAGE_HIGH]			= 2;	
global.spellData[SPELL.TSUNAMI, SP.ORIGIN]				= TEAM.ENEMY;
global.spellData[SPELL.TSUNAMI, SP.ACCURACY]			= 100;
global.spellData[SPELL.TSUNAMI, SP.MOVES]				= DIR.UP;
global.spellData[SPELL.TSUNAMI, SP.FLOOD_CHANCE]		= 0.5;
global.spellData[SPELL.TSUNAMI, SP.FLOOD_AMOUNT_LO]		= 1;
global.spellData[SPELL.TSUNAMI, SP.FLOOD_AMOUNT_HI]		= 4;
global.spellData[SPELL.TSUNAMI, SP.SOUND]				= sfx_tsunami;
global.spellData[SPELL.TSUNAMI, SP.SOUND_CHARGE]		= noone;
global.spellData[SPELL.TSUNAMI, SP.SOUND_FRAME]			= noone;
global.spellData[SPELL.TSUNAMI, SP.SPRITE_ANIMATION]	= sTsunami;
#endregion

#region Sprout
global.spellData[SPELL.SPROUT, SP.SPELL_NAME]			= "Sprout";	
global.spellData[SPELL.SPROUT, SP.SPELL_INFO]			= "Dmg: 0";
global.spellData[SPELL.SPROUT, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.SPROUT, SP.SPELL_ELEMENT]		= ELEMENT.GRASS;
global.spellData[SPELL.SPROUT, SP.CONFIG]				= [[0, 0], [1, 1], [2, 0]];
global.spellData[SPELL.SPROUT, SP.WIDTH]				= 3;						
global.spellData[SPELL.SPROUT, SP.HEIGHT]				= 2;
global.spellData[SPELL.SPROUT, SP.CAN_ROTATE]			= false;
global.spellData[SPELL.SPROUT, SP.CAN_FLIP]				= false;
global.spellData[SPELL.SPROUT, SP.CHAIN_PIECE]			= noone;
global.spellData[SPELL.SPROUT, SP.DAMAGE_LOW]			= 0;						
global.spellData[SPELL.SPROUT, SP.DAMAGE_HIGH]			= 0;
global.spellData[SPELL.SPROUT, SP.ORIGIN]				= TEAM.FRIENDLY;
global.spellData[SPELL.SPROUT, SP.ACCURACY]				= 100;
global.spellData[SPELL.SPROUT, SP.MOVES]				= noone;
global.spellData[SPELL.SPROUT, SP.SOUND]				= sfx_sprout;
global.spellData[SPELL.SPROUT, SP.SOUND_CHARGE]			= sfx_sprout_charge;
global.spellData[SPELL.SPROUT, SP.SOUND_FRAME]			= noone;
global.spellData[SPELL.SPROUT, SP.SPRITE_ANIMATION]		= sSprout;
#endregion

#region Brushfire
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_NAME]			= "Brushfire";	
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_INFO]			= "Dmg: 4";
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_TYPE]			= "Active";
global.spellData[SPELL.BRUSHFIRE, SP.SPELL_ELEMENT]			= ELEMENT.FIRE;
global.spellData[SPELL.BRUSHFIRE, SP.CONFIG]				= [[0, 0], [1, 0], [2, 0]];
global.spellData[SPELL.BRUSHFIRE, SP.WIDTH]					= 3;						
global.spellData[SPELL.BRUSHFIRE, SP.HEIGHT]				= 1;
global.spellData[SPELL.BRUSHFIRE, SP.CAN_ROTATE]			= true;
global.spellData[SPELL.BRUSHFIRE, SP.CAN_FLIP]				= false;
global.spellData[SPELL.BRUSHFIRE, SP.CHAIN_PIECE]			= ELEMENT.GRASS;
global.spellData[SPELL.BRUSHFIRE, SP.DAMAGE_LOW]			= 4;						
global.spellData[SPELL.BRUSHFIRE, SP.DAMAGE_HIGH]			= 4;
global.spellData[SPELL.BRUSHFIRE, SP.ORIGIN]				= TEAM.FRIENDLY;
global.spellData[SPELL.BRUSHFIRE, SP.ACCURACY]				= 100;
global.spellData[SPELL.BRUSHFIRE, SP.MOVES]					= noone;
global.spellData[SPELL.BRUSHFIRE, SP.SOUND]					= sfx_brushfire;
global.spellData[SPELL.BRUSHFIRE, SP.SOUND_CHARGE]			= sfx_brushfire_charge;
global.spellData[SPELL.BRUSHFIRE, SP.SOUND_FRAME]			= noone;
global.spellData[SPELL.BRUSHFIRE, SP.SPRITE_ANIMATION]		= sBrushfire;
#endregion