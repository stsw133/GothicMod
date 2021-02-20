//******************************************************************************************
//	SPL_LightningFlash
//******************************************************************************************

const int SPL_Cost_LightningFlash		=	30;
const int SPL_Damage_LightningFlash		=	150;

//******************************************************************************************
INSTANCE Spell_LightningFlash (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_LightningFlash;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_LightningFlash (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_LightningFlash()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_LightningFlash/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_LightningFlash;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
