//******************************************************************************************
//	SPL_WaterFist
//******************************************************************************************

const int SPL_Cost_WaterFist			=	25;
const int SPL_Damage_WaterFist			=	125;

//******************************************************************************************
INSTANCE Spell_WaterFist (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_WaterFist;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_WaterFist (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_WaterFist/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_WaterFist)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_WaterFist()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_WaterFist/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_WaterFist/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_WaterFist)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_WaterFist;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
