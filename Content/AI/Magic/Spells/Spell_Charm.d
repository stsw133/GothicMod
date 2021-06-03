///******************************************************************************************
///	SPL_Charm
///******************************************************************************************

const int SPL_Cost_Charm				=	50;

///******************************************************************************************
instance Spell_Charm (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Charm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Charm/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Charm)
	{
		if (other.aivar[AIV_NpcSawPlayerCommit] != CRIME_NONE)
		&& (MIS_Ignaz_Charm == LOG_RUNNING)
		{
			Charm_Test = true;
		};
		
		B_DeletePetzCrime(other);
 		other.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
 		other.aivar[AIV_LastFightAgainstPlayer] = FIGHT_NONE;
		
		if (Wld_GetGuildAttitude(other.guild, self.guild) != ATT_HOSTILE)
		{
			if (Npc_GetAttitude(other, self) == ATT_HOSTILE)
			{
				Npc_SetTempAttitude (other, Wld_GetGuildAttitude(other.guild, self.guild));
			};
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Charm()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Charm/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Charm;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
