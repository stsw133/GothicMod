///******************************************************************************************
/// MOD_ItemFn
///******************************************************************************************
func void MOD_CanDropItem()
{
	var int selectedItemPtr;
	var int container; container = ECX; // oCNpcInventory*
	
	const int call = 0;
	if (CALL_Begin(call))
	{
		CALL_PutRetValTo(_@(selectedItemPtr));
		CALL__thiscall(_@(container), 7377600);
		call = CALL_End();
	};
	
	if (selectedItemPtr)
	{
		var C_Item itm; itm = _^(selectedItemPtr);
		
		if (itm.flags & ITEM_MISSION)
		{
			Npc_ClearAIQueue(hero);
			AI_PlayAni (hero, "T_CANNOTTAKE");
			Print("Nie mo¿esz tego wyrzuciæ!");
			
			const int contents = 0;
			ECX = _@(contents) - 4;
		};
	};
};

///******************************************************************************************
func void MOD_CanSellItem()
{
	if (!C_IsInventoryOpen())
	{
		return;
	};
	
	var oCNpc her; her = Hlp_GetNpc(hero);
	var oCItem itm; itm = _^(List_GetS(her.inventory2_oCItemContainer_contents, her.inventory2_oCItemContainer_selectedItem + 2));
	
	if (!Hlp_IsValidItem(itm))
	{
		return;
	};
	
	if (itm.flags & ITEM_MISSION)
	{
		Npc_ClearAIQueue(hero);
		AI_PlayAni (hero, "T_CANNOTTAKE");
		Print("Nie mo¿esz tego sprzedaæ!");
		
		MEM_WriteByte(6862912 + 6, 195);
	}
	else
	{
		MEM_WriteByte(6862912 + 6, 106);
	};
};

///******************************************************************************************
/*
func void MOD_ItemDrop()
{
	var C_Npc slf; slf = MEM_PtrToInst(ECX);
	var oCItem itm; itm = MEM_PtrToInst(MEM_ReadInt(ESP + 4));
	
	if (!Hlp_IsValidItem(itm))
	{
		return;
	};
	
	if (Npc_IsPlayer(slf))
	{
		var string concatText;
		concatText = ConcatStrings(itm.name, " x");
		concatText = ConcatStrings(concatText, IntToString(itm.amount));
		//concatText = ConcatStrings(concatText, "/");
		//concatText = ConcatStrings(concatText, IntToString(amountMax));
		
		PrintS_Ext (concatText, COL_ItemGiven);
		
		if (itm.flags & ITEM_MISSION)
		{
			//Npc_ClearAIQueue(slf);
			//AI_PlayAni (slf, "T_DONTKNOW");
			//Wld_RemoveItem(itm);
			//CreateInvItems (slf, Hlp_GetInstanceID(itm), itm.amount);
			
			AI_TakeItem (slf, itm);	/// temp!!!
		};
	};
};
*/

///******************************************************************************************
func void MOD_ItemTake()
{
	var C_Npc slf; slf = MEM_PtrToInst(ECX);
	var oCItem itm; itm = MEM_PtrToInst(MEM_ReadInt(ESP + 4));
	
	if (!Hlp_IsValidItem(itm))
	{
		return;
	};
	
	/// display text
	if (Npc_IsPlayer(slf))
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
func void MOD_UseItem()
{
	var oCNPC slf; slf = _^(ECX);
	var oCItem itm; itm = _^(MEM_ReadInt(ESP + 4));
	
	Print("TEST UseItem");
	/*
	//Was this function invoked with script ?
	if (flg_UseItem_Script == TRUE)
	{
	//Reset value
	flg_UseItem_Script = FALSE;
	}
	else
	{
	//Here you know that player used item via inventory
	...
	};
	*/
};

/*
NPC_UseItem - add 1 more line to set value of global variable flg_UseItem_Script to TRUE:


func void NPC_UseItem (var int slfInstance, var int itmInstance)
{
	var C_NPC slf;
	slf = Hlp_GetNPC (slfInstance);

	flg_UseItem_Script = TRUE;

	CALL_PtrParam (MEM_InstToPtr (itmInstance));
	CALL__thiscall (MEM_InstToPtr (slf), 7584784);
};
*/

///******************************************************************************************
func void MOD_ItemFn()
{
	/// can drop item
	HookEngineF (7398710, 5, MOD_CanDropItem);
	
	/// can sell item
	HookEngineF (6862912, 6, MOD_CanSellItem);
	MemoryProtectionOverride(6862912 + 6, 4);
	
	/// item drop
	//HookEngineF (7622096, 6, MOD_ItemDrop);
	
	/// item take
	HookEngineF (7621056, 6, MOD_ItemTake);
	
	/// use item
	//HookEngineF (7584784, 7, MOD_UseItem);
};

///******************************************************************************************
/// MOD_MoveItemIntoInventory
///******************************************************************************************
func void MOD_MoveItemIntoInventory (var C_Npc slf, var oCItem itm)
{
	if (itm.flags == ITEM_NFOCUS)
	{
		return;
	};
	
	Npc_SendPassivePerc (hero, PERC_ASSESSTHEFT, hero, hero);
	itm.flags = ITEM_NFOCUS;
	Wld_RemoveItem(itm);
	CreateInvItems (slf, Hlp_GetInstanceID(itm), itm.amount);
	
	/// display text
	if (Npc_IsPlayer(slf))
	{
		var string concatText; concatText = itm.name;
		
		if (itm.amount > 1)
		{
			concatText = ConcatStrings(concatText, ConcatStrings(" x", IntToString(itm.amount)));
		};
		
		PrintS_Ext (concatText, COL_ItemTaken);
	};
};
