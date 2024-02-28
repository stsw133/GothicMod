///******************************************************************************************
///	SPL_PyrFireball
///******************************************************************************************

const int SPL_Cost_PyrFireball			=	25;
const int SPL_Damage_PyrFireball		=	25;

///******************************************************************************************
instance Spell_PyrFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_PyrFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PyrFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PyrFireball/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrFireball)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrFireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFireball/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrFireball;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
