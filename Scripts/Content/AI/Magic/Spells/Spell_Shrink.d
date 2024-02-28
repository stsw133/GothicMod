///******************************************************************************************
///	SPL_Shrink
///******************************************************************************************

const int SPL_Cost_Shrink				=	150;	//300
const int SPL_MinLvl_Shrink				=	20;
const int SPL_Scaling_Shrink			=	20;

///******************************************************************************************
instance Spell_Shrink (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Shrink	(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Shrink/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Shrink)
	{
		if (other.aivar[AIV_ShrinkState] > 0)
		{
			Print("U¿ycie niedozwolone wielokrotnie na tym samym celu!");
		}
		else if (!(C_NpcIsUndead(other) || other.guild > GIL_SEPERATOR_HUM))
		{
			Print("U¿ycie niedozwolone na ludziach i nieumar³ych!");
		}
		else if ((other.level - SPL_MinLvl_Shrink - self.attribute[ATR_POWER]*SPL_Scaling_Shrink/100) <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString(other.level - SPL_MinLvl_Shrink - self.attribute[ATR_POWER]*SPL_Scaling_Shrink/100), "% dod. mocy za ma³o aby odnieœæ skutek!"));
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Shrink()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Shrink/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Shrink;
	};
	
	if (other.flags != NPC_FLAG_IMMORTAL)
	&& (other.aivar[AIV_ShrinkState] < 14)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicShrink, 0, "");
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
