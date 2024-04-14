///******************************************************************************************
/// SPL_PalBless
///******************************************************************************************

const int SPL_Cost_PalBless				=	10;

///******************************************************************************************
instance Spell_PalBless (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_PalBless (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_PalBless, manaInvested);
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
