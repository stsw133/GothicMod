///******************************************************************************************
/// SPL_Seduction
///******************************************************************************************

const int SPL_Cost_Seduction			=	75;

///******************************************************************************************
instance Spell_Seduction (C_Spell_Proto)
{
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	5000;
};

func int Spell_Logic_Seduction (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_Seduction, manaInvested);
};

func void Spell_Cast_Seduction()
{
	B_SpellCast (self, 3, SPL_Cost_Seduction);
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 5000)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StandUp			(other);
		AI_SetWalkmode		(other, NPC_RUN);
		AI_GotoNpc			(other, self);
		AI_ContinueRoutine	(other);
	};
};
