///******************************************************************************************
/// SPL_SummonDemon
///******************************************************************************************

const int SPL_Cost_SummonDemon			=	200;
var C_Npc NPC_SummonedDemon;

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
		if (!Npc_IsDead(NPC_SummonedDemon))
		{
			NPC_SummonedDemon.attribute[ATR_HITPOINTS] = 0;
		};
		
		Wld_SpawnNpcRange (self, Demon, 1, 500);
		NPC_SummonedDemon = Hlp_GetNpc(Demon);
		NpcFn_SetMonsterAsSummoned(NPC_SummonedDemon, false);
		NPC_SummonedDemon.aivar[AIV_SummonTime] = -1;
		//AI_PlayAniBS (NPC_SummonedDemon, "T_SPAWN", BS_UNCONSCIOUS);
		
		NPC_SummonedDemon.attribute[ATR_HITPOINTS_MAX] = 500 + other.attribute[ATR_POWER];
		NPC_SummonedDemon.attribute[ATR_HITPOINTS] = NPC_SummonedDemon.attribute[ATR_HITPOINTS_MAX];
		NPC_SummonedDemon.attribute[ATR_MANA_MAX] = 250 + other.attribute[ATR_POWER]/2;
		NPC_SummonedDemon.attribute[ATR_MANA] = NPC_SummonedDemon.attribute[ATR_MANA_MAX];
		NPC_SummonedDemon.attribute[ATR_STRENGTH] = 125 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.attribute[ATR_DEXTERITY] = 125 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.attribute[ATR_POWER] = 125 + other.attribute[ATR_POWER]/5;
		
		NPC_SummonedDemon.protection[PROT_BARRIER] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.protection[PROT_BLUNT] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.protection[PROT_EDGE] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.protection[PROT_FIRE] = 300 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.protection[PROT_FLY] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.protection[PROT_MAGIC] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedDemon.protection[PROT_POINT] = 200 + other.attribute[ATR_POWER]/5;
	}
	else
	{
		Wld_SpawnNpcRange (self, Demon, 1, 500);
	};
};
