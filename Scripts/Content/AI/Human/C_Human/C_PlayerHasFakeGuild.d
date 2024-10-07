///******************************************************************************************
/// C_PlayerIsFakeBandit
///******************************************************************************************
func int C_PlayerIsFakeBandit (var C_Npc slf, var C_Npc oth)
{
	if (slf.aivar[AIV_IgnoreDisguise] & IGNORE_Armor)
	{
		return false;
	};
	
	if (slf.aivar[AIV_IgnoreDisguise] & IGNORE_FakeGuild)
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
		if (Hlp_IsItem(itm, ITAR_BDT_L))
		|| (Hlp_IsItem(itm, ITAR_BDT_M))
		|| (Hlp_IsItem(itm, ITAR_BDT_H))
		|| (Hlp_IsItem(itm, ITAR_RVN_L))
		|| (Hlp_IsItem(itm, ITAR_RVN_M))
		|| (Hlp_IsItem(itm, ITAR_RVN_H))
		|| (Hlp_IsItem(itm, ITAR_Raven))
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
	};
	
	return false;
};

///******************************************************************************************
/// C_PlayerIsFakePirate
///******************************************************************************************
func int C_PlayerIsFakePirate (var C_Npc slf, var C_Npc oth)
{
	if (slf.aivar[AIV_IgnoreDisguise] & IGNORE_Armor)
	{
		return false;
	};
	
	if (slf.aivar[AIV_IgnoreDisguise] & IGNORE_FakeGuild)
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
	};
	
	return false;
};

///******************************************************************************************
/// C_PlayerWearsArmor
///******************************************************************************************
func int C_PlayerWearsGuildArmor (var C_Npc slf, var int guild)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(slf);
	
	/*
	if (guild == GIL_NONE)
	&& (Hlp_IsItem(itm, ITAR_VLK_L_00)
	 || Hlp_IsItem(itm, ITAR_VLK_L_01)
	 || Hlp_IsItem(itm, ITAR_VLK_L_02)
	 || Hlp_IsItem(itm, ITAR_BAU_00)
	 || Hlp_IsItem(itm, ITAR_BAU_01)
	 || Hlp_IsItem(itm, ITAR_Leather_L))
	{
		return true;
	}
	*/
	
	if (guild == GIL_MIL)
	&& (Hlp_IsItem(itm, ITAR_ROY_H)
	 || Hlp_IsItem(itm, ITAR_ROY_M)
	 || Hlp_IsItem(itm, ITAR_ROY_L)
	 || Hlp_IsItem(itm, ITAR_MIL_H)
	 || Hlp_IsItem(itm, ITAR_MIL_M)
	 || Hlp_IsItem(itm, ITAR_MIL_L)
	 || Hlp_IsItem(itm, ITAR_MIL_N))
	{
		return true;
	};
	
	if (guild == GIL_DJG || guild == GIL_SLD)
	&& (Hlp_IsItem(itm, ITAR_DJG_H)
	 || Hlp_IsItem(itm, ITAR_DJG_M)
	 || Hlp_IsItem(itm, ITAR_DJG_L)
	 || Hlp_IsItem(itm, ITAR_SLD_H)
	 || Hlp_IsItem(itm, ITAR_SLD_M)
	 || Hlp_IsItem(itm, ITAR_SLD_L)
	 || Hlp_IsItem(itm, ITAR_SLD_N))
	{
		return true;
	};
	
	if (guild == GIL_KDF)
	&& (Hlp_IsItem(itm, ITAR_AMG_H)
	 || Hlp_IsItem(itm, ITAR_AMG_M)
	 || Hlp_IsItem(itm, ITAR_AMG_L)
	 || Hlp_IsItem(itm, ITAR_MAG_H)
	 || Hlp_IsItem(itm, ITAR_MAG_M)
	 || Hlp_IsItem(itm, ITAR_MAG_L))
	{
		return true;
	};
	
	if (guild == GIL_NOV)
	&& (Hlp_IsItem(itm, ITAR_NOV_L)
	 || Hlp_IsItem(itm, ITAR_NOV_H))
	{
		return true;
	};
	/*
	if (guild == GIL_SLD)
	&& (Hlp_IsItem(itm, ITAR_PRI_H)
	 || Hlp_IsItem(itm, ITAR_PRI_M)
	 || Hlp_IsItem(itm, ITAR_PRI_L)
	 || Hlp_IsItem(itm, ITAR_AKO_H)
	 || Hlp_IsItem(itm, ITAR_AKO_M)
	 || Hlp_IsItem(itm, ITAR_AKO_L))
	{
		return true;
	};
	*/
	if (guild == GIL_OUT)
	&& (Hlp_IsItem(itm, ITAR_Leather_L)
	 || Hlp_IsItem(itm, ITAR_Leather_T)
	 || Hlp_IsItem(itm, ITAR_Leather_S)
	 || Hlp_IsItem(itm, ITAR_Leather_H)
	 || Hlp_IsItem(itm, ITAR_Leather_B)
	 || Hlp_IsItem(itm, ITAR_Crawler)
	 || Hlp_IsItem(itm, ITAR_DragonSnapper))
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_PlayerHasFakeGuild
///******************************************************************************************
func int C_PlayerHasFakeGuild (var C_Npc slf, var C_Npc oth)
{
	if (slf.aivar[AIV_IgnoreDisguise] & IGNORE_Armor)
	{
		return false;
	};
	
	if (slf.aivar[AIV_IgnoreDisguise] & IGNORE_FakeGuild)
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
		if (Hlp_IsItem(itm, ItAr_Ranger_L) || Hlp_IsItem(itm, ItAr_Ranger_H))
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
		
		if (C_PlayerWearsGuildArmor(oth, oth.guild))
		{
			return false;
		};
		
		return true;
	};
	
	return false;
};
