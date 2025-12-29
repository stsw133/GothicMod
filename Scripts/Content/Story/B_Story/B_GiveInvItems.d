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
		concatText = ConcatStrings(concatText, ConcatStrings(" x", IntToString(amount)));
	};
	
	if (Npc_IsPlayer(slf))
	{
		PrintS_Ext (concatText, COL_ItemGiven);
	}
	else if (Npc_IsPlayer(oth))
	{
		PrintS_Ext (concatText, COL_ItemTaken);
	};
	
	return true;
};

///******************************************************************************************
/// B_PlayerFindItem
///******************************************************************************************
func void B_PlayerFindItem (var int itm, var int amount)
{
	if (Npc_IsPlayer(self))
	{
		CreateInvItems (self, itm, amount);
		
		if (itm == ItMi_Gold)
		{
			Snd_Play("Geldbeutel");
		};
		
		/// display text
		var string concatText; concatText = item.name;
		
		if (amount > 1)
		{
			concatText = ConcatStrings(concatText, ConcatStrings(" x", IntToString(amount)));
		};
		
		PrintS_Ext (concatText, COL_ItemTaken);
	};
};

///******************************************************************************************
/// B_GiveNpcInventory
///******************************************************************************************
func void B_GiveNpcInventory (var C_Npc slf, var C_Npc oth)
{
	var int amount;
	var int itmID;
	var int i; i = 0;
	var int loopStart; loopStart = MEM_StackPos.position;
	
	if (i < INV_CAT_MAX)
	{
		var int slotNr; slotNr = 0;
		var int inLoop; inLoop = MEM_StackPos.position;
		amount = Npc_GetInvItemBySlot(slf, i, slotNr);
		itmID = Hlp_GetInstanceID(item);
		
		if (item.mainflag & ITEM_KAT_ARMOR)
		{
			slotNr += 1;
			MEM_StackPos.position = inLoop;
		};
		if (amount > 0)
		{
			B_GiveInvItems (slf, oth, itmID, amount);
			MEM_StackPos.position = inLoop;
		};
		i += 1;
		MEM_StackPos.position = loopStart;
	};
};

///******************************************************************************************
/// B_MoveItemToNpcInv
///******************************************************************************************
func void B_MoveItemToNpcInv (var C_Npc oth, var oCItem itm)
{
	var int itmID; itmID = Hlp_GetInstanceID(itm);
	
	CreateInvItems (oth, itmID, itm.amount);
	
	if (Npc_IsPlayer(oth))
	{
		var string concatText; concatText = itm.name;
		
		if (itm.amount > 1)
		{
			concatText = ConcatStrings(concatText, ConcatStrings(" x", IntToString(itm.amount)));
		};
		
		PrintS_Ext (concatText, COL_ItemTaken);
	};
};

///******************************************************************************************
/// B_GiveContainerInventory
///******************************************************************************************
func int B_GiveContainerInventory (var oCMobContainer mob, var C_Npc oth)
{
	var int movedItems; movedItems = 0;
	
	if (mob.containList_data)
	{
		var oCItem itm; itm = _^(mob.containList_data);
		B_MoveItemToNpcInv (oth, itm);
		Wld_RemoveItem(itm);
		movedItems += 1;
	};
	
	var int entryPtr; entryPtr = mob.containList_next;
	var int loopStart; loopStart = MEM_StackPos.position;
	
	if (entryPtr)
	{
		var zCListSort entry; entry = _^(entryPtr);
		var int nextPtr; nextPtr = entry.next;
		
		if (entry.data)
		{
			var oCItem listItem; listItem = _^(entry.data);
			B_MoveItemToNpcInv (oth, listItem);
			Wld_RemoveItem(listItem);
			movedItems += 1;
		};
		
		entryPtr = nextPtr;
		MEM_StackPos.position = loopStart;
	};
	
	mob.containList_data = 0;
	mob.containList_next = 0;
	mob.contains = "";
	
	return movedItems;
};
