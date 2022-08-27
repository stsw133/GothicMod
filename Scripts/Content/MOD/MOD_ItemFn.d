///******************************************************************************************
///	MOD_ItemFn
///******************************************************************************************

var C_Item TakenItem;
var int TakenItem_Var;
var string TakenItem_Text;
var int TakenItem_Pos;

const int YPosPxl_GoldGiven		=	180;
const int YPosPxl_GoldTaken		=	180;
const int YPosPxl_ItemGiven		=	160;
const int YPosPxl_ItemTaken		=	140;

///******************************************************************************************
func void ITEMS_TEXT_CHECK (var string itemName, var int amount, var int amountMax)
{
	TakenItem_Text = ConcatStrings (itemName, " ");
	TakenItem_Text = ConcatStrings (TakenItem_Text, IntToString(amount));
	TakenItem_Text = ConcatStrings (TakenItem_Text, "/");
	TakenItem_Text = ConcatStrings (TakenItem_Text, IntToString(amountMax));
};

///******************************************************************************************
func void ITEMS_CHECK (var oCItem item)
{
/*
	if (Hlp_GetInstanceID(TakenItem) == Hlp_GetInstanceID(ItSe_CavalornsBeutel))
	{
		QuestStep_CavalornHut = SetQuestStatus (Quest_CavalornHut, QuestStep_CavalornHut, LOG_PROGRESS);
		ITEMS_TEXT_CHECK (TakenItem.description, Npc_HasItems(hero,Hlp_GetInstanceID(TakenItem)), 1);
		Print_Ext (-1, YPOS_ItemTaken, TakenItem_Text, FONT_ScreenSmall, COL_ItemTaken, TIME_Print);
//		Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_ItemTaken-(TakenItem_Pos*20), TakenItem_Text, FONT_ScreenSmall, COL_ItemTaken, TIME_Print);
	}
	else
	{*/
		//Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_ItemTaken-(TakenItem_Pos*20), ConcatStrings(TakenItem.description,PRINT_Addon_erhalten), FONT_ScreenSmall, COL_ItemTaken, TIME_Print/2);
//	};
/*
	TakenItem_Var = false;

	TakenItem_Pos += 1;
	if (TakenItem_Pos > 5)
	{
		TakenItem_Pos = 0;
	};
*/
};
///******************************************************************************************
///	MOD_MoveItemIntoInventory
///******************************************************************************************
func void MOD_MoveItemIntoInventory (var C_Npc slf, var oCItem itm)
{
	if (itm.flags != ITEM_NFOCUS)
	{
		B_AssessTheft();
		itm.flags = ITEM_NFOCUS;
		Wld_RemoveItem(itm);
		CreateInvItems (slf, Hlp_GetInstanceID(itm), itm.amount);
		ITEMS_CHECK(itm);
	};
};
