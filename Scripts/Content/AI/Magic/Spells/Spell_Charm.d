///******************************************************************************************
/// SPL_Charm
///******************************************************************************************

const int SPL_Cost_Charm				=	75;

///******************************************************************************************
instance Spell_Charm (C_Spell_Proto)
{
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Charm (var int manaInvested)
{
	return B_SpellLogic (self, 3, SPL_Cost_Charm, manaInvested);
};

func void Spell_Cast_Charm()
{
	B_SpellCast (self, 3, SPL_Cost_Charm);
	
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
};
