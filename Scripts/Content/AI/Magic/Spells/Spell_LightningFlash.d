///******************************************************************************************
///	SPL_LightningFlash
///******************************************************************************************

const int SPL_Cost_LightningFlash		=	30;
const int SPL_Damage_LightningFlash		=	30;	//150
const int SPL_Scaling_LightningFlash	=	250;

///******************************************************************************************
instance Spell_LightningFlash (C_Spell_Proto)
{
	time_per_mana						=	0;
//	damage_per_level					=	SPL_Damage_LightningFlash;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_LightningFlash (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_LightningFlash()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_LightningFlash/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_LightningFlash;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
