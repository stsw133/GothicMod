///******************************************************************************************
///	SPL_Sleep
///******************************************************************************************

const int SPL_Cost_Sleep				=	30;

///******************************************************************************************
instance Spell_Sleep (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Sleep (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Sleep/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Sleep)
	{
		if (!C_BodyStateContains(other, BS_SWIM))
		&& (!C_BodyStateContains(other, BS_DIVE))
		&& (!C_NpcIsDown(other))
		&& (other.guild < GIL_SEPERATOR_HUM)
		&& (other.level - self.level <= 5)
		&& (Npc_GetDistToNpc(self, other) <= 1000)
		//&& (!C_NpcIsGateGuard(self))
		//&& (other.flags != NPC_FLAG_IMMORTAL)
		&& ((other.guild != GIL_KDF) && (other.guild != GIL_DMT) && (other.guild != GIL_PAL))
		{
			Npc_ClearAIQueue	(other);
			B_ClearPerceptions	(other);
			AI_StartState		(other, ZS_MagicSleep, 0, "");
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
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
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
///	SPL_MassSleep
///******************************************************************************************

const int SPL_Cost_MassSleep			=	50;

///******************************************************************************************
instance Spell_MassSleep (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassSleep (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassSleep/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MassSleep)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MassSleep()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassSleep/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassSleep;
	};
	
	AI_SetNpcsToState (self, ZS_MagicSleep, 1000);
	
	self.aivar[AIV_SelectSpell] += 1;
};
