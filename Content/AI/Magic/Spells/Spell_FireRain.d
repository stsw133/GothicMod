//******************************************************************************************
//	SPL_FireRain
//******************************************************************************************

const int SPL_Cost_FireRain				=	150;
const int SPL_Damage_FireRain			=	500;

//******************************************************************************************
INSTANCE Spell_FireRain (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_FireRain;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_FireRain (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_FireRain/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_FireRain)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_FireRain()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_FireRain/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_FireRain/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_FireRain)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_FireRain;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
