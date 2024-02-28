///******************************************************************************************
///	B_GiveInvItems
///******************************************************************************************
func int B_GiveInvItems (var C_Npc giver, var C_Npc taker, var int itemInstance, var int amount)
{
	if (Npc_IsPlayer(giver))
	&& (amount > Npc_HasItems(giver, itemInstance))
	{
		return false;
	};
	if (amount == 0)
	{
		return true;
	};
	
	Npc_RemoveInvItems (giver, itemInstance, amount);
	CreateInvItems (taker, itemInstance, amount);
	
	/// display text
	var string concatText; concatText = item.name;
	
	if (amount > 1)
	{
	    concatText = ConcatStrings(ConcatStrings(IntToString(amount), " szt. "), concatText);
	};
	
	if (Npc_IsPlayer(giver))
	{
		PrintS_Ext (concatText, COL_ItemGiven);
	}
	else if Npc_IsPlayer(taker)
	{
		PrintS_Ext (concatText, COL_ItemTaken);
	};
	
	return true;
};
