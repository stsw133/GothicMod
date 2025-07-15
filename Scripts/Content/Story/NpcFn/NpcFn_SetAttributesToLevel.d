///******************************************************************************************
///	NpcFn_SetAttributesToLevel
///******************************************************************************************
func void NpcFn_SetAttributesToLevel (var C_Npc slf, var int kap)
{
	slf.level							=	kap;
	slf.exp_next 						=	kap * XP_PER_LEVEL;
	
	if (kap <= 0)
	{
		slf.attribute[ATR_STRENGTH]			=	1;
		slf.attribute[ATR_DEXTERITY]		=	1;
		slf.attribute[ATR_POWER]			=	1;
		slf.attribute[ATR_MANA_MAX]			=	1;
		slf.attribute[ATR_HITPOINTS_MAX]	=	NPC_MINIMAL_DAMAGE;
	}
	else
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	kap * 5*HP_PER_LP;
		slf.attribute[ATR_MANA_MAX]			=	kap * 5*MP_PER_LP;
		slf.aivar[AIV_Stamina_MAX]			=	kap * 5*SP_PER_LP;
		
		slf.attribute[ATR_STRENGTH]			=	kap * 5;
		slf.attribute[ATR_DEXTERITY]		=	kap * 5;
		slf.attribute[ATR_POWER]			=	kap * 5;
	};
	
	/// ------ Human modifiers ------
	if (slf.guild <= GIL_SEPERATOR_HUM)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	+=	10*HP_PER_LP - kap*HP_PER_LP;
		slf.attribute[ATR_MANA_MAX]			+=	10*MP_PER_LP - kap*MP_PER_LP;
		slf.aivar[AIV_Stamina_MAX]			+=	10*SP_PER_LP - kap*SP_PER_LP;
		
		slf.attribute[ATR_STRENGTH]			+=	10 - kap;
		slf.attribute[ATR_DEXTERITY]		+=	10 - kap;
		slf.attribute[ATR_POWER]			+=	10 - kap;
	};
	
	/// ------ HP modifiers ------
	if (slf.guild == GIL_BLOODFLY)
	|| (slf.guild == GIL_GOBBO)
	|| (slf.guild == GIL_GOBBO_SKELETON)
	|| (slf.guild == GIL_MEATBUG)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	slf.attribute[ATR_HITPOINTS_MAX] / 2;	/// only 50% HP
	}
	else if (slf.guild == GIL_MOLERAT)
	|| (slf.guild == GIL_ZOMBIE)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	slf.attribute[ATR_HITPOINTS_MAX] * 2;	/// 200% HP
		slf.attribute[ATR_STRENGTH]			=	slf.attribute[ATR_STRENGTH] * 4/5;		/// only 80% strength
	};
	
	/// ------ Damage modifiers ------
	if (slf.damagetype & DAM_FLY)
	{
		slf.attribute[ATR_STRENGTH] = slf.attribute[ATR_STRENGTH] * 4 / 10;
	}
	else if (slf.damagetype & DAM_FIRE || slf.damagetype & DAM_MAGIC)
	{
		slf.attribute[ATR_STRENGTH] = slf.attribute[ATR_STRENGTH] * 6 / 10;
	};
	
	/// ------ Fill attributes ------
	slf.attribute[ATR_MANA]				=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS]		=	slf.attribute[ATR_HITPOINTS_MAX];
	slf.aivar[AIV_Stamina]				=	slf.aivar[AIV_Stamina_MAX];
	
	/// ------ Talents ------
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, true);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 6);
};
