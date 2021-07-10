///******************************************************************************************
///	B_CreateAmmo
///******************************************************************************************
func void B_CreateAmmo (var C_NPC slf)
{
	var C_ITEM rangedWeapon;
	
	if (Npc_IsInFightMode(slf, FMODE_FAR))
	{
		rangedWeapon = Npc_GetReadiedWeapon(slf);
	}
	else if (Npc_HasEquippedRangedWeapon(slf))
	{
		rangedWeapon = Npc_GetEquippedRangedWeapon(slf);
	}
	else
	{
		return;
	};
	
	if (rangedWeapon.munition == ItRw_Arrow)
	{
		if (Npc_HasItems(slf, ItRw_Arrow) < 5)
		{
			CreateInvItems (slf, ItRw_Arrow, 5);
		};
	}
	else if (rangedWeapon.munition == ItRw_Bolt)
	{
		if (Npc_HasItems(slf, ItRw_Bolt) < 5)
		{
			CreateInvItems (slf, ItRw_Bolt, 5);
		};
	}
	else if (rangedWeapon.munition == ItRw_Ammo)
	{
		if (Npc_HasItems(slf, ItRw_Ammo) < 5)
		{
			CreateInvItems (slf, ItRw_Ammo, 5);
		};
	};
};
