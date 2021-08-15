///******************************************************************************************
///	SPL_EleHurricane
///******************************************************************************************

const int SPL_Cost_EleHurricane			=	80;
const int SPL_Damage_EleHurricane		=	50;

///******************************************************************************************
instance Spell_EleHurricane (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EleHurricane;
	damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	1000;
	//targetCollectType					=	TARGET_TYPE_NPCS;
};

func int Spell_Logic_EleHurricane (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_EleHurricane/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleHurricane)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleHurricane()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleHurricane/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleHurricane;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
