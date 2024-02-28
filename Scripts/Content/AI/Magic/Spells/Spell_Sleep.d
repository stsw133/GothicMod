///******************************************************************************************
///	SPL_Sleep
///******************************************************************************************

const int SPL_Cost_Sleep				=	50;	//30
const int SPL_MinLvl_Sleep				=	20;
const int SPL_Scaling_Sleep				=	20;

///******************************************************************************************
instance Spell_Sleep (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Sleep (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Sleep/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Sleep)
	{
		if ((other.level - SPL_MinLvl_Sleep - self.attribute[ATR_POWER]*SPL_Scaling_Sleep/100) <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString(other.level - SPL_MinLvl_Sleep - self.attribute[ATR_POWER]*SPL_Scaling_Sleep/100), "% dod. mocy za ma³o aby odnieœæ skutek!"));
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Sleep()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Sleep/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Sleep;
	};
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	&& (other.guild < GIL_SEPERATOR_HUM && other.guild != GIL_KDF && other.guild != GIL_DMT && other.guild != GIL_PAL)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicSleep, 0, "");
		
//		AI_SetNpcsToState (self, ZS_MagicSleep, 1000);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
