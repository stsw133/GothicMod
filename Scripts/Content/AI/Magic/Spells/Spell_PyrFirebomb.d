///******************************************************************************************
///	SPL_PyrFirebomb
///******************************************************************************************

const int SPL_Cost_PyrFirebomb			=	125;
const int SPL_Damage_PyrFirebomb		=	125;

///******************************************************************************************
instance Spell_PyrFirebomb (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_PyrFirebomb;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PyrFirebomb (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PyrFirebomb/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrFirebomb)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrFirebomb()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFirebomb/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFirebomb;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
