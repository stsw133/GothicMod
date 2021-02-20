//******************************************************************************************
//	SPL_Whirlwind
//******************************************************************************************

const int SPL_Cost_Whirlwind			=	30;
const int SPL_Damage_Whirlwind			=	60;
const int SPL_Time_Whirlwind			=	10;	

//******************************************************************************************
INSTANCE Spell_Whirlwind (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Whirlwind;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Whirlwind (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Whirlwind/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Whirlwind)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Whirlwind()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Whirlwind/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Whirlwind/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Whirlwind)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Whirlwind;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
