///******************************************************************************************
///	SPL_PalBless
///******************************************************************************************

const int SPL_Cost_PalBless				=	2;
const int SPL_Duration_PalBless			=	0;
const int SPL_DailyLimit_PalBless		=	0;

var int SPL_IsActive_PalBless;

///******************************************************************************************
INSTANCE Spell_PalBless (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_PalBless (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalBless/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalBless)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalBless()
{
/*
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalBless/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalBless/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_PalBless)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalBless;
	};
*/
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		if (SPL_IsActive_PalBless == false)
		{
			SPL_IsActive_PalBless = true;
			Wld_PlayEffect ("SPELLFX_PALBLESS_GLOW", self, self, 0, 0, 0, false);
		}
		else
		{
			SPL_IsActive_PalBless = false;
			Wld_StopEffect("SPELLFX_PALBLESS_GLOW");
		};
	};
};
