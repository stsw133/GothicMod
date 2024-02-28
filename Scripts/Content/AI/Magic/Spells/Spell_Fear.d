///******************************************************************************************
///	SPL_Fear
///******************************************************************************************

const int SPL_Cost_Fear					=	75;	//50
const int SPL_MinLvl_Fear				=	20;
const int SPL_Scaling_Fear				=	20;

///******************************************************************************************
instance Spell_Fear (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Fear (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Fear/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Fear)
	{
		if ((other.level - SPL_MinLvl_Sleep - self.attribute[ATR_POWER]*SPL_Scaling_Fear/100) <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString(other.level - SPL_MinLvl_Sleep - self.attribute[ATR_POWER]*SPL_Scaling_Fear/100), "% dod. mocy za ma³o aby odnieœæ skutek!"));
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Fear()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Fear/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Fear;
	};
	
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
	
	self.aivar[AIV_SelectSpell] += 1;
};
