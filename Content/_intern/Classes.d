///******************************************************************************************
///	class - Definitions
///	Global Instances
///	Phoenix V0.76
///******************************************************************************************

const int MAX_CHAPTER		=	5;
const int MAX_MISSIONS		=	5;
const int MAX_HITCHANCE		=	5;

class C_NPC
{
	var int		id;
	var string	name[5];
	var string	slot;
	var string	effect;
	var int		npcType;
	var int		flags;
	
	var int		attribute[ATR_INDEX_MAX];
	var int		hitChance[MAX_HITCHANCE];
	var int		protection[PROT_INDEX_MAX];
	var int		damage[DAM_INDEX_MAX];
	var int		damagetype;
	var int		guild, level;
	
	var func	mission[MAX_MISSIONS];
	var int		fight_tactic;
	var int		weapon;
	
	var int		voice;
	var int		voicePitch;
	var int		bodymass;
	
	var func	daily_routine;
	var func	start_aistate;
	
	///**********************
	/// Spawn
	///**********************
	var string	spawnPoint;
	var int		spawnDelay;
	
	///**********************
	/// SENSES
	///**********************
	var int		senses;
	var int		senses_range;
	
	///**********************
	/// Feel free to use
	///**********************
	/// FIXME: TODO: bei goldmaster auf das benötigte minimum reduzieren
	var int		aivar[100];
	var string	wp;
	
	///**********************
	/// Experience dependant
	///**********************
	var int		exp;
	var int		exp_next;
	var int		lp;
	
	/// If this is set to true, the Npc can't be interrupted in any action (e.g. BS_FLAG_INTERRUPTABLE for anis is being ignored)
	var int		bodyStateInterruptableOverride;
	/// if "noFocus" is set to true, the focus name and health bar will not be drawn of this nsc (hi, stefan!)
	var int     noFocus;
};

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

class C_Item
{
	/// Für alle Items
	var int		id;
	var string  name, nameID;
	var int		hp, hp_max;
	
	var int     mainflag, flags;
	var int		weight, value;
	
	/// Für Waffen
	var int		damageType;
	VAR	INT		damageTotal;
	var int		damage[DAM_INDEX_MAX];
	
	/// Für Rüstungen
	var int		wear;
	var int		protection[PROT_INDEX_MAX];
	
	/// Für Nahrung
	var int		nutrition;
	
	/// Benötigte Attribute zum Benutzen des Items
	var int		cond_atr[3];
	var int		cond_value[3];
	
	/// Attribute, die bei anlegen des Items verändert werden
	var int		change_atr[3];
	var int		change_value[3];
	
	/// Parserfunktionen
	var func	magic;
	var func	on_equip;
	var func	on_unequip;
	var func	on_state[4];
	
	/// Besitzer
	var func	owner;
	var int		ownerGuild;
	var int		disguiseGuild;
	
	/// Die 3DS-Datei
	var string	visual;
	
	/// Veränderung des NSC-Meshes beim Anlegen dieses Gegenstandes
	var string  visual_change;
	var string  effect;
	
	var int		visual_skin;
	
	var string 	scemeName;
	var int		material;
	// var string	pfx;
	var int		munition;
	
	var int 	spell;
	var int		range;
	
	var int		mag_circle;
	
	var string	description;
	var string	text[ITM_TEXT_MAX];
	var int		count[ITM_TEXT_MAX];
	
	/// inventory darstellungs geschichten, wird nur benutzt, falls von 0 abweichend
	var int	    inv_zbias;
	var	int		inv_rotx;
	var int 	inv_roty;
	var int 	inv_rotz;
	var int 	inv_animate;
};

class C_Focus
{
	/// für NSCs
	var float	npc_longrange;
	var float	npc_range1, npc_range2;
	var float	npc_azi;
	var float	npc_elevdo, npc_elevup;
	var int		npc_prio;
	
	/// für ITEMs
	var float	item_range1, item_range2;
	var float	item_azi;
	var float	item_elevdo, item_elevup;
	var int		item_prio;
	
	/// für MOBs
	var float	mob_range1, mob_range2;
	var float	mob_azi;
	var float	mob_elevdo, mob_elevup;
	var int		mob_prio;
};

class C_INFO
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

class C_ITEMREACT
{
	var int		npc;
	var int		trade_item;
	var int		trade_amount;
	var int		requested_cat;
	var int		requested_item;
	var int		requested_amount;
	var func	reaction;
};

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
///	Globale Klasseninstanzen
///******************************************************************************************
/// Aktueller Npc und der SC
instance self, other (C_NPC);

/// Opfer bei "witness"-Aktionen
instance victim (C_NPC);

/// aktuelles Item
instance item (C_Item);

/// Und der Player immer als globale Instanz
instance hero (C_NPC);
