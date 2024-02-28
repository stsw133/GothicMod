///******************************************************************************************
///	SPL_PyrBurning
///******************************************************************************************

const int SPL_Cost_PyrBurning			=	75;
const int SPL_Damage_PyrBurning			=	75;

///******************************************************************************************
instance Spell_PyrBurning (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_PyrBurning;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PyrBurning (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PyrBurning/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrBurning)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrBurning()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrBurning/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrBurning;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
