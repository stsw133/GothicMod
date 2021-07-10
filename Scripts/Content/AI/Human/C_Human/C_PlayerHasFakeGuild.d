///******************************************************************************************
///	C_PlayerIsFakeBandit
///******************************************************************************************
func int C_PlayerIsFakeBandit (var C_NPC slf, var C_NPC oth)
{
	if ((slf.aivar[AIV_IgnoreDisguise] & IGNORE_Armor) == IGNORE_Armor)
	{
		return false;
	};
	
	if ((slf.aivar[AIV_IgnoreDisguise] & IGNORE_FakeGuild) == IGNORE_FakeGuild)
	{
		return false;
	};
	
	if (slf.guild == GIL_PIR)
	{
		return false;
	};
	
	if (Npc_HasEquippedArmor(oth))
	{
		var C_Item itm; itm = Npc_GetEquippedArmor(oth);
		if (Hlp_IsItem(itm, ITAR_Bandit))
		|| (Hlp_IsItem(itm, ITAR_RVN_L))
		|| (Hlp_IsItem(itm, ITAR_RVN_M))
		|| (Hlp_IsItem(itm, ITAR_RVN_H))
		{
			return true;
		}
		else
		{
			return false;
		};
	}
	else if (slf.guild == GIL_BDT)
	&& (CurrentLevel == ADDONWORLD_ZEN)
	&& (Player_HasTalkedToBanditCamp)
	{
		return true;
	}
	else
	{
		return false;
	};
};

///******************************************************************************************
///	C_PlayerIsFakePirate
///******************************************************************************************
func int C_PlayerIsFakePirate (var C_NPC slf, var C_NPC oth)
{
	if ((slf.aivar[AIV_IgnoreDisguise] & IGNORE_Armor) == IGNORE_Armor)
	{
		return false;
	};
	
	if ((slf.aivar[AIV_IgnoreDisguise] & IGNORE_FakeGuild) == IGNORE_FakeGuild)
	{
		return false;
	};
	
	if (Npc_HasEquippedArmor(other))
	{
		var C_Item itm; itm = Npc_GetEquippedArmor(oth);
		if (Hlp_IsItem(itm, ITAR_PIR_L))
		|| (Hlp_IsItem(itm, ItAR_PIR_M))
		|| (Hlp_IsItem(itm, ITAR_PIR_H))
		{
			return true;
		}
		else
		{
			return false;
		};
	}
	else
	{
		return false;
	};
};

