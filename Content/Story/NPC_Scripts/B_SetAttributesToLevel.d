///******************************************************************************************
///	B_SetAttributesToLevel
///******************************************************************************************
func void B_SetAttributesToLevel (var C_NPC slf, var int kap)
{
	if (kap <= 0)
	{
		return;
	};
	
	slf.level							=	kap;
	slf.exp_next 						=	kap * XP_PER_LEVEL;
	
	slf.attribute[ATR_HITPOINTS_MAX]	=	kap * 5*HP_PER_LP;
	slf.attribute[ATR_MANA_MAX]			=	kap * 5;
	
	if (slf.aivar[AIV_MagicUser] > 0)
	{
		slf.attribute[ATR_STRENGTH]			=	kap * 3;
		slf.attribute[ATR_DEXTERITY]		=	kap * 3;
		slf.damage[DAM_INDEX_MAGIC]			=	kap * 5;
		//slf.aivar[AIV_Power]				=	kap * 5;
	}
	else
	{
		slf.attribute[ATR_STRENGTH]			=	kap * 5;
		slf.attribute[ATR_DEXTERITY]		=	kap * 5;
		slf.damage[DAM_INDEX_MAGIC]			=	0;
		//slf.aivar[AIV_Power]				=	0;
	};
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 5);
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC, slf.aivar[AIV_MagicUser]);
	
	///important characters
	if (slf.flags == NPC_FLAG_IMPORTANT)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	+=	MAX_LEVEL * 5*HP_PER_LP;
		slf.attribute[ATR_MANA_MAX]			+=	MAX_LEVEL;
		slf.attribute[ATR_STRENGTH]			+=	MAX_LEVEL;
		slf.attribute[ATR_DEXTERITY]		+=	MAX_LEVEL;
		slf.aivar[AIV_Power]				+=	MAX_LEVEL;
		
		slf.protection[PROT_BLUNT]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_EDGE]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_POINT]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_FIRE]			+=	MR_PER_LEVEL * 50;
		slf.protection[PROT_MAGIC]			+=	MR_PER_LEVEL * 50;
	};
	
	slf.attribute[ATR_MANA]				=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS]		=	slf.attribute[ATR_HITPOINTS_MAX];
	//POWER_CHECK(slf);
	
	///#DEBUG
	Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY, dLevel);
};
