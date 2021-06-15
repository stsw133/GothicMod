///******************************************************************************************
///	B_SetFightSkills
///******************************************************************************************
func void B_SetFightSkills (var C_NPC slf, var int percent)
{
	if (slf.aivar[AIV_Race] == RACE_HUMAN)
	{
		slf.hitchance[NPC_TALENT_1H]		=	0;
		slf.hitchance[NPC_TALENT_2H]		=	0;
		slf.hitchance[NPC_TALENT_BOW]		=	0;
		slf.hitchance[NPC_TALENT_CROSSBOW]	=	0;
		
		B_AddFightSkill	(slf, NPC_TALENT_1H, percent);
		B_AddFightSkill	(slf, NPC_TALENT_2H, percent);
		B_AddFightSkill	(slf, NPC_TALENT_BOW, percent);
		B_AddFightSkill	(slf, NPC_TALENT_CROSSBOW, percent);
	}
	else
	{
		slf.hitchance[NPC_TALENT_1H]		=	percent;
		slf.hitchance[NPC_TALENT_2H]		=	percent;
		slf.hitchance[NPC_TALENT_BOW]		=	percent;
		slf.hitchance[NPC_TALENT_CROSSBOW]	=	percent;
	};
};

///******************************************************************************************
///	B_SetMonsterProtection
///******************************************************************************************
func void B_SetMonsterProtection (var C_NPC slf, var int kap)
{
	if (kap <= 20)
	{
		slf.protection[PROT_BLUNT]	=	kap * AR_PER_LEVEL;
		slf.protection[PROT_EDGE]	=	kap * AR_PER_LEVEL;
		slf.protection[PROT_POINT]	=	kap * AR_PER_LEVEL;
		slf.protection[PROT_FIRE]	=	kap * MR_PER_LEVEL;
		slf.protection[PROT_FLY]	=	kap * MR_PER_LEVEL;
		slf.protection[PROT_MAGIC]	=	kap * MR_PER_LEVEL;
	}
	else if (kap <= 40)
	{
		slf.protection[PROT_BLUNT]	=	20 * AR_PER_LEVEL + (kap - 20) * (AR_PER_LEVEL - 1);
		slf.protection[PROT_EDGE]	=	20 * AR_PER_LEVEL + (kap - 20) * (AR_PER_LEVEL - 1);
		slf.protection[PROT_POINT]	=	20 * AR_PER_LEVEL + (kap - 20) * (AR_PER_LEVEL - 1);
		slf.protection[PROT_FIRE]	=	20 * MR_PER_LEVEL + (kap - 20) * (MR_PER_LEVEL - 1);
		slf.protection[PROT_FLY]	=	20 * MR_PER_LEVEL + (kap - 20) * (MR_PER_LEVEL - 1);
		slf.protection[PROT_MAGIC]	=	20 * MR_PER_LEVEL + (kap - 20) * (MR_PER_LEVEL - 1);
	}
	else
	{
		slf.protection[PROT_BLUNT]	=	20 * AR_PER_LEVEL + 20 * (AR_PER_LEVEL - 1) + (kap - 40) * (AR_PER_LEVEL - 2);
		slf.protection[PROT_EDGE]	=	20 * AR_PER_LEVEL + 20 * (AR_PER_LEVEL - 1) + (kap - 40) * (AR_PER_LEVEL - 2);
		slf.protection[PROT_POINT]	=	20 * AR_PER_LEVEL + 20 * (AR_PER_LEVEL - 1) + (kap - 40) * (AR_PER_LEVEL - 2);
		slf.protection[PROT_FIRE]	=	20 * MR_PER_LEVEL + 20 * (MR_PER_LEVEL - 1) + (kap - 40) * (MR_PER_LEVEL - 2);
		slf.protection[PROT_FLY]	=	20 * MR_PER_LEVEL + 20 * (MR_PER_LEVEL - 1) + (kap - 40) * (MR_PER_LEVEL - 2);
		slf.protection[PROT_MAGIC]	=	20 * MR_PER_LEVEL + 20 * (MR_PER_LEVEL - 1) + (kap - 40) * (MR_PER_LEVEL - 2);
	};
};

///******************************************************************************************
///	B_SetLevelName
///******************************************************************************************
func string B_SetLevelName (var C_NPC slf, var string name)
{
	var oCNpc npc; npc = Hlp_GetNpc(slf);
	if (STR_Len(npc.name) > 0)
	{
		npc.name_1 = name;
	};
	npc.name_2 = ConcatStrings("-", ConcatStrings(IntToString(npc.level), "- "));
	
	return ConcatStrings(npc.name_2, npc.name_1);
};

