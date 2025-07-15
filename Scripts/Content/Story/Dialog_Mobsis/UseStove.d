///******************************************************************************************
/// MOBSI_UseStove
///******************************************************************************************
func void MOBSI_UseStove_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseStove;
		AI_ProcessInfos(self);
	};
};

func int PC_UseStove_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseStove)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_UseStove_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseStove_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Fry meat
///******************************************************************************************
instance PC_UseStove_FryMeat (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseStove_Condition;
	information							=	PC_UseStove_FryMeat_Info;
	permanent							=	true;
	description							=	"Sma¿ wszystkie kawa³ki miêsa";
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

///******************************************************************************************
/// Fry bad meat
///******************************************************************************************
instance PC_UseStove_FryBadMeat (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseStove_Condition;
	information							=	PC_UseStove_FryBadMeat_Info;
	permanent							=	true;
	description							=	"Sma¿ wszystkie kawa³ki twardego miêsa";
};
func void PC_UseStove_FryBadMeat_Info()
{
	if (Npc_HasItems(hero, ItFo_BadMeatRaw) >= 1)
	{
		CreateInvItems (hero, ItFo_BadMeat, Npc_HasItems(hero, ItFo_BadMeatRaw));
		Print(ConcatStrings("Usma¿ono ", ConcatStrings(IntToString(Npc_HasItems(hero, ItFo_BadMeatRaw)), " kawa³ków twardego miêsa.")));
		Npc_RemoveInvItems (hero, ItFo_BadMeatRaw, Npc_HasItems(hero, ItFo_BadMeatRaw));
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};

///******************************************************************************************
/// Fry fat meat
///******************************************************************************************
instance PC_UseStove_FryFatMeat (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_UseStove_Condition;
	information							=	PC_UseStove_FryFatMeat_Info;
	permanent							=	true;
	description							=	"Sma¿ wszystkie kawa³ki t³ustego miêsa";
};
func void PC_UseStove_FryFatMeat_Info()
{
	if (Npc_HasItems(hero, ItFo_FatMeatRaw) >= 1)
	{
		CreateInvItems (hero, ItFo_FatMeat, Npc_HasItems(hero, ItFo_FatMeatRaw));
		Print(ConcatStrings("Usma¿ono ", ConcatStrings(IntToString(Npc_HasItems(hero, ItFo_FatMeatRaw)), " kawa³ków t³ustego miêsa.")));
		Npc_RemoveInvItems (hero, ItFo_FatMeatRaw, Npc_HasItems(hero, ItFo_FatMeatRaw));
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
