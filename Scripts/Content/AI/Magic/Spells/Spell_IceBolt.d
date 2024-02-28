///******************************************************************************************
///	SPL_IceBolt
///******************************************************************************************

const int SPL_Cost_IceBolt				=	5;	//10
const int SPL_Damage_IceBolt			=	5;	//50
const int SPL_Scaling_IceBolt			=	90;

///******************************************************************************************
instance Spell_IceBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_IceBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_IceBolt/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceBolt)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_IceBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
