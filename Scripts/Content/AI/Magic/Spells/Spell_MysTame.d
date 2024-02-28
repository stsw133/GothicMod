///******************************************************************************************
///	SPL_MysTame
///******************************************************************************************

const int SPL_Cost_MysTame				=	125;

///******************************************************************************************
instance Spell_MysTame (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	damageType							=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_MysTame (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysTame/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysTame)
	{
		if (other.level+10 - self.level - self.attribute[ATR_POWER]/50 <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString(other.level+10 - self.level - self.attribute[ATR_POWER]/50), " poziomów za mało aby odnieść skutek!"));
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysTame()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysTame/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysTame;
	};
	
	if (other.guild > GIL_SEPERATOR_HUM && other.guild < GIL_SEPERATOR_ORC && !C_NpcIsUndead(other))
	{
		//other.guild = GIL_SUMMONED;
		Npc_SetTrueGuild (other, GIL_SUMMONED);
		
		B_SetAttitude (other, ATT_FRIENDLY);
		other.aivar[AIV_PartyMember] = true;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
