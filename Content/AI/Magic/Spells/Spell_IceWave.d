//******************************************************************************************
//	SPL_IceWave
//******************************************************************************************

const int SPL_Cost_IceWave				=	120;
const int SPL_Damage_IceWave			=	60;

//******************************************************************************************
INSTANCE Spell_IceWave (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_IceWave;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_IceWave (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceWave/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceWave)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_IceWave()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceWave/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceWave/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_IceWave)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceWave;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
