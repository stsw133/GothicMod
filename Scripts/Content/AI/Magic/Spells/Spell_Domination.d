///******************************************************************************************
///	SPL_Domination
///******************************************************************************************

const int SPL_Cost_Domination			=	90;

///******************************************************************************************
instance Spell_Domination (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Domination (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Domination/SPL_Cost_Scroll))
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
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Domination/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Domination;
	};
	
	if (other.guild < GIL_SEPERATOR_HUM)
	&& (other.level < self.level)
	{
		other.aivar[AIV_PartyMember] = true;	///temp
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
