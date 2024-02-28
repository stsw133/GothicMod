///******************************************************************************************
///	SPL_EleThunderstorm
///******************************************************************************************

const int SPL_Cost_EleThunderstorm		=	300;
const int SPL_Damage_EleThunderstorm	=	300;

///******************************************************************************************
instance Spell_EleThunderstorm (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EleThunderstorm;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_EleThunderstorm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_EleThunderstorm/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleThunderstorm)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleThunderstorm()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleThunderstorm/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleThunderstorm;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
