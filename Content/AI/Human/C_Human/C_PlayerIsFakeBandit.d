///******************************************************************************************
///	C_PlayerIsFakeBandit
///******************************************************************************************
func int C_PlayerIsFakeBandit (var C_NPC slf, var C_NPC oth)
{
	var C_Item itm;
	
	if (slf.aivar[AIV_IgnoreDisguise] == IGNORE_Armor)
	{
		return false;
	};
	
	if (slf.aivar[AIV_IgnoreDisguise] == IGNORE_FakeGuild)
	{
		return false;
	};
	
	if (slf.guild == GIL_PIR)
	{
		return false;
	};	
	
	if (Npc_HasEquippedArmor(oth) == true)
	{
		itm = Npc_GetEquippedArmor(oth);
		if ((Hlp_IsItem(itm,ITAR_Bandit) == true)
		|| (Hlp_IsItem(itm,ITAR_RVN_L) == true)
		|| (Hlp_IsItem(itm,ITAR_RVN_M) == true)
		|| (Hlp_IsItem(itm,ITAR_RVN_H) == true))
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
	&& (Player_HasTalkedToBanditCamp == true)
	{
		return true;
	}
	else
	{
		return false;
	};	
};
