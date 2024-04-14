///******************************************************************************************
/// SPL_Inflate
///******************************************************************************************

const int SPL_Cost_Inflate				=	125;
const int SPL_Damage_Inflate			=	0;
const int SPL_Time_Inflate				=	20;

///******************************************************************************************
instance Spell_Inflate (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Inflate;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Inflate (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_Inflate, manaInvested);
};

func void Spell_Cast_Inflate()
{
	B_SpellCast (self, 3, SPL_Cost_Inflate);
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	&& (other.guild < GIL_SEPERATOR_HUM && other.guild != GIL_KDF && other.guild != GIL_DMT && other.guild != GIL_PAL)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_Inflate, 0, "");
	};
};
