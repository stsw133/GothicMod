///******************************************************************************************
///	SPL_PalLight
///******************************************************************************************

const int SPL_Cost_PalLight				=	10;
const int SPL_Time_PalLight				=	300;
const int SPL_DailyLimit_PalLight		=	5;

var int SPL_LastUsed_PalLight;
var int SPL_TimeUsed_PalLight;

///******************************************************************************************
INSTANCE Spell_PalLight (C_Spell_Proto)
{
	time_per_mana						=	500;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	1500;
	targetCollectAzi					=	30;
	targetCollectElev					=	30;
};

func int Spell_Logic_PalLight (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalLight/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalLight))
	&& (!Npc_IsPlayer(self) || (SPL_TimeUsed_PalLight < SPL_DailyLimit_PalLight || SPL_LastUsed_PalLight != Wld_GetDay()))
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalLight()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalLight/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalLight/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_PalLight)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalLight;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		if (SPL_LastUsed_PalLight != Wld_GetDay())
		{
			SPL_LastUsed_PalLight = Wld_GetDay();
			SPL_TimeUsed_PalLight = 0;
		};
		SPL_TimeUsed_PalLight += 1;
	};
};
