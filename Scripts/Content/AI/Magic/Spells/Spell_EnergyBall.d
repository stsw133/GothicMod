///******************************************************************************************
///	SPL_EnergyBall
///******************************************************************************************

const int SPL_Cost_EnergyBall			=	150;	//100
const int SPL_Damage_EnergyBall			=	300;	//200

///******************************************************************************************
instance Spell_EnergyBall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EnergyBall;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_EnergyBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_EnergyBall/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EnergyBall)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_EnergyBall()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EnergyBall/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EnergyBall;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
