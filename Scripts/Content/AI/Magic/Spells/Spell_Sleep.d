///******************************************************************************************
/// SPL_Sleep
///******************************************************************************************

const int SPL_Cost_Sleep				=	50;

///******************************************************************************************
instance Spell_Sleep (C_Spell_Proto)
{
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Sleep (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_Sleep, manaInvested);
};

func void Spell_Cast_Sleep()
{
	B_SpellCast (self, 3, SPL_Cost_Sleep);
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	&& (other.guild < GIL_SEPERATOR_HUM && other.guild != GIL_KDF && other.guild != GIL_DMT && other.guild != GIL_PAL)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicSleep, 0, "");
		
//		AI_SetNpcsToState (self, ZS_MagicSleep, 1000);
	};
};
