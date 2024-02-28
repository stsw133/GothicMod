///******************************************************************************************
///	SPL_IceCube
///******************************************************************************************

const int SPL_Cost_IceCube				=	75;	//60
const int SPL_Damage_IceCube			=	75;	//60
const int SPL_Scaling_IceCube			=	140;

///******************************************************************************************
instance Spell_IceCube (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_IceCube;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceCube (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_IceCube/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceCube)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_IceCube()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceCube/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceCube;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
