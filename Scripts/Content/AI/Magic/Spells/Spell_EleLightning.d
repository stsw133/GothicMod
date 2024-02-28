///******************************************************************************************
///	SPL_EleLightning
///******************************************************************************************

const int SPL_Cost_EleLightning			=	200;
const int SPL_Damage_EleLightning		=	200;

///******************************************************************************************
instance Spell_EleLightning (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EleLightning;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_EleLightning (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_EleLightning/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleLightning)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleLightning()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleLightning/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleLightning;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