///******************************************************************************************
///	C_PlayerHasFakeGuild
///******************************************************************************************
func int C_PlayerHasFakeGuild (var C_NPC slf, var C_NPC oth)
{
	if ((slf.aivar[AIV_IgnoreDisguise] & IGNORE_Armor) == IGNORE_Armor)
	{
		return false;
	};
	
	if ((slf.aivar[AIV_IgnoreDisguise] & IGNORE_FakeGuild) == IGNORE_FakeGuild)
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(self))
	{
		return false;
	};
	
	if (slf.guild == GIL_BDT)
	&& (C_PlayerIsFakeBandit(slf, oth))
	{
		if (!Npc_HasEquippedArmor(oth))
		{
			return true;
		}
		else
		{
			return false;
		};
	};	
	
	if (!Npc_HasEquippedArmor(oth))
	{
		return false;
	}
	else if (slf.guild == oth.guild)
	{
		var C_Item itm; itm = Npc_GetEquippedArmor(oth);
		if (Hlp_IsItem(itm, ItAr_WaterRanger))
		{
			var int NSC_CommentRangerArmor; NSC_CommentRangerArmor = true;
			if (NSC_CommentRangerArmor)
			{
				return true;
			}
			else
			{
				return false;
			};
		};
		/*
		if (oth.guild == GIL_NONE)
		&& ((Hlp_IsItem(itm, ITAR_VLK_L_00))
		|| (Hlp_IsItem(itm, ITAR_VLK_L_01))
		|| (Hlp_IsItem(itm, ITAR_VLK_L_02))
		|| (Hlp_IsItem(itm, ITAR_BAU_00))
		|| (Hlp_IsItem(itm, ITAR_BAU_01))
		|| (Hlp_IsItem(itm, ITAR_Leather_L)))
		{
			return false;
		}
		else*/ if (oth.guild == GIL_MIL)
		&& ((Hlp_IsItem(itm, ITAR_MIL_N))
		|| (Hlp_IsItem(itm, ITAR_MIL_L))
		|| (Hlp_IsItem(itm, ITAR_MIL_M))
		|| (Hlp_IsItem(itm, ITAR_MIL_H))
		|| (Hlp_IsItem(itm, ITAR_ROY_L))
		|| (Hlp_IsItem(itm, ITAR_ROY_M))
		|| (Hlp_IsItem(itm, ITAR_ROY_H)))
		{
			return false;
		}
		else if (oth.guild == GIL_PAL)
		&& ((Hlp_IsItem(itm, ITAR_PAL_L))
		|| (Hlp_IsItem(itm, ITAR_PAL_M))
		|| (Hlp_IsItem(itm, ITAR_PAL_H))
		|| (Hlp_IsItem(itm, ITAR_PAL_D)))
		{
			return false;
		}
		else if (oth.guild == GIL_SLD)
		&& ((Hlp_IsItem(itm, ITAR_SLD_N))
		|| (Hlp_IsItem(itm, ITAR_SLD_L))
		|| (Hlp_IsItem(itm, ITAR_SLD_M))
		|| (Hlp_IsItem(itm, ITAR_SLD_H))
		|| (Hlp_IsItem(itm, ITAR_DJG_L))
		|| (Hlp_IsItem(itm, ITAR_DJG_M))
		|| (Hlp_IsItem(itm, ITAR_DJG_H)))
		{
			return false;
		}/*
		else if (oth.guild == GIL_DJG)
		&& ((Hlp_IsItem(itm, ITAR_ASA_L))
		|| (Hlp_IsItem(itm, ITAR_ASA_M))
		|| (Hlp_IsItem(itm, ITAR_ASA_H))
		|| (Hlp_IsItem(itm, ITAR_DEM_L))
		|| (Hlp_IsItem(itm, ITAR_DEM_M))
		|| (Hlp_IsItem(itm, ITAR_DEM_H)))
		{
			return false;
		}*/
		else if (oth.guild == GIL_DJG)
		&& ((Hlp_IsItem(itm, ITAR_SLD_L))
		|| (Hlp_IsItem(itm, ITAR_SLD_M))
		|| (Hlp_IsItem(itm, ITAR_SLD_H))
		|| (Hlp_IsItem(itm, ITAR_DJG_L))
		|| (Hlp_IsItem(itm, ITAR_DJG_M))
		|| (Hlp_IsItem(itm, ITAR_DJG_H))
		|| (Hlp_IsItem(itm, ITAR_Crawler)))
		{
			return false;
		}
		else if (oth.guild == GIL_NOV)
		&& ((Hlp_IsItem(itm, ITAR_Nov_L))
		|| (Hlp_IsItem(itm, ITAR_Nov_H)))
		{
			return false;
		}
		else if (oth.guild == GIL_KDF)
		&& ((Hlp_IsItem(itm, ITAR_Mag_L))
		|| (Hlp_IsItem(itm, ITAR_Mag_M))
		|| (Hlp_IsItem(itm, ITAR_Mag_H))
		|| (Hlp_IsItem(itm, ITAR_Amg_L))
		|| (Hlp_IsItem(itm, ITAR_Amg_M))
		|| (Hlp_IsItem(itm, ITAR_Amg_H))
		|| (Hlp_IsItem(itm, ITAR_Mag_A))
		|| (Hlp_IsItem(itm, ITAR_Mag_B)))
		{
			return false;
		}
		else
		{
			return true;
		};
	}
	else
	{
		return false;
	};
};
