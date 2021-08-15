///******************************************************************************************
///	SPL_IceWave
///******************************************************************************************

const int SPL_Cost_IceWave				=	120;
const int SPL_Damage_IceWave			=	60;

///******************************************************************************************
instance Spell_IceWave (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_IceWave;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_IceWave (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceWave/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceWave)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_IceWave()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceWave/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceWave;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
