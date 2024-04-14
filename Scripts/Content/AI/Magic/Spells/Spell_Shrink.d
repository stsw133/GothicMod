///******************************************************************************************
/// SPL_Shrink
///******************************************************************************************

const int SPL_Cost_Shrink				=	300;

///******************************************************************************************
instance Spell_Shrink (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Shrink	(var int manaInvested)
{
	if (other.aivar[AIV_ShrinkState] > 0)
	{
		Print("U¿ycie niedozwolone wielokrotnie na tym samym celu!");
		return SPL_SENDSTOP;
	}
	else if (!(C_NpcIsUndead(other) || other.guild > GIL_SEPERATOR_HUM))
	{
		Print("U¿ycie niedozwolone na ludziach i nieumar³ych!");
		return SPL_SENDSTOP;
	};
	
	return B_SpellLogic (self, 3, SPL_Cost_Shrink, manaInvested);
};

func void Spell_Cast_Shrink()
{
	B_SpellCast (self, 3, SPL_Cost_Shrink);
	
	if (other.flags != NPC_FLAG_IMMORTAL)
	&& (other.aivar[AIV_ShrinkState] < 14)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicShrink, 0, "");
	};
};
