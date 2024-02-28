///******************************************************************************************
///	SPL_PalJustice
///******************************************************************************************

const int SPL_Cost_PalJustice			=	100;

///******************************************************************************************
instance Spell_PalJustice (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_PalJustice (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PalJustice/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalJustice)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PalJustice()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalJustice/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalJustice;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
