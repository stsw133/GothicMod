///******************************************************************************************
/// SPL_SummonDemon
///******************************************************************************************

const int SPL_Cost_SummonDemon			=	100;

///******************************************************************************************
instance Spell_SummonDemon (C_Spell_Proto)
{
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_SummonDemon (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_SummonDemon, manaInvested);
};

func void Spell_Cast_nSummonDemon()
{
	B_SpellCast (self, default, SPL_Cost_SummonDemon);
	
	if (Npc_IsPlayer(self))
	{
		Spell_ResetPlayerManagedCreatures();
		
		Wld_SpawnNpcRange (self, Demon, 1, 500);
		var C_Npc Summoned; Summoned = Hlp_GetNpc(Demon);
		NpcFn_SetMonsterAsSummoned(Summoned, false);
		Summoned.aivar[AIV_SummonTime] = -1;
		
		//Npc_ClearAIQueue	(Summoned);
		//AI_PlayAni			(Summoned, "T_SPAWN");
		//AI_Wait				(Summoned, 2);
		
		Summoned.attribute[ATR_HITPOINTS_MAX] = 500 + other.attribute[ATR_POWER];
		Summoned.attribute[ATR_HITPOINTS] = Summoned.attribute[ATR_HITPOINTS_MAX];
		Summoned.attribute[ATR_MANA_MAX] = 250 + other.attribute[ATR_POWER]/2;
		Summoned.attribute[ATR_MANA] = Summoned.attribute[ATR_MANA_MAX];
		Summoned.attribute[ATR_STRENGTH] = 125 + other.attribute[ATR_POWER]/5;
		Summoned.attribute[ATR_DEXTERITY] = 125 + other.attribute[ATR_POWER]/5;
		Summoned.attribute[ATR_POWER] = 125 + other.attribute[ATR_POWER]/5;
		
		Summoned.protection[PROT_BARRIER] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_BLUNT] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_EDGE] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_FIRE] = 300 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_FLY] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_MAGIC] = 200 + other.attribute[ATR_POWER]/5;
		Summoned.protection[PROT_POINT] = 200 + other.attribute[ATR_POWER]/5;
		
		Spell_SetPlayerManagedCreature (0, Summoned);
	}
	else
	{
		Wld_SpawnNpcRange (self, Demon, 1, 500);
	};
};
