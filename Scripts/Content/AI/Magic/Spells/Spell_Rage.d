///******************************************************************************************
/// SPL_Rage
///******************************************************************************************

const int SPL_Cost_Rage					=	200;

///******************************************************************************************
instance Spell_Rage (C_Spell_Proto)
{
	spelltype 							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Rage (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_Rage, manaInvested);
};

func void Spell_Cast_Rage()
{
	B_SpellCast (self, 3, SPL_Cost_Rage);
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicRage, 0, "");
		
//		AI_SetNpcsToState (self, ZS_MagicRage, 1000);
	};
};
