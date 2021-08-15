///******************************************************************************************
///	SPL_NecDemon
///******************************************************************************************

const int SPL_Cost_NecDemon				=	100;
var C_Npc NPC_NecDemon;

///******************************************************************************************
instance Spell_NecDemon (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_NecDemon (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_NecDemon/SPL_Cost_Scroll))
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
		
		Wld_SpawnNpcRange (self, Summoned_Demon, 1, 500);
		NPC_NecDemon = Hlp_GetNpc(Summoned_Demon);
		NPC_NecDemon.aivar[AIV_SummonTime] = -1;
		//AI_PlayAniBS (NPC_NecDemon, "T_SPAWN", BS_UNCONSCIOUS);
		
		NPC_NecDemon.attribute[ATR_STRENGTH] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.attribute[ATR_STRENGTH]/100);
		NPC_NecDemon.attribute[ATR_HITPOINTS_MAX] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.attribute[ATR_HITPOINTS_MAX]/100);
		NPC_NecDemon.attribute[ATR_HITPOINTS] = NPC_NecDemon.attribute[ATR_HITPOINTS_MAX];
		
		NPC_NecDemon.protection[PROT_BLUNT] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.protection[PROT_BLUNT]/100);
		NPC_NecDemon.protection[PROT_EDGE] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.protection[PROT_EDGE]/100);
		NPC_NecDemon.protection[PROT_POINT] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.protection[PROT_POINT]/100);
		NPC_NecDemon.protection[PROT_FIRE] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.protection[PROT_FIRE]/100);
		NPC_NecDemon.protection[PROT_FLY] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.protection[PROT_FLY]/100);
		NPC_NecDemon.protection[PROT_MAGIC] += (hero.damage[DAM_INDEX_MAGIC] * NPC_NecDemon.protection[PROT_MAGIC]/100);
	}
	else
	{
		Wld_SpawnNpcRange (self, Demon, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
///******************************************************************************************
///	SPL_SummonDemon
///******************************************************************************************

const int SPL_Cost_SummonDemon			=	120;

///******************************************************************************************
instance Spell_SummonDemon (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonDemon (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonDemon/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SummonDemon)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_SummonDemon()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonDemon/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonDemon;
	};
	
	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange (self, Summoned_Demon, 1, 500);
	}
	else
	{
		Wld_SpawnNpcRange (self, Demon, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/