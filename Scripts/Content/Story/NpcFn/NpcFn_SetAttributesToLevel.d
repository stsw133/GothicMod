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
		slf.attribute[ATR_HITPOINTS_MAX]	=	NPC_MINIMAL_DAMAGE * 2;
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
	
	if (slf.guild <= GIL_SEPERATOR_HUM)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	+=	10*HP_PER_LP - kap*HP_PER_LP;
		slf.attribute[ATR_MANA_MAX]			+=	10*MP_PER_LP - kap*MP_PER_LP;
		slf.aivar[AIV_Stamina_MAX]			+=	10*SP_PER_LP - kap*SP_PER_LP;
		
		slf.attribute[ATR_STRENGTH]			+=	10 - kap;
		slf.attribute[ATR_DEXTERITY]		+=	10 - kap;
		slf.attribute[ATR_POWER]			+=	10 - kap;
	};
	
	/// talents
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 6);
	
	/// fast and small monsters have less hp but big and fat monsters have more hp
	if (slf.guild == GIL_MEATBUG)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)
	|| (slf.guild == GIL_BLOODFLY)
	|| (slf.guild == GIL_GOBBO)
	|| (slf.guild == GIL_GOBBO_SKELETON)
	{
		slf.attribute[ATR_HITPOINTS_MAX] /= 2;
	}
	else if (slf.guild == GIL_MOLERAT)
	|| (slf.guild == GIL_ZOMBIE)
	{
		slf.attribute[ATR_HITPOINTS_MAX] *= 3;
	};
	
	/// less strength when damagetype in: DAM_FIRE, DAM_FLY, DAM_MAGIC (check better ones first because monsters can have multiple damage types)
	if ((slf.damagetype & DAM_FLY) > 0)
	{
		slf.attribute[ATR_STRENGTH] = slf.attribute[ATR_STRENGTH] * 4 / 10;
	}
	else if ((slf.damagetype & DAM_FIRE) > 0 || (slf.damagetype & DAM_MAGIC) > 0)
	{
		slf.attribute[ATR_STRENGTH] = slf.attribute[ATR_STRENGTH] * 6 / 10;
	};
	
	slf.attribute[ATR_MANA]				=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS]		=	slf.attribute[ATR_HITPOINTS_MAX];
	slf.aivar[AIV_Stamina]				=	slf.aivar[AIV_Stamina_MAX];
	
	///#DEBUG
	//Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY, dLevel);
};
