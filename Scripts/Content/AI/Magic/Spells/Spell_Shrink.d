///******************************************************************************************
///	SPL_Shrink
///******************************************************************************************

const int SPL_Cost_Shrink				=	300;

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
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Shrink/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Shrink)
	{
		if (!C_NpcIsUndead(other) && other.guild > GIL_SEPERATOR_HUM)
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print("Użycie dozwolone niedozwolone na ludziach i nieumarłych!");
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
	&& (other.aivar[AIV_MM_ShrinkState] < 14)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicShrink, 0, "");
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
