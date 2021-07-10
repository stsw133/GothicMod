///******************************************************************************************
///	SPL_Shrink
///******************************************************************************************

const int SPL_Cost_Shrink				=	300;

var int SPL_Disallow_Shrink;
var int SPL_State_Shrink;

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
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
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
	&& (!C_NpcIsUndead(other))
	&& (other.guild > GIL_SEPERATOR_HUM)
	//&& (SPL_State_Shrink == 0)
	//&& (other.attribute[ATR_STRENGTH] > other.attribute[ATR_DEXTERITY] / 5)	///temp
	//&& (!SPL_Disallow_Shrink)	///temp
	&& (other.aivar[AIV_MM_ShrinkState] == 0)
	{
		//SPL_Disallow_Shrink = true;
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicShrink, 0, "");
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
