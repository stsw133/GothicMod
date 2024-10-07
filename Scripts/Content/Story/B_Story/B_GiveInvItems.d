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
/// B_GiveInventory
///******************************************************************************************

/*
func void Mob_RemoveItems (var string mobname, var int instance, var int amount)
{
	var int mobPtr; mobPtr = MEM_SearchVobByName(mobname);
	var oCMobContainer mob; mob = _^(mobPtr);
	var oCNpc helper; helper = Hlp_GetNpc(loa_ban_6829_Leibwache);
	helper.inventory2_inventory_next = mob.containList_next;
	mob.containList_next = 0;
	Npc_RemoveInvItems(helper, instance, amount);
	mob.containList_next = helper.inventory2_inventory_next;
	helper.inventory2_inventory_next = 0;
};

func void B_GiveMobInventory (var int mobPtr, var C_Npc oth)
{
	var oCMobContainer mob; mob = _^(mobPtr);
	oth.inventory2_inventory_next = mob.containList_next;
	mob.containList_next = 0;
	//Npc_RemoveInvItems(oth, instance, amount);
	//B_PlayerFindItem (oth, itmID, amount);
	mob.containList_next = oth.inventory2_inventory_next;
	oth.inventory2_inventory_next = 0;
};
*/

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
