///******************************************************************************************
///	SPL_GeoGolem
///******************************************************************************************

const int SPL_Cost_GeoGolem				=	80;
var C_Npc NPC_GeoGolem;

///******************************************************************************************
instance Spell_GeoGolem (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_GeoGolem (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoGolem()
{
	if (Npc_IsDead(NPC_GeoGolem))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] -= SPL_Cost_GeoGolem/SPL_Cost_Scroll;
		}
		else
		{
			self.attribute[ATR_MANA] -= SPL_Cost_GeoGolem;
		};
	};
	
	if (Npc_IsPlayer(self))
	{
		if (!Npc_IsDead(NPC_GeoGolem))
		{
			NPC_GeoGolem.attribute[ATR_HITPOINTS] = 0;
		};
		
		Wld_SpawnNpcRange (self, Summoned_Golem, 1, 500);
		NPC_GeoGolem = Hlp_GetNpc(Summoned_Golem);
		NPC_GeoGolem.aivar[AIV_SummonTime] = -1;
		//AI_PlayAniBS (NPC_GeoGolem, "T_SPAWN", BS_UNCONSCIOUS);
		
		NPC_GeoGolem.attribute[ATR_STRENGTH] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.attribute[ATR_STRENGTH]/100);
		NPC_GeoGolem.attribute[ATR_HITPOINTS_MAX] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.attribute[ATR_HITPOINTS_MAX]/100);
		NPC_GeoGolem.attribute[ATR_HITPOINTS] = NPC_GeoGolem.attribute[ATR_HITPOINTS_MAX];
		
		NPC_GeoGolem.protection[PROT_BLUNT] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.protection[PROT_BLUNT]/100);
		NPC_GeoGolem.protection[PROT_EDGE] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.protection[PROT_EDGE]/100);
		NPC_GeoGolem.protection[PROT_POINT] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.protection[PROT_POINT]/100);
		NPC_GeoGolem.protection[PROT_FIRE] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.protection[PROT_FIRE]/100);
		NPC_GeoGolem.protection[PROT_FLY] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.protection[PROT_FLY]/100);
		NPC_GeoGolem.protection[PROT_MAGIC] += (hero.damage[DAM_INDEX_MAGIC] * NPC_GeoGolem.protection[PROT_MAGIC]/100);
	}
	else
	{
		Wld_SpawnNpcRange (self, Golem, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
///******************************************************************************************
///	SPL_SummonGolem
///******************************************************************************************

const int SPL_Cost_SummonGolem			=	80;

///******************************************************************************************
instance Spell_SummonGolem (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonGolem (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonGolem/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SummonGolem)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_SummonGolem()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonGolem/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SummonGolem;
	};
	
	if (Npc_IsPlayer(self))
	{
		Wld_SpawnNpcRange (self, Summoned_Golem, 1, 500);
	}
	else
	{
		Wld_SpawnNpcRange (self, Golem, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/