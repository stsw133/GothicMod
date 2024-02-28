///******************************************************************************************
///	NpcFn_SetMonsterProtection
///******************************************************************************************
func int NpcFn_ProtectionSqrt (var int x) /// should be used with x between 0 and 25 (if you need up to 100 or maybe even more then remove condition "x < 25"
{
	var int a; a = 0;
	var int b; b = 0;
	
	var int i;
	repeat(i, 10);
	if ((a + b*2 + 1) <= x)
	{
		a += b*2 + 1;
		b += 1;
	}
	else
	{
		if (x < 25 && x - a > 0)
		{
			return NpcFn_ProtectionSqrt(x - a) + b * x;
		};
		return b * x;
	};
	end;
	return b * x;
};
///******************************************************************************************
func void NpcFn_SetMonsterProtection (var C_Npc slf, var int kap)
{
//	slf.protection[PROT_BLUNT]		=	kap * AR_PER_LEVEL;
//	slf.protection[PROT_EDGE]		=	kap * AR_PER_LEVEL;
//	slf.protection[PROT_POINT]		=	kap * AR_PER_LEVEL;
//	slf.protection[PROT_FIRE]		=	kap * MR_PER_LEVEL;
//	slf.protection[PROT_FLY]		=	kap * MR_PER_LEVEL;
//	slf.protection[PROT_MAGIC]		=	kap * MR_PER_LEVEL;
//	slf.protection[PROT_BARRIER]	=	kap * MR_PER_LEVEL;

	var int prot;
	if (kap < 25)
	{
		prot = NpcFn_ProtectionSqrt(kap);
		slf.protection[PROT_BLUNT]		=	prot;
		slf.protection[PROT_EDGE]		=	prot;
		slf.protection[PROT_POINT]		=	prot;
		slf.protection[PROT_FIRE]		=	prot;
		slf.protection[PROT_FLY]		=	prot;
		slf.protection[PROT_MAGIC]		=	prot;
		slf.protection[PROT_BARRIER]	=	prot;
	}
	else
	{
		prot = NpcFn_ProtectionSqrt(25);
		slf.protection[PROT_BLUNT]		=	prot + (kap - 25)*AR_PER_LEVEL;
		slf.protection[PROT_EDGE]		=	prot + (kap - 25)*AR_PER_LEVEL;
		slf.protection[PROT_POINT]		=	prot + (kap - 25)*AR_PER_LEVEL;
		slf.protection[PROT_FIRE]		=	prot + (kap - 25)*MR_PER_LEVEL;
		slf.protection[PROT_FLY]		=	prot + (kap - 25)*MR_PER_LEVEL;
		slf.protection[PROT_MAGIC]		=	prot + (kap - 25)*MR_PER_LEVEL;
		slf.protection[PROT_BARRIER]	=	prot + (kap - 25)*MR_PER_LEVEL;
	};
	
	/// additional changes based on: material of monster (stones, bones, wood), dexterity of monster etc.
	if (slf.guild == GIL_BLOODFLY)
	{
		slf.protection[PROT_EDGE]		/=	2;
		slf.protection[PROT_POINT]		=	0;
	}
	else if (slf.guild == GIL_DEMON)
	|| (slf.guild == GIL_DRAGON)
	{
		slf.protection[PROT_FIRE]		*=	2;
	}
	else if (slf.guild == GIL_MOLERAT)
	|| (slf.guild == GIL_ZOMBIE)
	{
		slf.protection[PROT_BLUNT]		/=	2;
		slf.protection[PROT_EDGE]		/=	2;
		slf.protection[PROT_POINT]		/=	2;
		slf.protection[PROT_FIRE]		/=	2;
		slf.protection[PROT_MAGIC]		/=	2;
		slf.protection[PROT_BARRIER]	/=	2;
	}
	else if (slf.guild == GIL_GARGOYLE)
	|| (slf.guild == GIL_GOBBO_SKELETON)
	|| (slf.guild == GIL_GOLEM)
	|| (slf.guild == GIL_SHADOWBEAST_SKELETON)
	|| (slf.guild == GIL_SKELETON)
	|| (slf.guild == GIL_SKELETON_MAGE)
	|| (slf.guild == GIL_STONEGUARDIAN)
	|| (slf.guild == GIL_SWAMPGOLEM)
	{
		slf.protection[PROT_BLUNT]		/=	2;
		slf.protection[PROT_EDGE]		+=	slf.protection[PROT_EDGE]/2;
		slf.protection[PROT_POINT]		*=	2;
	}
	else if (slf.guild == GIL_TREANT)
	{
		slf.protection[PROT_BLUNT]		+=	slf.protection[PROT_BLUNT]/2;
		slf.protection[PROT_EDGE]		/=	2;
		slf.protection[PROT_POINT]		*=	2;
		slf.protection[PROT_FIRE]		=	0;
	}
	else if (slf.guild == GIL_TROLL)
	{
		slf.protection[PROT_POINT]		=	-1;
		slf.protection[PROT_FLY]		=	-1;
	};
};
