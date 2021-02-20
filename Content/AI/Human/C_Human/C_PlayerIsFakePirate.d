///******************************************************************************************
///	C_PlayerIsFakePirate
///******************************************************************************************
func int C_PlayerIsFakePirate (var C_NPC slf, var C_NPC oth)
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
	
	if (Npc_HasEquippedArmor(other) == true)
	{
		itm = Npc_GetEquippedArmor(oth);
		if ((Hlp_IsItem(itm,ITAR_PIR_L) == true)
		|| (Hlp_IsItem(itm,ItAR_PIR_M) == true)
		|| (Hlp_IsItem(itm,ITAR_PIR_H) == true))
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
