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
	if (slf.level > 100)
	{
		slf.protection[PROT_BLUNT]	=	50 * AR_PER_LEVEL + 50 * (AR_PER_LEVEL/2) + kap;
		slf.protection[PROT_EDGE]	=	50 * AR_PER_LEVEL + 50 * (AR_PER_LEVEL/2) + kap;
		slf.protection[PROT_POINT]	=	50 * AR_PER_LEVEL + 50 * (AR_PER_LEVEL/2) + kap;
		slf.protection[PROT_FIRE]	=	50 * MR_PER_LEVEL + 50 * (AR_PER_LEVEL/2) + kap;
		slf.protection[PROT_FLY]	=	50 * MR_PER_LEVEL + 50 * (AR_PER_LEVEL/2) + kap;
		slf.protection[PROT_MAGIC]	=	50 * MR_PER_LEVEL + 50 * (AR_PER_LEVEL/2) + kap;
	}
	else if (slf.level > 50)
	{
		slf.protection[PROT_BLUNT]	=	50 * AR_PER_LEVEL + kap * (AR_PER_LEVEL/2);
		slf.protection[PROT_EDGE]	=	50 * AR_PER_LEVEL + kap * (AR_PER_LEVEL/2);
		slf.protection[PROT_POINT]	=	50 * AR_PER_LEVEL + kap * (AR_PER_LEVEL/2);
		slf.protection[PROT_FIRE]	=	50 * MR_PER_LEVEL + kap * (AR_PER_LEVEL/2);
		slf.protection[PROT_FLY]	=	50 * MR_PER_LEVEL + kap * (AR_PER_LEVEL/2);
		slf.protection[PROT_MAGIC]	=	50 * MR_PER_LEVEL + kap * (AR_PER_LEVEL/2);
	}
	else
	{
		slf.protection[PROT_BLUNT]	=	kap * AR_PER_LEVEL;
		slf.protection[PROT_EDGE]	=	kap * AR_PER_LEVEL;
		slf.protection[PROT_POINT]	=	kap * AR_PER_LEVEL;
		slf.protection[PROT_FIRE]	=	kap * MR_PER_LEVEL;
		slf.protection[PROT_FLY]	=	kap * MR_PER_LEVEL;
		slf.protection[PROT_MAGIC]	=	kap * MR_PER_LEVEL;
	};
	
	/// hard monsters have more point prot but less blunt/edge prot
	if (slf.guild == GIL_GOBBO_SKELETON)
	|| (slf.guild == GIL_SKELETON)
	|| (slf.guild == GIL_SKELETON_MAGE)
	|| (slf.guild == GIL_SKELETON_MONSTER)
	|| (slf.guild == GIL_STONEGUARDIAN)
	|| (slf.guild == GIL_GARGOYLE)
	|| (slf.guild == GIL_GOLEM)
	|| (slf.guild == GIL_SWAMPGOLEM)
	{
		if (slf.protection[PROT_BLUNT] >= AR_PER_LEVEL * 10)	{	slf.protection[PROT_BLUNT] -= AR_PER_LEVEL * 10;	}
		else													{	slf.protection[PROT_BLUNT] = 0;						};
		
		slf.protection[PROT_EDGE] += AR_PER_LEVEL * 5;
		slf.protection[PROT_POINT] += AR_PER_LEVEL * 10;
	}
	else if (slf.guild == GIL_TREANT)
	{
		if (slf.protection[PROT_EDGE] >= AR_PER_LEVEL * 10)		{	slf.protection[PROT_EDGE] -= AR_PER_LEVEL * 10;		}
		else													{	slf.protection[PROT_EDGE] = 0;						};
		
		slf.protection[PROT_BLUNT] += AR_PER_LEVEL * 5;
		slf.protection[PROT_POINT] += AR_PER_LEVEL * 10;
	};
};

///******************************************************************************************
///	B_SetAttributesToLevel
///******************************************************************************************
func void B_SetAttributesToLevel (var C_NPC slf, var int kap)
{
	slf.level							=	kap;
	slf.exp_next 						=	kap * XP_PER_LEVEL;
	
	if (kap <= 0)
	{
		slf.attribute[ATR_STRENGTH]			=	1;
		slf.attribute[ATR_DEXTERITY]		=	1;
		slf.attribute[ATR_MANA_MAX]			=	1;
		slf.attribute[ATR_HITPOINTS_MAX]	=	NPC_MINIMAL_DAMAGE * 2;
	}
	else
	{
		slf.attribute[ATR_HITPOINTS_MAX]	=	kap * 20;
		slf.attribute[ATR_MANA_MAX]			=	kap * 5;
		
		if (slf.aivar[AIV_MagicUser] > 0)
		{
			slf.attribute[ATR_STRENGTH]			=	kap * 3;
			slf.attribute[ATR_DEXTERITY]		=	kap * 3;
			Npc_SetPowerPoints(slf, kap * 3);
		}
		else
		{
			slf.attribute[ATR_STRENGTH]			=	kap * 4;
			slf.attribute[ATR_DEXTERITY]		=	kap * 4;
			Npc_SetPowerPoints(slf, 0);
		};
		
		if (slf.guild < GIL_SEPERATOR_HUM)
		{
			slf.attribute[ATR_STRENGTH] += kap;
			slf.attribute[ATR_DEXTERITY] += kap;
		};
	};
	
	/// protection
	if (slf.guild > GIL_SEPERATOR_HUM)
	{
		B_SetMonsterProtection (slf, kap);
	};
	
	/// talents
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC, slf.aivar[AIV_MagicUser]);
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, 6);
	
	/// partymember if summoned
	if (slf.guild == GIL_SUMMONED)
	{
		B_SetAttitude (slf, ATT_FRIENDLY);
		slf.aivar[AIV_PartyMember] = true;
		slf.aivar[AIV_SummonTime] = -1;
		slf.start_aistate = ZS_MM_Rtn_Summoned;
	};
	
	/// fast or small monsters have less hp
	if (slf.guild == GIL_MEATBUG)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)
	|| (slf.guild == GIL_BLOODFLY)
	|| (slf.guild == GIL_GOBBO)
	|| (slf.guild == GIL_GOBBO_SKELETON)
	{
		slf.attribute[ATR_HITPOINTS_MAX] /= 2;
	};
	
	/// less strength when damagetype in (DAM_FIRE, DAM_FLY, DAM_MAGIC)
	if (slf.damagetype == DAM_FIRE || slf.damagetype == DAM_MAGIC)
	{
		slf.attribute[ATR_STRENGTH] = slf.attribute[ATR_STRENGTH] * 3 / 4;
	}
	else if (slf.damagetype == DAM_FLY)
	{
		slf.attribute[ATR_STRENGTH] /= 2;
	};
	
	/// important characters
	if (slf.flags == NPC_FLAG_IMPORTANT)
	{
		slf.attribute[ATR_HITPOINTS_MAX]	+=	MAX_LEVEL * 10;
		slf.protection[PROT_BLUNT]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_EDGE]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_POINT]			+=	AR_PER_LEVEL * 50;
		slf.protection[PROT_FIRE]			+=	MR_PER_LEVEL * 50;
		slf.protection[PROT_MAGIC]			+=	MR_PER_LEVEL * 50;
	};
	
	slf.attribute[ATR_MANA]				=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS]		=	slf.attribute[ATR_HITPOINTS_MAX];
	slf.aivar[AIV_Energy_MAX]			=	100 + kap;
	
	///#DEBUG
	//Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY, dLevel);
};
