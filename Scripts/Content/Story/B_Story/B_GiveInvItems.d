///******************************************************************************************
/// B_GiveInvItems
///******************************************************************************************
func int B_GiveInvItems (var C_Npc slf, var C_Npc oth, var int itemInstance, var int amount)
{
	if (Npc_IsPlayer(slf))
	&& (amount > Npc_HasItems(slf, itemInstance))
	{
		return false;
	};
	if (amount == 0)
	{
		return true;
	};
	
	/// FUNC
	Npc_RemoveInvItems (slf, itemInstance, amount);
	CreateInvItems (oth, itemInstance, amount);
	
	/// display text
	var string concatText; concatText = item.name;
	
	if (amount > 1)
	{
	    concatText = ConcatStrings(ConcatStrings(IntToString(amount), " szt. "), concatText);
	};
	
	if (Npc_IsPlayer(slf))
	{
		PrintS_Ext (concatText, COL_ItemGiven);
	}
	else if Npc_IsPlayer(oth)
	{
		PrintS_Ext (concatText, COL_ItemTaken);
	};
	
	return true;
};
