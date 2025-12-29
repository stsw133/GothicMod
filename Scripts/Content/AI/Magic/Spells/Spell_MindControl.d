///******************************************************************************************
/// SPL_MindControl
///******************************************************************************************

const int SPL_Cost_MindControl			=	200;

///******************************************************************************************
instance Spell_MindControl (C_Spell_Proto)
{
	spelltype 							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_MindControl (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_MindControl, manaInvested);
};

func void Spell_Cast_MindControl()
{
	B_SpellCast (self, 3, SPL_Cost_MindControl);
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
//		AI_StartState		(other, ZS_Control, 0, "");
	};
};
