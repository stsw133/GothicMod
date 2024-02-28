///******************************************************************************************
///	SPL_DestroyUndead
///******************************************************************************************

const int SPL_Cost_DestroyUndead		=	100;	//100
const int SPL_Damage_DestroyUndead		=	100;	//1000
const int SPL_Scaling_DestroyUndead		=	500;

///******************************************************************************************
instance Spell_DestroyUndead (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DestroyUndead;
	damageType							=	DAM_MAGIC;
	spelltype							=	SPELL_NEUTRAL;
};

func int Spell_Logic_DestroyUndead (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_DestroyUndead/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_DestroyUndead)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_DestroyUndead()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DestroyUndead/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DestroyUndead;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
