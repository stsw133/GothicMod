///******************************************************************************************
///	SPL_Rage
///******************************************************************************************

const int SPL_Cost_Rage					=	80;
const int SPL_MinLvl_Rage				=	20;
const int SPL_Scaling_Rage				=	20;

///******************************************************************************************
instance Spell_Rage (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;//_FALLBACK_NONE;
};

func int Spell_Logic_Rage (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Rage/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Rage)
	{
		if ((other.level - SPL_MinLvl_Sleep - (self.attribute[ATR_POWER] * SPL_Scaling_Sleep / 100) * 100 / SPL_Scaling_Sleep) <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString((other.level - SPL_MinLvl_Sleep - (self.attribute[ATR_POWER] * SPL_Scaling_Sleep / 100) * 100 / SPL_Scaling_Sleep)), "% dod. mocy za ma³o aby odnieœæ skutek!"));
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Rage()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Rage/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Rage;
	};
	
	//AI_PlayAni (other, "T_PSI_VICTIM");
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicRage, 0, "");
		
//		AI_SetNpcsToState (self, ZS_MagicRage, 1000);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
