///******************************************************************************************
/// SPL_SummonGolem
///******************************************************************************************

const int SPL_Cost_SummonGolem			=	125;
var C_Npc NPC_SummonedGolem;

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
		if (!Npc_IsDead(NPC_SummonedGolem))
		{
			NPC_SummonedGolem.attribute[ATR_HITPOINTS] = 0;
		};
		
		Wld_SpawnNpcRange (self, StoneGolem, 1, 500);
		NPC_SummonedGolem = Hlp_GetNpc(StoneGolem);
		NpcFn_SetMonsterAsSummoned(NPC_SummonedGolem, false);
		NPC_SummonedGolem.aivar[AIV_SummonTime] = -1;
		//AI_PlayAniBS (NPC_SummonedGolem, "T_SPAWN", BS_UNCONSCIOUS);
		
		NPC_SummonedGolem.attribute[ATR_HITPOINTS_MAX] = 800 + other.attribute[ATR_POWER];
		NPC_SummonedGolem.attribute[ATR_HITPOINTS] = NPC_SummonedGolem.attribute[ATR_HITPOINTS_MAX];
		NPC_SummonedGolem.attribute[ATR_MANA_MAX] = 200 + other.attribute[ATR_POWER]/2;
		NPC_SummonedGolem.attribute[ATR_MANA] = NPC_SummonedGolem.attribute[ATR_MANA_MAX];
		NPC_SummonedGolem.attribute[ATR_STRENGTH] = 100 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.attribute[ATR_DEXTERITY] = 100 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.attribute[ATR_POWER] = 100 + other.attribute[ATR_POWER]/5;
		
		NPC_SummonedGolem.protection[PROT_BARRIER] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.protection[PROT_BLUNT] = 100 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.protection[PROT_EDGE] = 300 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.protection[PROT_FIRE] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.protection[PROT_FLY] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.protection[PROT_MAGIC] = 200 + other.attribute[ATR_POWER]/5;
		NPC_SummonedGolem.protection[PROT_POINT] = 300 + other.attribute[ATR_POWER]/5;
	}
	else
	{
		Wld_SpawnNpcRange (self, StoneGolem, 1, 500);
	};
};
