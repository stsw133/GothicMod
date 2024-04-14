///******************************************************************************************
/// SPL_Swarm
///******************************************************************************************

const int SPL_Cost_Swarm				=	125;
const int SPL_Damage_Swarm				=	125;
const int SPL_Time_Swarm				=	5;

///******************************************************************************************
instance Spell_Swarm (C_Spell_Proto)
{
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Swarm (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Swarm, manaInvested);
};

func void Spell_Cast_Swarm()
{
	B_SpellCast (self, default, SPL_Cost_Swarm);
};
