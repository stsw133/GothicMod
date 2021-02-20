//******************************************************************************************
//	SPL_Skull
//******************************************************************************************

const int SPL_Cost_Skull				=	250;
const int SPL_Damage_Skull				=	666;

//******************************************************************************************
INSTANCE Spell_Skull (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Skull;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Skull (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Skull/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Skull)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Skull()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_InstantFireball/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Skull/5;
		self.attribute[ATR_MANA] /= 5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_InstantFireball)
	{
		self.attribute[ATR_MANA] = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
