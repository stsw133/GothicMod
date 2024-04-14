///******************************************************************************************
/// SPL_Summon
///******************************************************************************************

const int SPL_Cost_Summon				=	0;

///******************************************************************************************
instance Spell_Summon (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_Summon (var int manaInvested)
{
	return SPL_SENDCAST;
};

func void Spell_Cast_Summon()
{
	B_SpellCast (self, default, SPL_Cost_Summon);
	
	var oCNpc o_self; o_self = Hlp_GetNpc(self);
	var int magBook; magBook = o_self.mag_Book;
	
	if (magBook > 0)
	{
		var int itHlp; itHlp = QS_GetSpellItem(magBook);
		var C_Item it; it = MEM_PtrToInst(itHlp);
		var C_Npc Summoned;
		
		if		(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_Demon))			{	Wld_SpawnNpcRange(self, Demon, 1, 500);				Summoned = Hlp_GetNpc(Demon);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_Gobbo_Skeleton))	{	Wld_SpawnNpcRange(self, Gobbo_Skeleton, 1, 500);	Summoned = Hlp_GetNpc(Gobbo_Skeleton);	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_Golem))			{	Wld_SpawnNpcRange(self, Golem, 1, 500);				Summoned = Hlp_GetNpc(Golem);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_Skeleton))			{	Wld_SpawnNpcRange(self, Skeleton, 1, 500);			Summoned = Hlp_GetNpc(Skeleton);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_StoneGuardian))	{	Wld_SpawnNpcRange(self, StoneGuardian, 1, 500);		Summoned = Hlp_GetNpc(StoneGuardian);	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_Wolf_Skeleton))	{	Wld_SpawnNpcRange(self, Wolf_Skeleton, 1, 500);		Summoned = Hlp_GetNpc(Wolf_Skeleton);	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSu_Zombie))			{	Wld_SpawnNpcRange(self, Zombie, 1, 500);			Summoned = Hlp_GetNpc(Zombie);			}
		else																		{	Wld_SpawnNpcRange(self, Meatbug, 1, 500);			Summoned = Hlp_GetNpc(Meatbug);			};
		
		NpcFn_SetMonsterAsSummoned(Summoned, false);
	};
};
