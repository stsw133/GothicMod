///******************************************************************************************
/// MOD_Defeated
///******************************************************************************************
func void MOD_Defeated (var C_Npc slf, var C_Npc oth, var int mode)
{
	//if (Npc_IsPlayer(slf) || slf.aivar[AIV_PARTYMEMBER])
	if ((oth.aivar[AIV_DamageDealtByPlayer]*2) >= oth.attribute[ATR_HITPOINTS_MAX])
	{
		if (!oth.aivar[AIV_VictoryExpGiven])
		{
			B_GivePlayerExp(oth.level * XP_PER_VICTORY);
			oth.aivar[AIV_VictoryExpGiven] = true;
		};
		
		oth.aivar[AIV_DefeatedByPlayer] = mode;
	};
	
	/// DEAD
	if (mode == DBP_Killed)
	{
		/// mission counters
		if (C_IAmCanyonRazor(oth))
		{
			CanyonRazorBodyCount += 1;
			if (MIS_Addon_Greg_ClearCanyon == LOG_RUNNING)
			{
				B_CountCanyonRazor();
			};
		};
		
		if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(DiegoOW))
		{
			Diego_IsDead = true;
		};
		
		if (Npc_IsPlayer(slf))
		{
			if (C_DropUnconscious())
			{
				MadKillerCount += 1;
			};
			
			if (oth.guild == GIL_GIANT_BUG)
			&& (MIS_Fester_KillBugs == LOG_RUNNING)
			{
				Festers_Giant_Bug_Killed += 1;
			};
			
			if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Swamprat))
			&& (MIS_KrokoJagd == LOG_Running)
			{
				AlligatorJack_KrokosKilled += 1;
			};
			
			if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Ramon))
			{
				Player_HasTalkedToBanditCamp = true;
			};
			
			if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Franco))
			{
				if (MIS_HlpLogan == LOG_RUNNING)	{	MIS_HlpLogan = LOG_OBSOLETE;	};
				if (MIS_HlpEdgor == LOG_RUNNING)	{	MIS_HlpEdgor = LOG_OBSOLETE;	};
			};
			
			if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Fortuno))
			{
				Log_SetTopicStatus (Topic_Addon_Fortuno, LOG_OBSOLETE);
			};
		};
		
		if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Goldminecrawler))
		{
			if (Minecrawler_Killed >= 9)
			&& (!Bloodwyn_Spawn)
			{
				AI_Teleport (Bloodwyn, "ADW_MINE_TO_MC_03");
				B_StartOtherRoutine (Bloodwyn, "MINE");
				B_GivePlayerExp(500);
				Bloodwyn_Spawn = true;
			}
			else
			{
				Minecrawler_Killed += 1;
			};
		};
		
		/// MOD:
		//if (Npc_IsPlayer(slf))
		//{
		//	if (dragonSkillGold)
		//	{
		//		Wld_PlayEffect ("spellFX_DragonSkillGold", oth, slf, 0, 0, 0, false);
		//		B_PlayerFindItem (ItMi_Gold, oth.level/5);
		//	};
		//};
	}
	/// UNCONSCIOUS
	else if (mode == DBP_Defeated)
	{
		/// mission counters
		if (oth.guild < GIL_SEPERATOR_HUM)
		&& (Npc_IsPlayer(slf))
		{
			if (oth.aivar[AIV_LastPlayerAR] == AR_NONE)
			&& (oth.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
			&& (oth.guild == GIL_SLD)
			{
				Sld_Duelle_gewonnen += 1;
			};
		};
		
		if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Dar))
		&& (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Cipher))
		{
			Dar_LostAgainstCipher = true;
		};
	};
	
	
	/// AUTO LOOT
	if (Npc_IsPlayer(slf) || slf.aivar[AIV_PartyMember])
	&& (STR_ToInt(MEM_GetGothOpt("MOD", "autoLoot")))
	{
		B_GiveNpcInventory (oth, slf);
	};
};
