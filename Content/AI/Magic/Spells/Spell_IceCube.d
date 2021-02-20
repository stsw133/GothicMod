//******************************************************************************************
//	SPL_InstantFireball
//******************************************************************************************

const int	SPL_Cost_IceCube			=	40;
const int	SPL_Damage_IceCube			=	60;

//******************************************************************************************
INSTANCE Spell_IceCube (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_IceCube;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceCube (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceCube/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceCube)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_IceCube()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceCube/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceCube/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_IceCube)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceCube;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
