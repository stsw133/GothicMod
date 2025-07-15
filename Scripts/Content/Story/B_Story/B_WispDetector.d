///******************************************************************************************
/// B_WispDetector
///******************************************************************************************

var int WispSearching;
const int WispSearch_Follow		=	1;
const int WispSearch_ALL		=	2;
const int WispSearch_POTIONS	=	3;
const int WispSearch_MAGIC		=	4;
const int WispSearch_FOOD		=	5;
const int WispSearch_NF			=	6;
const int WispSearch_FF			=	7;
const int WispSearch_NONE		=	8;
const int WispSearch_RUNE		=	9;

///******************************************************************************************
func void B_GetWispDetectedItem()
{
	if (!Hlp_IsValidItem(item))
	{
		return;
	};
	
	if (Npc_GetHeightToItem(self, item) > 500)
	{
		return;
	};
	
	AI_GotoItem (self, item);
	
	if (Npc_GetDistToItem(self, item) < 1000)
	&& (Hlp_Random(50) == 0)
	{
		Wld_PlayEffect ("spellFX_ItemAusbuddeln", item, item, 0, 0, 0, false);
	};
};

///******************************************************************************************
func int B_WispDetectedItem()
{
	if (WispSearching != WispSearch_Follow)
	{
		var int WispSearchFlags; WispSearchFlags = 0;
		
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_NF)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_NF;
		};
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_FF)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_FF | ITEM_KAT_MUN;
		};
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_NONE)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_NONE | ITEM_KAT_KEYS | ITEM_KAT_LIGHT | ITEM_KAT_ARMOR;
		};
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_RUNE)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_RUNE | ITEM_KAT_DOCS;
		};
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_MAGIC)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_MAGIC;
		};
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_FOOD)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_FOOD;
		};
		if (WispSearching == WispSearch_ALL || WispSearching == WispSearch_POTIONS)
		{
			WispSearchFlags = WispSearchFlags | ITEM_KAT_POTIONS;
		};
		
		if (WispSearchFlags != 0)
		&& (Wld_DetectItem(self, WispSearchFlags))
		{
			// Print(item.name);
			B_GetWispDetectedItem();
		};
		
		return WispSearchFlags;
	};
	
	return 0;
};

///******************************************************************************************
func int B_MM_WispDetect()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Wisp_Detector))
	{
		Npc_PerceiveAll(self);
		
		if (Wld_DetectNpc(self, Wisp_Detector, nofunc, -1))
		{
			B_RemoveNpc(self);
		};
		
		if (Npc_GetDistToNpc(self, hero) < 2000)
		&& (self.aivar[AIV_TAPOSITION] == ISINPOS)
		{
			self.aivar[AIV_SummonTime] = MONSTER_SUMMON_TIME;	/// changed!!!
			B_WispDetectedItem();
			return LOOP_END;
		}
		else
		{
			if (Npc_GetDistToNpc(self, hero) < 500)
			{
				self.aivar[AIV_TAPOSITION] = ISINPOS;
			}
			else
			{
				self.aivar[AIV_TAPOSITION] = NOTINPOS;
				Npc_ClearAIQueue(self);
				AI_GotoNpc(self, hero);
			};
			
			return LOOP_END;
		};
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Addon_WispDetector_EXIT (C_Info)
{
	npc								=	Wisp_Detector;
	nr								=	999;
	condition						=	aTrue;
	information						=	DIA_Addon_WispDetector_EXIT_Info;
	permanent						=	true;
	description						=	DIALOG_END;
};
func void DIA_Addon_WispDetector_EXIT_Info()
{
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
};

///******************************************************************************************
/// DetectItems
///******************************************************************************************
instance DIA_Addon_WispDetector_DetectItems (C_Info)
{
	npc								=	Wisp_Detector;
	nr								=	5;
	condition						=	aTrue;
	information						=	DIA_Addon_WispDetector_DetectItems_Info;
	permanent						=	true;
	description						=	"Poszukaj czegoś!";
};
func void DIA_Addon_WispDetector_DetectItems_Info()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_15_00"); //Poszukaj czegoś!
	
	Info_ClearChoices	(DIA_Addon_WispDetector_DetectItems);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Chodź za mną!", DIA_Addon_WispDetector_DetectItems_Follow);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję run i zwojów magicznych.", DIA_Addon_WispDetector_DetectItems_RUNE);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję złota, kluczy i narzędzi.", DIA_Addon_WispDetector_DetectItems_NONE);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję broni strzeleckiej i amunicji.", DIA_Addon_WispDetector_DetectItems_FF);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję broni do walki wręcz.", DIA_Addon_WispDetector_DetectItems_NF);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję żywności i ziół.", DIA_Addon_WispDetector_DetectItems_FOOD);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję pierścieni i amuletów.", DIA_Addon_WispDetector_DetectItems_MAGIC);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Potrzebuję magicznych mikstur.", DIA_Addon_WispDetector_DetectItems_POTIONS);
	Info_AddChoice		(DIA_Addon_WispDetector_DetectItems, "Poszukaj wszystkiego, co znajdziesz.", DIA_Addon_WispDetector_DetectItems_ALL);
};
///******************************************************************************************
func void DIA_Addon_WispDetector_DetectItems_Follow()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_FollowMe_Wisp_15_00"); //Folge mir einfach.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_Follow;
};
func void DIA_Addon_WispDetector_DetectItems_ALL()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_ALL_15_00"); //Poszukaj wszystkiego, co znajdziesz.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_ALL;
};
func void DIA_Addon_WispDetector_DetectItems_POTIONS()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_POTIONS_15_00"); //Potrzebuję magicznych mikstur.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_POTIONS;
};
func void DIA_Addon_WispDetector_DetectItems_MAGIC()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_MAGIC_15_00"); //Potrzebuję pierścieni i amuletów.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_MAGIC;
};
func void DIA_Addon_WispDetector_DetectItems_FOOD()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_FOOD_15_00"); //Potrzebuję żywności i ziół.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_FOOD;
};
func void DIA_Addon_WispDetector_DetectItems_NF()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_NF_15_00"); //Potrzebuję broni do walki wręcz.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_NF;
};
func void DIA_Addon_WispDetector_DetectItems_FF()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_FF_15_00"); //Potrzebuję broni strzeleckiej i amunicji.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_FF;
};
func void DIA_Addon_WispDetector_DetectItems_NONE()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_NONE_15_00"); //Potrzebuję złota, kluczy i innych przedmiotów.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_NONE;
};
func void DIA_Addon_WispDetector_DetectItems_RUNE()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_DetectItems_RUNE_15_00"); //Potrzebuję run i zwojów magicznych.
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_RUNE;
};

///******************************************************************************************
/// Follow
///******************************************************************************************
instance DIA_Addon_WispDetector_Follow (C_Info)
{
	npc								=	Wisp_Detector;
	nr								=	5;
	condition						=	aTrue;
	information						=	DIA_Addon_WispDetector_Follow_Info;
	permanent						=	true;
	description						=	"Chodź za mną!";
};
func void DIA_Addon_WispDetector_Follow_Info()
{
	AI_Output (other, self, "DIA_Addon_WispDetector_FollowMe_Wisp_15_00"); //Chodź za mną!
	AI_Output (self, other, "DIA_Wisp_15_00"); //(bzzz)
	AI_StopProcessInfos(self);
	WispSearching = WispSearch_Follow;
};
