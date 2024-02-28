///******************************************************************************************
///	SPL_GeoGolem
///******************************************************************************************

const int SPL_Cost_GeoGolem				=	125;
const int SPL_BonusHP_GeoGolem			=	120;
const int SPL_BonusStr_GeoGolem			=	80;
var C_Npc NPC_GeoGolem;

///******************************************************************************************
instance Spell_GeoGolem (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_GeoGolem (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoGolem()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoGolem/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoGolem;
	};
	
	if (Npc_IsPlayer(self))
	{
		if (!Npc_IsDead(NPC_GeoGolem))
		{
			NPC_GeoGolem.attribute[ATR_HITPOINTS] = 0;
		};
		
		Wld_SpawnNpcRange (self, Golem, 1, 500);
		NPC_GeoGolem = Hlp_GetNpc(Golem);
		NpcFn_SetMonsterAsSummoned(NPC_GeoGolem);
		NPC_GeoGolem.aivar[AIV_SummonTime] = -1;
		//AI_PlayAniBS (NPC_GeoGolem, "T_SPAWN", BS_UNCONSCIOUS);
		
		NPC_GeoGolem.attribute[ATR_STRENGTH] += self.attribute[ATR_POWER] * SPL_BonusStr_GeoGolem / 100;
		NPC_GeoGolem.attribute[ATR_HITPOINTS_MAX] += self.attribute[ATR_POWER] * SPL_BonusHP_GeoGolem / 100;
		NPC_GeoGolem.attribute[ATR_HITPOINTS] = NPC_GeoGolem.attribute[ATR_HITPOINTS_MAX];
	}
	else
	{
		Wld_SpawnNpcRange (self, Golem, 1, 500);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
