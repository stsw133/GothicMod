///******************************************************************************************
///	SPL_EleFreeze
///******************************************************************************************

const int SPL_Cost_EleFreeze			=	75;
const int SPL_Time_EleFreeze			=	10;
const int SPL_Damage_EleFreeze			=	10;

///******************************************************************************************
instance Spell_EleFreeze (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EleFreeze;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_EleFreeze (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_EleFreeze/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleFreeze)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleFreeze()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleFreeze/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleFreeze;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
