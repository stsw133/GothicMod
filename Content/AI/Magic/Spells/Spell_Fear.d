///******************************************************************************************
///	SPL_Fear
///******************************************************************************************

const int SPL_Cost_Fear					=	30;

///******************************************************************************************
INSTANCE Spell_Fear (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Fear (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Fear/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Fear)
	{
		if (other.guild < GIL_SEPERATOR_HUM)
		&& ((other.guild != GIL_KDF) && (other.guild != GIL_PAL))
		{
			Npc_ClearAIQueue(other);
			B_ClearPerceptions(other);
			AI_StartState (other, ZS_MagicFlee, 0, "");
		}
		else if (other.guild > GIL_SEPERATOR_HUM)
		&& (other.guild != GIL_DRAGON)
		&& (other.guild != GIL_TROLL)
		&& (other.guild != GIL_STONEGOLEM)
		&& (other.guild != GIL_ICEGOLEM)
		&& (other.guild != GIL_FIREGOLEM)
		{
			Npc_ClearAIQueue(other);
			B_ClearPerceptions(other);
			AI_StartState (other, ZS_MM_Flee, 0, "");
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Fear()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Fear/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Fear/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Fear)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Fear;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
///	SPL_MassFear
///******************************************************************************************

const int SPL_Cost_MassFear				=	50;

///******************************************************************************************
INSTANCE Spell_MassFear (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassFear (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassFear/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MassFear)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MassFear()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassFear/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassFear/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MassFear)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassFear;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (other.guild != GIL_DRAGON)
	{
		AI_SetNpcsToState (self, ZS_MagicFlee, 1000);
	};
};
