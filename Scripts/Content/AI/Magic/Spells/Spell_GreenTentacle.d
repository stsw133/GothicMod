///******************************************************************************************
///	SPL_GreenTentacle
///******************************************************************************************

const int SPL_Cost_GreenTentacle		=	50;	//50
const int SPL_Time_GreenTentacle		=	20;	//20
const int SPL_Damage_GreenTentacle		=	0;	//0

///******************************************************************************************
instance Spell_Greententacle (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_GreenTentacle;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1500;
};

func int Spell_Logic_Greententacle (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_GreenTentacle/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GreenTentacle)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Greententacle()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GreenTentacle/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GreenTentacle;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
