///******************************************************************************************
///	SPL_nLight
///******************************************************************************************

const int SPL_Cost_nLight				=	5;
const int SPL_Time_nLight				=	300;

///******************************************************************************************
instance Spell_nLight (C_Spell_Proto)
{
	time_per_mana						=	500;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_nLight (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_nLight/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_nLight)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_nLight()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_nLight/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_nLight;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
