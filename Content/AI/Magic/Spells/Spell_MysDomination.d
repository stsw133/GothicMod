///******************************************************************************************
///	SPL_MysDomination
///******************************************************************************************

const int SPL_Cost_MysDomination		=	80;
const int SPL_Level_MysDomination		=	(MAX_LEVEL)/10;

///******************************************************************************************
INSTANCE Spell_MysDomination (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	damageType							=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_MysDomination (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysDomination/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysDomination))
	&& (other.level <= SPL_Level_MysDomination + (self.damage[DAM_INDEX_MAGIC]/10))
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MysDomination()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysDomination/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysDomination/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MysDomination)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysDomination;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (other.level <= SPL_Level_MysDomination + (self.damage[DAM_INDEX_MAGIC]/10))
	{
		/*
		if (other.guild > GIL_SEPERATOR_HUM)
		{
			slf.guild = GIL_SUMMONED;
			Npc_SetTrueGuild (slf, GIL_SUMMONED);
		}
		else
		{
			slf.guild = GIL_NONE;
			Npc_SetTrueGuild (slf, GIL_NONE);
		};
		*/
		B_SetAttitude (other, ATT_FRIENDLY);
		other.aivar[AIV_PartyMember] = true;
	};
};
