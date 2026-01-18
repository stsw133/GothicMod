///******************************************************************************************
/// SPL_SummonGolem
///******************************************************************************************

const int SPL_Cost_SummonGolem			=	75;

///******************************************************************************************
instance Spell_SummonGolem (C_Spell_Proto)
{
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_SummonGolem (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_SummonGolem, manaInvested);
};

func void Spell_Cast_nSummonGolem()
{
	B_SpellCast (self, default, SPL_Cost_SummonGolem);
	
	if (Npc_IsPlayer(self))
	{
		Spell_ResetPlayerManagedCreatures();
		
		Wld_SpawnNpcRange (self, StoneGolem, 1, 500);
		var C_Npc Summoned; Summoned = Hlp_GetNpc(StoneGolem);
		NpcFn_SetMonsterAsSummoned(Summoned, false);
		Summoned.aivar[AIV_SummonTime] = -1;
		
		//Npc_ClearAIQueue	(Summoned);
		//AI_PlayAni			(Summoned, "T_SPAWN");
		//AI_Wait				(Summoned, 2);
		
		Summoned.attribute[ATR_HITPOINTS_MAX] = 800 + other.attribute[ATR_POWER];
		Summoned.attribute[ATR_HITPOINTS] = Summoned.attribute[ATR_HITPOINTS_MAX];
		Summoned.attribute[ATR_MANA_MAX] = 200 + other.attribute[ATR_POWER]/2;
		Summoned.attribute[ATR_MANA] = Summoned.attribute[ATR_MANA_MAX];
		Summoned.attribute[ATR_STRENGTH] = 100 + other.attribute[ATR_POWER]/5;
		Summoned.attribute[ATR_DEXTERITY] = 100 + other.attribute[ATR_POWER]/5;
		Summoned.attribute[ATR_POWER] = 100 + other.attribute[ATR_POWER]/5;
		
		Summoned.protection[PROT_BARRIER] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_BLUNT] = 100 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_EDGE] = 300 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_FIRE] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_FLY] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_MAGIC] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_POINT] = 300 + other.attribute[ATR_POWER]/5;
		
		Spell_SetPlayerManagedCreature (0, Summoned);
	}
	else
	{
		Wld_SpawnNpcRange (self, StoneGolem, 1, 500);
	};
};