///******************************************************************************************
///	B_SetMonsterAttributes
///******************************************************************************************
func void B_SetMonsterAttributes (var C_NPC slf, var int kap)
{
	if (kap < 0)
	{
		return;
	};
	
	slf.level							=	kap;
	slf.exp_next 						=	kap * XP_PER_LEVEL;
	slf.name							=	B_SetLevelName(slf, slf.name);
	
	if (kap == 0)
	{
		slf.attribute[ATR_STRENGTH]			=	5;
		slf.attribute[ATR_DEXTERITY]		=	5;
		slf.attribute[ATR_MANA_MAX]			=	5;
		slf.attribute[ATR_HITPOINTS_MAX]	=	NPC_MINIMAL_DAMAGE * 2;
	}
	else if (slf.guild == GIL_SUMMONED)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	kap * 5*HP_PER_LP;
		slf.attribute[ATR_MANA_MAX]			=	kap * 5;
		
		if (slf.aivar[AIV_MagicUser] > 0)
		{
			slf.attribute[ATR_STRENGTH]			=	kap * 3;
			slf.attribute[ATR_DEXTERITY]		=	kap * 3;
			Npc_SetPowerPoints(slf, kap * 5);
		}
		else
		{
			slf.attribute[ATR_STRENGTH]			=	kap * 5;
			slf.attribute[ATR_DEXTERITY]		=	kap * 5;
			Npc_SetPowerPoints(slf, 0);
		};
	}
	else
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	DIFF_Multiplier (kap * 5*HP_PER_LP, INCREASE);
		slf.attribute[ATR_MANA_MAX]			=	DIFF_Multiplier (kap * 5, INCREASE);
		
		if (slf.aivar[AIV_MagicUser] > 0)
		{
			slf.attribute[ATR_STRENGTH]			=	DIFF_Multiplier (kap * 3, INCREASE);
			slf.attribute[ATR_DEXTERITY]		=	DIFF_Multiplier (kap * 3, INCREASE);
			Npc_SetPowerPoints(slf, DIFF_Multiplier(kap * 5, INCREASE));
		}
		else
		{
			slf.attribute[ATR_STRENGTH]			=	DIFF_Multiplier (kap * 5, INCREASE);
			slf.attribute[ATR_DEXTERITY]		=	DIFF_Multiplier (kap * 5, INCREASE);
			Npc_SetPowerPoints(slf, 0);
		};
	};
	B_SetMonsterProtection (slf, kap);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 5);
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC, slf.aivar[AIV_MagicUser]);
	
	/// fast monsters have less hp
	if (slf.guild == GIL_MEATBUG)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)
	|| (slf.guild == GIL_BLOODFLY)
	|| (slf.guild == GIL_GIANT_RAT)
	|| (slf.guild == GIL_GOBBO)
	|| (slf.guild == GIL_GOBBO_SKELETON)
	{
		slf.attribute[ATR_HITPOINTS_MAX] = slf.attribute[ATR_HITPOINTS_MAX] * 3 / 5;
	};
	
	/// hard monsters have more point prot but less blunt/edge prot
	if (slf.guild == GIL_GOBBO_SKELETON)
	|| (slf.guild == GIL_SKELETON)
	|| (slf.guild == GIL_SUMMONED_SKELETON)
	|| (slf.guild == GIL_SKELETON_MAGE)
	|| (slf.guild == GIL_SHADOWBEAST_SKELETON)
	|| (slf.guild == GIL_STONEGOLEM)
	|| (slf.guild == GIL_FIREGOLEM)
	|| (slf.guild == GIL_ICEGOLEM)
	|| (slf.guild == GIL_SWAMPGOLEM)
	|| (slf.guild == GIL_STONEGUARDIAN)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)
		{
			if (slf.protection[PROT_EDGE] >= AR_PER_LEVEL * 10)		{	slf.protection[PROT_EDGE] -= AR_PER_LEVEL * 10;		}
			else													{	slf.protection[PROT_EDGE] = 0;						};
		}
		else
		{
			if (slf.protection[PROT_BLUNT] >= AR_PER_LEVEL * 10)	{	slf.protection[PROT_BLUNT] -= AR_PER_LEVEL * 10;	}
			else													{	slf.protection[PROT_BLUNT] = 0;						};
		};
		slf.protection[PROT_POINT] += AR_PER_LEVEL * 10;
	};
	
	slf.attribute[ATR_MANA]				=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS]		=	slf.attribute[ATR_HITPOINTS_MAX];
	
	///#DEBUG
	Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY, dLevel);
};

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
	slf.name							=	B_SetLevelName(slf, slf.name);
	
	slf.attribute[ATR_HITPOINTS_MAX]	=	kap * 5*HP_PER_LP;
	slf.attribute[ATR_MANA_MAX]			=	kap * 5;
	
	if (slf.aivar[AIV_MagicUser] > 0)
	{
		slf.attribute[ATR_STRENGTH]			=	kap * 3;
		slf.attribute[ATR_DEXTERITY]		=	kap * 3;
		Npc_SetPowerPoints(slf, kap * 5);
	}
	else
	{
		slf.attribute[ATR_STRENGTH]			=	kap * 5;
		slf.attribute[ATR_DEXTERITY]		=	kap * 5;
		Npc_SetPowerPoints(slf, 0);
	};
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 5);
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC, slf.aivar[AIV_MagicUser]);
	
	/// important characters
	if (slf.flags == NPC_FLAG_IMPORTANT)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	+=	MAX_LEVEL * 5*HP_PER_LP;
		slf.attribute[ATR_MANA_MAX]			+=	MAX_LEVEL;
		slf.attribute[ATR_STRENGTH]			+=	MAX_LEVEL;
		slf.attribute[ATR_DEXTERITY]		+=	MAX_LEVEL;
		Npc_AddPowerPoints(slf, MAX_LEVEL);
		
		slf.protection[PROT_BLUNT]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_EDGE]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_POINT]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_FIRE]			+=	MR_PER_LEVEL * 50;
		slf.protection[PROT_MAGIC]			+=	MR_PER_LEVEL * 50;
	};
	
	slf.attribute[ATR_MANA]				=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS]		=	slf.attribute[ATR_HITPOINTS_MAX];
	
	///#DEBUG
	Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY, dLevel);
};
