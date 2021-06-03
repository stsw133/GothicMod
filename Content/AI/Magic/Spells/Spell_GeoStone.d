///******************************************************************************************
///	SPL_GeoStone
///******************************************************************************************

const int SPL_Cost_GeoStone				=	20;
const int SPL_Damage_GeoStone			=	100;

///******************************************************************************************
instance Spell_GeoStone (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_GeoStone;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_GeoStone (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoStone/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoStone)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_GeoStone()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoStone/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoStone;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
