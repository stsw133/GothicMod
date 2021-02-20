//******************************************************************************************
//	SPL_Zap
//******************************************************************************************

const int SPL_Cost_Zap					=	5;
const int SPL_Damage_Zap				=	25;

//******************************************************************************************
INSTANCE Spell_Zap (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Zap;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Zap (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Zap/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Zap)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Zap (var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Zap/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Zap/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Zap)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Zap;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
