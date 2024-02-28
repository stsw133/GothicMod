///******************************************************************************************
///	SPL_NecCurse
///******************************************************************************************

const int SPL_Cost_NecCurse				=	75;
const int SPL_Max_NecCurse				=	5;
var C_Npc NPC_NecSkeleton;
var int NPC_NecSkeleton_Total;

///******************************************************************************************
instance Spell_NecCurse (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	1;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
//	targetCollectRange					=	1000;
};

func int Spell_Logic_NecCurse (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NecCurse/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecCurse)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecCurse()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecCurse/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecCurse;
	};
	
	if (other.aivar[AIV_DebuffID] == 0)
	{
		other.aivar[AIV_DebuffID] = SPL_NecCurse;
		Wld_PlayEffect ("SPELLFX_FIRESWORD_HIT", other, other, 0, 0, 0, false);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

func void Spell_Summon_NecCurse(var C_Npc slf, var C_Npc oth)
{
	if (NPC_NecSkeleton_Total < SPL_Max_NecCurse && slf.attribute[ATR_POWER] > 0)
	{
		//Wld_StopEffect ("SPELLFX_FIRESWORD_HIT");
		NPC_NecSkeleton_Total += 1;
		Wld_SpawnNpcRange (oth, Skeleton, 1, 100);
		NPC_NecSkeleton = Hlp_GetNpc(Skeleton);
		NpcFn_SetMonsterAsSummoned(NPC_NecSkeleton);
		
		NPC_NecSkeleton.attribute[ATR_HITPOINTS_MAX] = oth.attribute[ATR_HITPOINTS_MAX] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.attribute[ATR_HITPOINTS] = NPC_NecSkeleton.attribute[ATR_HITPOINTS_MAX];
		NPC_NecSkeleton.attribute[ATR_MANA_MAX] = oth.attribute[ATR_MANA_MAX] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.attribute[ATR_MANA] = NPC_NecSkeleton.attribute[ATR_MANA];
		NPC_NecSkeleton.attribute[ATR_STRENGTH] = oth.attribute[ATR_STRENGTH] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.attribute[ATR_DEXTERITY] = oth.attribute[ATR_DEXTERITY] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.attribute[ATR_POWER] = oth.attribute[ATR_POWER] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		
		NPC_NecSkeleton.protection[PROT_BLUNT] = oth.protection[PROT_BLUNT] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.protection[PROT_EDGE] = oth.protection[PROT_EDGE] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.protection[PROT_FIRE] = oth.protection[PROT_FIRE] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.protection[PROT_FLY] = oth.protection[PROT_FLY] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.protection[PROT_MAGIC] = oth.protection[PROT_MAGIC] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
		NPC_NecSkeleton.protection[PROT_POINT] = oth.protection[PROT_POINT] * slf.attribute[ATR_POWER] / (slf.attribute[ATR_POWER] + 100);
	};
};
