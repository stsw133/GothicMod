///******************************************************************************************
///	SPL_BeliarRage
///******************************************************************************************

const int SPL_Cost_BeliarRage			=	20;	//100
const int SPL_Damage_BeliarRage			=	100;	//200

///******************************************************************************************
instance Spell_BeliarRage (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BeliarRage+(BeliarWeapon_LastUpgradeLvl*3);
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BeliarRage (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= (SPL_Cost_BeliarRage+BeliarWeapon_LastUpgradeLvl)/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_BeliarRage+BeliarWeapon_LastUpgradeLvl)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_BeliarRage()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= (SPL_Cost_BeliarRage+BeliarWeapon_LastUpgradeLvl)/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_BeliarRage+BeliarWeapon_LastUpgradeLvl;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
