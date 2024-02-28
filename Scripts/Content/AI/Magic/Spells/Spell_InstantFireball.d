///******************************************************************************************
///	SPL_InstantFireball
///******************************************************************************************

const int SPL_Cost_InstantFireball		=	30;	//15
const int SPL_Damage_InstantFireball	=	30;	//75
const int SPL_Scaling_InstantFireball	=	110;

///******************************************************************************************
instance Spell_InstantFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_InstantFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_InstantFireball (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_InstantFireball/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_InstantFireball)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_InstantFireball()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_InstantFireball/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_InstantFireball;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
