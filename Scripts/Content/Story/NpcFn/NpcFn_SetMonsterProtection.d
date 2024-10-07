///******************************************************************************************
/// NpcFn_SetMonsterProtection
///******************************************************************************************

const int MonsterProtectionValues[25] =
{
	0, 1, 3, 5, 8,
	11, 15, 19, 23, 27,
	32, 36, 42, 47, 52,
	58, 64, 70, 76, 83,
	89, 96, 103, 110, 118
};

///******************************************************************************************
func int NpcFn_GetMonsterProtection (var int level)
{
	if (level < 0)
	{
		return 0;
	};
	
	/// FUNC
	if (level < 25)
	{
		return MEM_ReadStatArr(MonsterProtectionValues, level);
	};
	
	return level * 5;
};

///******************************************************************************************
func void NpcFn_SetMonsterProtection (var C_Npc slf, var int kap)
{
	var int prot; prot = NpcFn_GetMonsterProtection(kap);
	
	slf.protection[PROT_BLUNT]		=	prot;
	slf.protection[PROT_EDGE]		=	prot;
	slf.protection[PROT_POINT]		=	prot;
	slf.protection[PROT_FIRE]		=	prot;
	slf.protection[PROT_FLY]		=	prot;
	slf.protection[PROT_MAGIC]		=	prot;
	slf.protection[PROT_BARRIER]	=	prot;
	
	/// additional changes based on: material of monster (stones, bones, wood), dexterity of monster etc.
	if (slf.guild == GIL_BLOODFLY)
	{
		slf.protection[PROT_EDGE]		=	prot/2;
		slf.protection[PROT_POINT]		=	prot/2;
	}
	else if	(slf.guild == GIL_DEMON)
	||		(slf.guild == GIL_DRAGON)
	{
		slf.protection[PROT_FIRE]		=	prot*2;
	}
	else if	(slf.guild == GIL_MOLERAT)
	||		(slf.guild == GIL_ZOMBIE)
	{
		slf.protection[PROT_BLUNT]		=	prot*2/3;
		slf.protection[PROT_EDGE]		=	prot*2/3;
		slf.protection[PROT_POINT]		=	prot*2/3;
		slf.protection[PROT_FIRE]		=	prot*2/3;
		slf.protection[PROT_MAGIC]		=	prot*2/3;
		slf.protection[PROT_BARRIER]	=	prot*2/3;
	}
	else if	(slf.guild == GIL_GARGOYLE)
	||		(slf.guild == GIL_GOBBO_SKELETON)
	||		(slf.guild == GIL_GOLEM)
	||		(slf.guild == GIL_SHADOWBEAST_SKELETON)
	||		(slf.guild == GIL_SKELETON)
	||		(slf.guild == GIL_SKELETON_MAGE)
	||		(slf.guild == GIL_STONEGUARDIAN)
	||		(slf.guild == GIL_SWAMPGOLEM)
	{
		slf.protection[PROT_BLUNT]		=	prot/2;
		slf.protection[PROT_EDGE]		=	prot*3/2;
		slf.protection[PROT_POINT]		=	prot*2;
	}
	else if (slf.guild == GIL_TREANT)
	{
		slf.protection[PROT_BLUNT]		=	prot*3/2;
		slf.protection[PROT_EDGE]		=	prot/2;
		slf.protection[PROT_POINT]		=	prot*2;
		slf.protection[PROT_FIRE]		=	0;
	}
	else if (slf.guild == GIL_TROLL)
	{
		slf.protection[PROT_POINT]		=	-1;
		slf.protection[PROT_FLY]		=	-1;
	};
};
