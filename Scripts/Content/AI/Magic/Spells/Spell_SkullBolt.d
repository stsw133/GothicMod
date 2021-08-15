///******************************************************************************************
///	SPL_SkullBolt
///******************************************************************************************

const int SPL_Cost_SkullBolt			=	10;
const int SPL_Damage_SkullBolt			=	50;

///******************************************************************************************
instance Spell_SkullBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_SkullBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_SkullBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SkullBolt/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SkullBolt)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_SkullBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SkullBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SkullBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
