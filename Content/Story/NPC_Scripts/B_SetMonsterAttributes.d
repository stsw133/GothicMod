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
	
	if (kap == 0)
	{
		slf.attribute[ATR_STRENGTH]			=	5;
		slf.attribute[ATR_DEXTERITY]		=	5;
		slf.attribute[ATR_MANA_MAX]			=	5;
		slf.attribute[ATR_HITPOINTS_MAX]	=	NPC_MINIMAL_DAMAGE * 2;
		
		B_SetProtection (slf, 0);
	}
	else if (slf.guild == GIL_SUMMONED)
	{
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
		
		B_SetProtection (slf, kap * AR_PER_LEVEL);
	}
	else
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	DIFF_Multiplier (kap * 5*HP_PER_LP, INCREASE);
		slf.attribute[ATR_MANA_MAX]			=	DIFF_Multiplier (kap * 5, INCREASE);
		
		if (slf.aivar[AIV_MagicUser] > 0)
		{
			slf.attribute[ATR_STRENGTH]			=	DIFF_Multiplier (kap * 3, INCREASE);
			slf.attribute[ATR_DEXTERITY]		=	DIFF_Multiplier (kap * 3, INCREASE);
			slf.aivar[AIV_Power]				=	DIFF_Multiplier (kap * 5, INCREASE);
		}
		else
		{
			slf.attribute[ATR_STRENGTH]			=	DIFF_Multiplier (kap * 5, INCREASE);
			slf.attribute[ATR_DEXTERITY]		=	DIFF_Multiplier (kap * 5, INCREASE);
			slf.aivar[AIV_Power]				=	0;
		};
		
		B_SetProtection (slf, kap * AR_PER_LEVEL);
	};
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 5);
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC, slf.aivar[AIV_MagicUser]);
	
	///fast monsters have less hp
	if (slf.guild == GIL_MEATBUG)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)
	|| (slf.guild == GIL_BLOODFLY)
	|| (slf.guild == GIL_GIANT_RAT)
	|| (slf.guild == GIL_GOBBO)
	|| (slf.guild == GIL_GOBBO_SKELETON)
	{
		slf.attribute[ATR_HITPOINTS_MAX] = slf.attribute[ATR_HITPOINTS_MAX] * 3 / 5;
	};
	
	///hard monsters have more point prot but less blunt/edge prot
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
	//POWER_CHECK(slf);
	
	///#DEBUG
	Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULT, dLevel);
};
