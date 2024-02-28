///******************************************************************************************
///	SPL_Charm
///******************************************************************************************

const int SPL_Cost_Charm				=	75;	//50
const int SPL_MinLvl_Charm				=	20;
const int SPL_Scaling_Charm				=	20;

///******************************************************************************************
instance Spell_Charm (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Charm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Charm/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Charm)
	{
		if ((other.level - SPL_MinLvl_Charm - self.attribute[ATR_POWER]*SPL_Scaling_Charm/100) <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString(other.level - SPL_MinLvl_Charm - self.attribute[ATR_POWER]*SPL_Scaling_Charm/100), "% dod. mocy za ma³o aby odnieœæ skutek!"));
		};
	};
	
	return SPL_SENDSTOP;
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
	
	if (MIS_Ignaz_Charm == LOG_RUNNING && other.aivar[AIV_NpcSawPlayerCommit] != CRIME_NONE)
	{
		Charm_Test = true;
	};
	
	B_DeletePetzCrime(other);
 	other.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
 	other.aivar[AIV_LastFightAgainstPlayer] = FIGHT_NONE;
	
	if (Wld_GetGuildAttitude(other.guild, self.guild) != ATT_HOSTILE)
	&& (Npc_GetAttitude(other, self) == ATT_HOSTILE)
	{
		Npc_SetTempAttitude (other, Wld_GetGuildAttitude(other.guild, self.guild));
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
