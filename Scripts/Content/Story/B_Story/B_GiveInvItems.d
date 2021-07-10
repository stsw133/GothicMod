///******************************************************************************************
///	B_GiveInvItems
///******************************************************************************************
func int B_GiveInvItems (var C_NPC giver, var C_NPC taker, var int itemInstance, var int amount)
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
	
	var string concatText;
	var string itemname; itemname = item.name;
	
	if (Npc_IsPlayer(giver))
	{
		if (itemInstance == ItMi_Gold)
		{
			concatText = ConcatStrings(IntToString(amount), PRINT_GoldGegeben);
			Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_GoldGiven, concatText, FONT_ScreenSmall, COL_ItemGiven, TIME_Print * 1000);
			//AI_PrintScreen (concatText, -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);
		}
		else
		{
		    if (amount == 1)
		    {
			    concatText = ConcatStrings (itemname, PRINT_Addon_gegeben);
				Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_ItemGiven, concatText, FONT_ScreenSmall, COL_ItemGiven, TIME_Print * 1000);
			    //AI_PrintScreen (concatText, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
			}
			else
		    {
				concatText = ConcatStrings(IntToString(amount), PRINT_ItemsGegeben);
				concatText = ConcatStrings(concatText, " (");
			    concatText = ConcatStrings(concatText, itemname);
			    concatText = ConcatStrings(concatText, ")");
				Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_ItemGiven, concatText, FONT_ScreenSmall, COL_ItemGiven, TIME_Print * 1000);
				//AI_PrintScreen (concatText, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
			};
		};
	}
	else if Npc_IsPlayer(taker)
	{
		if (itemInstance == ItMi_Gold)
		{
			concatText = ConcatStrings(IntToString(amount), PRINT_GoldErhalten);
			Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_GoldTaken, concatText, FONT_ScreenSmall, COL_ItemTaken, TIME_Print * 1000);
			//AI_PrintScreen (concatText, -1, YPOS_GoldTaken, FONT_ScreenSmall, 2);
		}
		else
		{
		    if (amount == 1)
		    {
				concatText = ConcatStrings (itemname,PRINT_Addon_erhalten);
				Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_ItemTaken, concatText, FONT_ScreenSmall, COL_ItemTaken, TIME_Print * 1000);
				//AI_PrintScreen (concatText, -1, YPOS_ItemTaken, FONT_ScreenSmall, 2);
			}
			else
		    {
			    concatText = ConcatStrings(IntToString(amount), PRINT_ItemsErhalten);
			    concatText = ConcatStrings(concatText, " (");
			    concatText = ConcatStrings(concatText, itemname); 
			    concatText = ConcatStrings(concatText, ")");
			    Print_ExtPxl (20, Print_Screen[PS_Y]-YPosPxl_ItemTaken, concatText, FONT_ScreenSmall, COL_ItemTaken, TIME_Print * 1000);
			    //AI_PrintScreen (concatText, -1, YPOS_ItemTaken, FONT_ScreenSmall, 2);
			};
		};
	};
	
	return true;
};
