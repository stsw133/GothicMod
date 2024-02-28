///******************************************************************************************
///	SPL_NecDemon
///******************************************************************************************

const int SPL_Cost_NecDemon				=	200;
const int SPL_BonusHP_NecDemon			=	500;
const int SPL_BonusStr_NecDemon			=	125;
var C_Npc NPC_NecDemon;

///******************************************************************************************
instance Spell_NecDemon (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_NecDemon (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NecDemon/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecDemon)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecDemon()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecDemon/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecDemon;
	};
	
	if (Npc_IsPlayer(self))
	{
		if (!Npc_IsDead(NPC_NecDemon))
		{
			NPC_NecDemon.attribute[ATR_HITPOINTS] = 0;
		};
		
		Wld_SpawnNpcRange (self, Demon, 1, 500);
		NPC_NecDemon = Hlp_GetNpc(Demon);
		NpcFn_SetMonsterAsSummoned(NPC_NecDemon);
		NPC_NecDemon.aivar[AIV_SummonTime] = -1;
		//AI_PlayAniBS (NPC_NecDemon, "T_SPAWN", BS_UNCONSCIOUS);
		
		NPC_NecDemon.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_POWER]*SPL_BonusHP_NecDemon/100;
		NPC_NecDemon.attribute[ATR_HITPOINTS] = NPC_NecDemon.attribute[ATR_HITPOINTS_MAX];
		NPC_NecDemon.attribute[ATR_STRENGTH] = self.attribute[ATR_POWER]*SPL_BonusStr_NecDemon/100;
		NPC_NecDemon.attribute[ATR_DEXTERITY] = self.attribute[ATR_POWER]*SPL_BonusStr_NecDemon/100;
	}
	else
	{
		Wld_SpawnNpcRange (self, Demon, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
