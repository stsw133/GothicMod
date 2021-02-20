///******************************************************************************************
///	SPL_Domination
///******************************************************************************************

const int SPL_Cost_Domination			=	90;

///******************************************************************************************
INSTANCE Spell_Domination (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Domination (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Domination/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Domination)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Domination()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Domination/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Domination/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Domination)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Domination;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (other.guild < GIL_SEPERATOR_HUM)
	&& (other.level < self.level)
	{
		other.aivar[AIV_PartyMember] = true;	///temp
	};
};
