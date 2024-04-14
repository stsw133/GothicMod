///******************************************************************************************
/// SPL_ArmyOfDarkness
///******************************************************************************************

const int SPL_Cost_ArmyOfDarkness		=	300;

///******************************************************************************************
instance Spell_ArmyOfDarkness (C_Spell_Proto)
{
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_ArmyOfDarkness (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_ArmyOfDarkness, manaInvested);
};

func void Spell_Cast_ArmyOfDarkness()
{
	B_SpellCast (self, default, SPL_Cost_ArmyOfDarkness);
	
	var C_Npc Summoned;
	Wld_SpawnNpcRange(self, Skeleton, 1, 800); Summoned = Hlp_GetNpc(Skeleton); NpcFn_SetMonsterAsSummoned(Summoned, false);
	Wld_SpawnNpcRange(self, Skeleton, 1, 800); Summoned = Hlp_GetNpc(Skeleton); NpcFn_SetMonsterAsSummoned(Summoned, false);
	Wld_SpawnNpcRange(self, Skeleton, 1, 800); Summoned = Hlp_GetNpc(Skeleton); NpcFn_SetMonsterAsSummoned(Summoned, false);
	Wld_SpawnNpcRange(self, Skeleton, 1, 800); Summoned = Hlp_GetNpc(Skeleton); NpcFn_SetMonsterAsSummoned(Summoned, false);
	Wld_SpawnNpcRange(self, Skeleton, 1, 800); Summoned = Hlp_GetNpc(Skeleton); NpcFn_SetMonsterAsSummoned(Summoned, false);
};
