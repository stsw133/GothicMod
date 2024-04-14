///******************************************************************************************
/// SPL_Resurrection
///******************************************************************************************

const int SPL_Cost_Resurrection			=	50;

///******************************************************************************************
instance Spell_Resurrection (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func void Spell_Effect_Resurrection(var C_Npc oth, var C_Npc slf)
{
	if (Npc_GetDistToNpc(slf, oth) < 1000 && oth.attribute[ATR_HITPOINTS] < 1 && Npc_GetPermAttitude(oth, slf) != ATT_HOSTILE)
	{
		oth.attribute[ATR_HITPOINTS] = 1;
		
		Wld_PlayEffect ("spellFX_Resurrection_COLLIDEDYNFX", oth, oth, 0, 0, 0, false);
		
		Npc_ClearAIQueue	(oth);
		B_ClearPerceptions	(oth);
		AI_PlayAni			(oth, "S_SUCKENERGY_VICTIM");
		AI_StandUp			(oth);
	};
};

func int Spell_Logic_Resurrection (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Resurrection, manaInvested);
};

func void Spell_Cast_Resurrection()
{
	B_SpellCast (self, default, SPL_Cost_Resurrection);
	
	MOD_BroadcastEx (self, Spell_Effect_Resurrection, false, true, false);
};
