///******************************************************************************************
/// Classes
///******************************************************************************************
/// WARNING: do not change order of fields in engine classes - it will cause game to crash instantly!

const int MAX_CHAPTER					=	5;
const int MAX_MISSIONS					=	5;
const int MAX_HITCHANCE					=	5;

///******************************************************************************************
class C_Npc
{
	var int		id;
	var string	name[5];
	var string	slot;
	var string	effect;
	var int		npcType;
	var int		flags;
	
	/// ATTRIBUTES
	var int		attribute[ATR_INDEX_MAX];
	var int		hitChance[MAX_HITCHANCE];
	var int		protection[PROT_INDEX_MAX];
	var int		damage[DAM_INDEX_MAX];
	var int		damagetype;
	var int		guild, level;
	
	/// FIGHT
	var func	mission[MAX_MISSIONS];
	var int		fight_tactic;
	var int		weapon;
	
	/// VOICE
	var int		voice;
	var int		voicePitch;
	var int		bodymass;
	
	/// ROUTINE
	var func	daily_routine;
	var func	start_aistate;
	
	/// SPAWN
	var string	spawnPoint;
	var int		spawnDelay;
	
	/// SENSES
	var int		senses;
	var int		senses_range;
	
	/// AI
	var int		aivar[100];
	var string	wp;
	
	/// EXP
	var int		exp;
	var int		exp_next;
	var int		lp;
	
	/// ...
	var int		bodyStateInterruptableOverride;	/// if this is set to true, the NPC can't be interrupted in any action (e.g. BS_FLAG_INTERRUPTABLE for anis is being ignored)
	var int		noFocus;						/// if "noFocus" is set to true, the focus name and health bar will not be drawn of this nsc (hi, stefan!)
};

///******************************************************************************************
class C_Mission
{
	var string	name;
	var string	description;
	var int		duration;
	var int		important;
	
	var func	offerConditions;
	var func	offer;
	var func	successConditions;
	var func	success;
	var func	failureConditions;
	var func	failure;
	var func	obsoleteConditions;
	var func	obsolete;
	var func	running;
};

///******************************************************************************************
class C_Item
{
	var int		id;
	var string	name, nameID;
	var int		hp, hp_max;
	
	var int		mainflag, flags;
	var int		weight, value;
	
	/// WEAPON
	var int		damageType;
	var int		damageTotal;
	var int		damage[DAM_INDEX_MAX];
	
	/// ARMOR
	var int		wear;
	var int		protection[PROT_INDEX_MAX];
	
	/// FOOD
	var int		nutrition;
	
	/// CONDITIONS
	var int		cond_atr[3];
	var int		cond_value[3];
	
	/// ATTRIBUTES
	var int		change_atr[3];
	var int		change_value[3];
	
	/// PARSER FUNCTIONS
	var func	magic;
	var func	on_equip;
	var func	on_unequip;
	var func	on_state[4];
	
	/// OWNER
	var func	owner;
	var int		ownerGuild;
	var int		disguiseGuild;
	
	/// VISUAL
	var string	visual;
	var string	visual_change;
	var string	effect;
	var int		visual_skin;
	
	/// USAGE
	var string	scemeName;
	var int		material;
	// var string	pfx;
	var int		munition;
	
	/// MAGIC
	var int		spell;
	var int		range;
	var int		mag_circle;
	
	/// DESCRIPTIONS
	var string	description;
	var string	text[ITM_TEXT_MAX];
	var int		count[ITM_TEXT_MAX];
	
	/// INVENTORY
	var int		inv_zbias;
	var	int		inv_rotx;
	var int		inv_roty;
	var int		inv_rotz;
	var int		inv_animate;
};

///******************************************************************************************
class C_Focus
{
	/// NPCs
	var float	npc_longrange;
	var float	npc_range1, npc_range2;
	var float	npc_azi;
	var float	npc_elevdo, npc_elevup;
	var int		npc_prio;
	
	/// items
	var float	item_range1, item_range2;
	var float	item_azi;
	var float	item_elevdo, item_elevup;
	var int		item_prio;
	
	/// MOBs
	var float	mob_range1, mob_range2;
	var float	mob_azi;
	var float	mob_elevdo, mob_elevup;
	var int		mob_prio;
};

///******************************************************************************************
class C_Info
{
	var int		npc;
	var int		nr;
	var int		important;
	var func	condition;
	var func	information;
	var string	description;
	var int		trade;
	var int		permanent;
};

///******************************************************************************************
class C_ItemReact
{
	var int		npc;
	var int		trade_item;
	var int		trade_amount;
	var int		requested_cat;
	var int		requested_item;
	var int		requested_amount;
	var func	reaction;
};

///******************************************************************************************
class C_Spell
{
	var float	time_per_mana;
	var int		damage_per_level;
	var int		damageType;
	var int		spellType;
	var int		canTurnDuringInvest;
	var int		canChangeTargetDuringInvest;
	var int		isMultiEffect;
	var int		targetCollectAlgo;
	var int		targetCollectType;
	var int		targetCollectRange;
	var int		targetCollectAzi;
	var int		targetCollectElev;
};

///******************************************************************************************
/// Globale Klasseninstanzen
///******************************************************************************************
instance self, other (C_Npc);
instance victim (C_Npc);
instance item (C_Item);
instance hero (C_Npc);
