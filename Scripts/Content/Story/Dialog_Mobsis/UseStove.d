///******************************************************************************************
/// MOBSI_UseStove
///******************************************************************************************
func void MOBSI_UseStove_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseStove;
		AI_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_UseStove_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseStove)
	{
		return true;
	};
};
instance PC_UseStove_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseStove_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_UseStove_FryFish (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseStove_FryFish_Condition;
	information							=	PC_UseStove_FryFish_Info;
	permanent							=	true;
	description							=	"Sma¿ wszystkie ryby";
};
func int PC_UseStove_FryFish_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseStove)
	{
		return true;
	};
};
func void PC_UseStove_FryFish_Info()
{
	if (Npc_HasItems(hero, ItFo_Fish) >= 1)
	{
		CreateInvItems (hero, ItFo_FriedFish, Npc_HasItems(hero, ItFo_Fish));
		Print(ConcatStrings("Usma¿ono ", ConcatStrings(IntToString(Npc_HasItems(hero, ItFo_Fish)), " ryb.")));
		Npc_RemoveInvItems (hero, ItFo_Fish, Npc_HasItems(hero, ItFo_Fish));
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseStove_FryMeat (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseStove_FryMeat_Condition;
	information							=	PC_UseStove_FryMeat_Info;
	permanent							=	true;
	description							=	"Sma¿ ca³e miêso";
};
func int PC_UseStove_FryMeat_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseStove)
	{
		return true;
	};
};
func void PC_UseStove_FryMeat_Info()
{
	if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1)
	{
		CreateInvItems (hero, ItFoMutton, Npc_HasItems(hero, ItFoMuttonRaw));
		Print(ConcatStrings("Usma¿ono ", ConcatStrings(IntToString(Npc_HasItems(hero, ItFoMuttonRaw)), " kawa³ków miêsa.")));
		Npc_RemoveInvItems (hero, ItFoMuttonRaw, Npc_HasItems(hero, ItFoMuttonRaw));
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
