///******************************************************************************************
/// SPL_Fear
///******************************************************************************************

const int SPL_Cost_Fear					=	75;

///******************************************************************************************
instance Spell_Fear (C_Spell_Proto)
{
	spelltype 							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Fear (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_Fear, manaInvested);
};

func void Spell_Cast_Fear()
{
	B_SpellCast (self, 3, SPL_Cost_Fear);
	
	AI_SetNpcsToState (self, ZS_MagicFlee, 1000);
	/*
	if (other.guild < GIL_SEPERATOR_HUM && other.guild != GIL_KDF && other.guild != GIL_PAL)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicFlee, 0, "");
		
//		AI_SetNpcsToState (self, ZS_MagicFlee, 1000);
	}
	else if (other.guild > GIL_SEPERATOR_HUM && other.guild != GIL_DRAGON && other.guild != GIL_TROLL && other.guild != GIL_GOLEM)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MM_Flee, 0, "");
		
//		AI_SetNpcsToState (self, ZS_MM_Flee, 1000);
	};
	*/
};
