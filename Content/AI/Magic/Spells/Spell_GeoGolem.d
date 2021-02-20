///******************************************************************************************
///	SPL_GeoGolem
///******************************************************************************************

const int SPL_Cost_GeoGolem				=	80;
const int SPL_Level_GeoGolem			=	15;

var C_NPC NPC_GeoGolem;

///******************************************************************************************
INSTANCE Spell_GeoGolem (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_GeoGolem (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem))
	|| (!Npc_IsDead(NPC_GeoGolem))
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_GeoGolem()
{
	if (Npc_IsDead(NPC_GeoGolem))
	{
		if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem/5))
		{
			self.attribute[ATR_MANA] -= SPL_Cost_GeoGolem/5;
		}
		else if (self.attribute[ATR_MANA] >= SPL_Cost_GeoGolem)
		{
			self.attribute[ATR_MANA] -= SPL_Cost_GeoGolem;
		};
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		if (Npc_IsDead(NPC_GeoGolem))
		{
			Wld_SpawnNpcRange (self, Summoned_Golem, 1, 500);
			NPC_GeoGolem = Hlp_GetNpc(Summoned_Golem);
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
			NPC_GeoGolem.attribute[ATR_HITPOINTS] = 0;
		};
	}
	else
	{
		Wld_SpawnNpcRange (self, Golem, 1, 500);
	};
};
