///******************************************************************************************
///	SPL_PalBless
///******************************************************************************************

const int SPL_Cost_PalBless				=	5;

///******************************************************************************************
instance Spell_PalBless (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_PalBless (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalBless/SPL_Cost_Scroll))
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
	if (Npc_IsPlayer(self))
	{
		if (!SPL_IsActive_PalBless)
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
	
	self.aivar[AIV_SelectSpell] += 1;
};
