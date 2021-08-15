///******************************************************************************************
///	SPL_BloodFireball
///******************************************************************************************

const int SPL_Cost_BloodFireball		=	15;
const int SPL_Damage_BloodFireball		=	75;

///******************************************************************************************
instance Spell_BloodFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BloodFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BloodFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_BloodFireball/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_BloodFireball)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_BloodFireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BloodFireball/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BloodFireball;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
