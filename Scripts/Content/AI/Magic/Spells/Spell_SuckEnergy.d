///******************************************************************************************
/// SPL_SuckEnergy
///******************************************************************************************

const int SPL_Cost_SuckEnergy			=	50;
const int SPL_Damage_SuckEnergy			=	100;
const int SPL_Time_SuckEnergy			=	10;

///******************************************************************************************
instance Spell_SuckEnergy (C_Spell_Proto)
{
	time_per_mana						=	50;
	damage_per_level					=	SPL_Damage_SuckEnergy;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_SuckEnergy (var int manaInvested)
{
	if (manaInvested == 0)
	{
		return SPL_RECEIVEINVEST;
	};
	
	return B_SpellLogic (self, default, SPL_Cost_SuckEnergy, manaInvested);
};

func void Spell_Cast_SuckEnergy()
{
	B_SpellCast (self, default, SPL_Cost_SuckEnergy);
};
