///******************************************************************************************
///	SPL_InstantFireball
///******************************************************************************************

const int SPL_Cost_Geyser				=	75;
const int SPL_Damage_Geyser				=	150;

///******************************************************************************************
instance Spell_Geyser (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Geyser;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Geyser (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Geyser/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Geyser)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Geyser()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Geyser/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Geyser;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
