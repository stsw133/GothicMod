///******************************************************************************************
///	SPL_MysSlow
///******************************************************************************************

const int SPL_Cost_MysSlow				=	300;
const int SPL_Damage_MysSlow			=	300;

///******************************************************************************************
instance Spell_MysSlow (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MysSlow;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MysSlow (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysSlow/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysSlow)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysSlow()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysSlow/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysSlow;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
