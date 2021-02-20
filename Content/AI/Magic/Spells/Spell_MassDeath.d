//******************************************************************************************
//	SPL_MassDeath
//******************************************************************************************

const int SPL_Cost_MassDeath			=	200;
const int SPL_Damage_MassDeath			=	500;

//******************************************************************************************
INSTANCE Spell_MassDeath (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MassDeath;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Massdeath (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassDeath/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MassDeath)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Massdeath()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassDeath/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassDeath/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MassDeath)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
