//******************************************************************************************
//	SPL_IceLance
//******************************************************************************************

const int SPL_Cost_IceLance				=	20;
const int SPL_Damage_IceLance			=	100;

//******************************************************************************************
INSTANCE Spell_Icelance (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Icelance;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceLance (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceLance/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceLance)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_IceLance()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceLance/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceLance/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_IceLance)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceLance;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
