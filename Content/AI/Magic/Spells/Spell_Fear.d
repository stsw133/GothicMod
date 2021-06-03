///******************************************************************************************
///	SPL_Fear
///******************************************************************************************

const int SPL_Cost_Fear					=	30;	//50

///******************************************************************************************
instance Spell_Fear (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;	//TARGET_COLLECT_NONE
};

func int Spell_Logic_Fear (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Fear/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Fear)
	{
		if (other.guild < GIL_SEPERATOR_HUM)
		&& ((other.guild != GIL_KDF) && (other.guild != GIL_PAL))
		{
			Npc_ClearAIQueue	(other);
			B_ClearPerceptions	(other);
			AI_StartState		(other, ZS_MagicFlee, 0, "");
		}
		else if (other.guild > GIL_SEPERATOR_HUM)
		&& (other.guild != GIL_DRAGON)
		&& (other.guild != GIL_TROLL)
		&& (other.guild != GIL_STONEGOLEM)
		&& (other.guild != GIL_ICEGOLEM)
		&& (other.guild != GIL_FIREGOLEM)
		{
			Npc_ClearAIQueue	(other);
			B_ClearPerceptions	(other);
			AI_StartState		(other, ZS_MM_Flee, 0, "");
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Fear/SPL_Cost_Scroll;
	}
	else
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
instance Spell_MassFear (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassFear (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassFear/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassFear/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassFear;
	};
	
	if (other.guild != GIL_DRAGON)
	{
		AI_SetNpcsToState (self, ZS_MagicFlee, 1000);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
