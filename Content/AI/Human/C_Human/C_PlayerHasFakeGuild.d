///******************************************************************************************
///	C_PlayerHasFakeGuild
///******************************************************************************************
func int C_PlayerHasFakeGuild (var C_NPC slf, var C_NPC oth)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(oth);
	var int NSC_CommentRangerArmor; NSC_CommentRangerArmor = true;
	
	if (slf.aivar[AIV_IgnoreDisguise] == IGNORE_Armor)
	{
		return false;
	};
	
	if (slf.aivar[AIV_IgnoreDisguise] == IGNORE_FakeGuild)
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(self) == true)
	{
		return false;
	};
	
	if (slf.guild == GIL_BDT)
	&& (C_PlayerIsFakeBandit(slf,oth))
	{
		if (Npc_HasEquippedArmor(oth) == false)
		{
			return true;
		}
		else
		{
			return false;
		};
	};	
	
	if (Npc_HasEquippedArmor(oth) == false)
	{
		return false;
	}
	else if (slf.guild == oth.guild)
	{
		if (Hlp_IsItem(itm,ItAr_WaterRanger) == true)
		{
			if (NSC_CommentRangerArmor == true)
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
		&& ((Hlp_IsItem(itm,ITAR_VLK_L_00) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_00) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_01) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_01) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_02) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_02) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_03) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_03) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_04) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_04) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_05) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_05) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_06) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_06) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_07) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_07) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_08) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_08) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_09) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_09) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_10) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_10) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_11) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_11) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_12) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_12) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_13) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_13) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_14) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_14) == true)
		|| (Hlp_IsItem(itm,ITAR_VLK_L_15) == true) || (Hlp_IsItem(itm,ITAR_VLK_H_15) == true)
		|| (Hlp_IsItem(itm,ITAR_BAU_00) == true) || (Hlp_IsItem(itm,ITAR_BAU_01) == true)
		|| (Hlp_IsItem(itm,ITAR_Smith) == true)
		|| (Hlp_IsItem(itm,ITAR_Alchemist) == true)
		|| (Hlp_IsItem(itm,ITAR_Scyther) == true)
		|| (Hlp_IsItem(itm,ITAR_Barkeeper) == true)
		|| (Hlp_IsItem(itm,ITAR_Hunter) == true)
		|| (Hlp_IsItem(itm,ITAR_Leather_L) == true)
		|| (Hlp_IsItem(itm,ITAR_Leather_T) == true)
		|| (Hlp_IsItem(itm,ITAR_Leather_S) == true)
		|| (Hlp_IsItem(itm,ITAR_Leather_B) == true)
		|| (Hlp_IsItem(itm,ITAR_Leather_H) == true))
		{
			return false;
		}
		else */if (oth.guild == GIL_MIL)
		&& ((Hlp_IsItem(itm,ITAR_MIL_N) == true)
		|| (Hlp_IsItem(itm,ITAR_MIL_L) == true)
		|| (Hlp_IsItem(itm,ITAR_MIL_M) == true)
		|| (Hlp_IsItem(itm,ITAR_MIL_H) == true)
		|| (Hlp_IsItem(itm,ITAR_ROY_L) == true)
		|| (Hlp_IsItem(itm,ITAR_ROY_M) == true)
		|| (Hlp_IsItem(itm,ITAR_ROY_H) == true))
		{
			return false;
		}
		else if (oth.guild == GIL_PAL)
		&& ((Hlp_IsItem(itm,ITAR_PAL_L) == true)
		|| (Hlp_IsItem(itm,ITAR_PAL_H) == true)
		|| (Hlp_IsItem(itm,ITAR_PAL_D) == true))
		{
			return false;
		}
		else if (oth.guild == GIL_SLD)
		&& ((Hlp_IsItem(itm,ITAR_SLD_N) == true)
		|| (Hlp_IsItem(itm,ITAR_SLD_L) == true)
		|| (Hlp_IsItem(itm,ITAR_SLD_M) == true)
		|| (Hlp_IsItem(itm,ITAR_SLD_H) == true)
		|| (Hlp_IsItem(itm,ITAR_DJG_L) == true)
		|| (Hlp_IsItem(itm,ITAR_DJG_M) == true)
		|| (Hlp_IsItem(itm,ITAR_DJG_H) == true))
		{
			return false;
		}
		else if (oth.guild == GIL_DJG)
		&& ((Hlp_IsItem(itm,ITAR_ASA_L) == true)
		|| (Hlp_IsItem(itm,ITAR_ASA_M) == true)
		|| (Hlp_IsItem(itm,ITAR_ASA_H) == true)
		|| (Hlp_IsItem(itm,ITAR_DEM_L) == true)
		|| (Hlp_IsItem(itm,ITAR_DEM_M) == true)
		|| (Hlp_IsItem(itm,ITAR_DEM_H) == true))
		{
			return false;
		}
		else if (oth.guild == GIL_NOV)
		&& ((Hlp_IsItem(itm,ITAR_Nov_L) == true)
		|| (Hlp_IsItem(itm,ITAR_Nov_H) == true))
		{
			return false;
		}
		else if (oth.guild == GIL_KDF)
		&& ((Hlp_IsItem(itm,ITAR_Mag_L) == true)
		|| (Hlp_IsItem(itm,ITAR_Mag_M) == true)
		|| (Hlp_IsItem(itm,ITAR_Mag_H) == true)
		|| (Hlp_IsItem(itm,ITAR_Mag_A) == true)
		|| (Hlp_IsItem(itm,ITAR_Mag_G) == true))
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
