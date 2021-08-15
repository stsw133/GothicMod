///******************************************************************************************
///	SPL_EleKinesis
///******************************************************************************************

const int SPL_Cost_EleKinesis			=	100;
const int SPL_Damage_EleKinesis			=	100;

///******************************************************************************************
instance Spell_EleKinesis (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EleKinesis;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_EleKinesis (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_EleKinesis/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleKinesis)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleKinesis()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleKinesis/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleKinesis;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
