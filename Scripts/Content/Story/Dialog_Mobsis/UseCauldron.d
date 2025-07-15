///******************************************************************************************
/// MOBSI_UseCauldron
///******************************************************************************************
func void MOBSI_UseCauldron_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseCauldron;
		AI_ProcessInfos(self);
	};
};

func int PC_UseCauldron_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseCauldron)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_UseCauldron_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseCauldron_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Dishes
///******************************************************************************************
instance PC_UseCauldron_Dishes (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseCauldron_Condition;
	information							=	PC_UseCauldron_Dishes_Info;
	permanent							=	true;
	description							=	"Przygotuj dania";
};
func void PC_UseCauldron_Dishes_Info()
{
	Info_ClearChoices	(PC_UseCauldron_Dishes);
	Info_AddChoice		(PC_UseCauldron_Dishes, DIALOG_BACK, PC_UseCauldron_Dishes_BACK);
	
	if (PLAYER_TALENT_COOKING[COOKING_WineStew])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Gulasz na winie (2x miêso, wino, zio³a)", PC_UseCauldron_Dishes_WineStew);
	};
	if (PLAYER_TALENT_COOKING[COOKING_StewedVegetables])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Duszone warzywa (kapusta, marchew, jajo œcierwojada, zio³a)", PC_UseCauldron_Dishes_StewedVegetables);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Stew])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Gulasz warzywny (marchew, cebula, grzyb, przyprawy)", PC_UseCauldron_Dishes_Stew);
	};
	if (PLAYER_TALENT_COOKING[COOKING_SpicyStew])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Ostry gulasz (2x piekielnik, kapusta, ry¿, przyprawy)", PC_UseCauldron_Dishes_SpicyStew);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Spaghetti])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Spaghetti (miêso, chili, m¹ka, przyprawy)", PC_UseCauldron_Dishes_Spaghetti);
	};
	if (PLAYER_TALENT_COOKING[COOKING_ScrambledEggs])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Jajecznica (2x jajo œcierwojada, ser, cebula, zio³a)", PC_UseCauldron_Dishes_ScrambledEggs);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Salad])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Sa³atka (2x marchew, pietruszka, cebula, zio³a)", PC_UseCauldron_Dishes_Salad);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Puree])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Puree (5x ziemniak, szynka, cebula, zio³a)", PC_UseCauldron_Dishes_Puree);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Pilaf])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Pilaf (ry¿, miêso, marchew, zio³a)", PC_UseCauldron_Dishes_Pilaf);
	};
	if (PLAYER_TALENT_COOKING[COOKING_MeatStew])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Gulasz miêsny (miêso, marchew, pietruszka, zio³a)", PC_UseCauldron_Dishes_MeatStew);
	};
	if (PLAYER_TALENT_COOKING[COOKING_MeatCauldron])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Miêsny kocio³ek (5x ziemniak, 2x miêso, cebula, przyprawy)", PC_UseCauldron_Dishes_MeatCauldron);
	};
	if (PLAYER_TALENT_COOKING[COOKING_JamPaste])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Pasta owocowa z d¿emem (2x winogrono, d¿em, miód)", PC_UseCauldron_Dishes_JamPaste);
	};
	if (PLAYER_TALENT_COOKING[COOKING_HoneyOatmeal])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Miodowa owsianka (2x jab³ko, miód, ry¿, mleko)", PC_UseCauldron_Dishes_HoneyOatmeal);
	};
	if (PLAYER_TALENT_COOKING[COOKING_FriedPasta])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Sma¿ony makaron (miêso, cebula, m¹ka, zio³a)", PC_UseCauldron_Dishes_FriedPasta);
	};
	if (PLAYER_TALENT_COOKING[COOKING_ForestStew])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Gulasz leœny (2x twarde miêso, marchew, pietruszka, przyprawy)", PC_UseCauldron_Dishes_ForestStew);
	};
	if (PLAYER_TALENT_COOKING[COOKING_BugPulp])
	{
		Info_AddChoice (PC_UseCauldron_Dishes, "Owadzia papka (2x nasiono, owadzie miêso, cebula, przyprawy)", PC_UseCauldron_Dishes_BugPulp);
	};
};

///******************************************************************************************
func void PC_UseCauldron_Dishes_BACK()
{
	Info_ClearChoices(PC_UseCauldron_Dishes);
};

func void PC_UseCauldron_Dishes_BugPulp()
{
	if (Npc_HasItems(hero, ItFo_Seeds) >= 2)
	&& (Npc_HasItems(hero, ItFo_MeatbugFlesh) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Spices) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Seeds, 2);
		Npc_RemoveInvItems (hero, ItFo_MeatbugFlesh, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_BugPulp);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_ForestStew()
{
	if (Npc_HasItems(hero, ItFo_BadMeatRaw) >= 2 || Npc_HasItems(hero, ItFo_BadMeat) >= 2)
	&& (Npc_HasItems(hero, ItFo_Carrot) >= 1)
	&& (Npc_HasItems(hero, ItFo_Parsley) >= 1)
	&& (Npc_HasItems(hero, ItFo_Spices) >= 1)
	{
		if (Npc_HasItems(hero, ItFo_BadMeatRaw) >= 2)	{	Npc_RemoveInvItems(hero, ItFo_BadMeatRaw, 2);	}
		else											{	Npc_RemoveInvItems(hero, ItFo_BadMeat, 2);		};
		Npc_RemoveInvItems (hero, ItFo_Carrot, 1);
		Npc_RemoveInvItems (hero, ItFo_Parsley, 1);
		
		CreateInvItem (hero, ItFo_ForestStew);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_FriedPasta()
{
	if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1 || Npc_HasItems(hero, ItFoMutton) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Flour) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 1);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 1);		};
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_FriedPasta);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_HoneyOatmeal()
{
	if (Npc_HasItems(hero, ItFo_Apple) >= 2)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 1)
	&& (Npc_HasItems(hero, ItFo_Rice) >= 1)
	&& (Npc_HasItems(hero, ItFo_Milk) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Apple, 2);
		Npc_RemoveInvItems (hero, ItFo_Honey, 1);
		Npc_RemoveInvItems (hero, ItFo_Rice, 1);
		Npc_RemoveInvItem (hero, ItFo_Milk); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_HoneyOatmeal);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_JamPaste()
{
	if (Npc_HasItems(hero, ItFo_Grapes) >= 2)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 1)
	&& (Npc_HasItems(hero, ItFo_Jam) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Grapes, 2);
		Npc_RemoveInvItems (hero, ItFo_Honey, 1);
		Npc_RemoveInvItems (hero, ItFo_Jam, 1);
		
		CreateInvItem (hero, ItFo_JamPaste);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_MeatCauldron()
{
	if (Npc_HasItems(hero, ItFo_Potato) >= 5)
	&& (Npc_HasItems(hero, ItFoMuttonRaw) >= 2 || Npc_HasItems(hero, ItFoMutton) >= 2)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Spices) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Potato, 5);
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 2)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 2);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 2);		};
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_MeatCauldron);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_MeatStew()
{
	if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1 || Npc_HasItems(hero, ItFoMutton) >= 1)
	&& (Npc_HasItems(hero, ItFo_Carrot) >= 1)
	&& (Npc_HasItems(hero, ItFo_Parsley) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 1);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 1);		};
		Npc_RemoveInvItems (hero, ItFo_Carrot, 1);
		Npc_RemoveInvItems (hero, ItFo_Parsley, 1);
		
		CreateInvItem (hero, ItFo_MeatStew);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_Pilaf()
{
	if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1 || Npc_HasItems(hero, ItFoMutton) >= 1)
	&& (Npc_HasItems(hero, ItFo_Carrot) >= 1)
	&& (Npc_HasItems(hero, ItFo_Rice) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 1);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 1);		};
		Npc_RemoveInvItems (hero, ItFo_Carrot, 1);
		Npc_RemoveInvItems (hero, ItFo_Rice, 1);
		
		CreateInvItem (hero, ItFo_Pilaf);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_Puree()
{
	if (Npc_HasItems(hero, ItFo_Potato) >= 5)
	&& (Npc_HasItems(hero, ItFo_Bacon) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Potato, 5);
		Npc_RemoveInvItems (hero, ItFo_Bacon, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_Puree);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_Salad()
{
	if (Npc_HasItems(hero, ItFo_Carrot) >= 2)
	&& (Npc_HasItems(hero, ItFo_Parsley) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Carrot, 2);
		Npc_RemoveInvItems (hero, ItFo_Parsley, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_Salad);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_ScrambledEggs()
{
	if (Npc_HasItems(hero, ItAt_ScavengerEgg) >= 2)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_ScavengerEgg, 2);
		Npc_RemoveInvItems (hero, ItFo_Cheese, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_ScrambledEggs);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_Spaghetti()
{
	if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1 || Npc_HasItems(hero, ItFoMutton) >= 1)
	&& (Npc_HasItems(hero, ItFo_Chili) >= 1)
	&& (Npc_HasItems(hero, ItFo_Flour) >= 1)
	&& (Npc_HasItems(hero, ItFo_Spices) >= 1)
	{
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 1);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 1);		};
		Npc_RemoveInvItems (hero, ItFo_Chili, 1);
		
		CreateInvItem (hero, ItFo_Spaghetti);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_SpicyStew()
{
	if (Npc_HasItems(hero, ItPl_Mushroom_03) >= 2)
	&& (Npc_HasItems(hero, ItFo_Cabbage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Rice) >= 1)
	&& (Npc_HasItems(hero, ItFo_Spices) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mushroom_03, 2);
		Npc_RemoveInvItems (hero, ItFo_Cabbage, 1);
		Npc_RemoveInvItems (hero, ItFo_Rice, 1);
		
		CreateInvItem (hero, ItFo_SpicyStew);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_Stew()
{
	if (Npc_HasItems(hero, ItPl_Mushroom_01) >= 1 || Npc_HasItems(hero, ItPl_Mushroom_03) >= 1)
	&& (Npc_HasItems(hero, ItFo_Carrot) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Spices) >= 1)
	{
		if (Npc_HasItems(hero, ItPl_Mushroom_01) >= 1)	{	Npc_RemoveInvItems(hero, ItPl_Mushroom_01, 1);	}
		else											{	Npc_RemoveInvItems(hero, ItPl_Mushroom_03, 1);	};
		Npc_RemoveInvItems (hero, ItFo_Carrot, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_Stew);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_StewedVegetables()
{
	if (Npc_HasItems(hero, ItFo_Cabbage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Carrot) >= 1)
	&& (Npc_HasItems(hero, ItAt_ScavengerEgg) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Cabbage, 1);
		Npc_RemoveInvItems (hero, ItFo_Carrot, 1);
		Npc_RemoveInvItems (hero, ItAt_ScavengerEgg, 1);
		
		CreateInvItem (hero, ItFo_StewedVegetables);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Dishes_WineStew()
{
	if (Npc_HasItems(hero, ItFoMuttonRaw) >= 2 || Npc_HasItems(hero, ItFoMutton) >= 2)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 2)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 2);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 2);		};
		Npc_RemoveInvItem (hero, ItFo_Wine); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_WineStew);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

///******************************************************************************************
/// Soups
///******************************************************************************************
instance PC_UseCauldron_Soups (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseCauldron_Condition;
	information							=	PC_UseCauldron_Soups_Info;
	permanent							=	true;
	description							=	"Przygotuj zupy i kompoty";
};
func void PC_UseCauldron_Soups_Info()
{
	Info_ClearChoices	(PC_UseCauldron_Soups);
	Info_AddChoice		(PC_UseCauldron_Soups, DIALOG_BACK, PC_UseCauldron_Soups_BACK);
	
	if (PLAYER_TALENT_COOKING[COOKING_BlueDecoction])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Wywar z serafisu (2x serafis, woda)", PC_UseCauldron_Soups_BlueDecoction);
	};
	if (PLAYER_TALENT_COOKING[COOKING_PearCompote])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Kompot gruszkowy (2x gruszka, woda)", PC_UseCauldron_Soups_PearCompote);
	};
	if (PLAYER_TALENT_COOKING[COOKING_BerryCompote])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Kompot jagodowy (2x polna jagoda, woda)", PC_UseCauldron_Soups_BerryCompote);
	};
	if (PLAYER_TALENT_COOKING[COOKING_AppleCompote])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Kompot jab³kowy (2x jab³ko, woda)", PC_UseCauldron_Soups_AppleCompote);
	};
	if (PLAYER_TALENT_COOKING[COOKING_SpicySoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Ostra zupa (chili, kie³basa, woda)", PC_UseCauldron_Soups_SpicySoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_SausageSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa piwna z kie³bas¹ (piwo, kie³basa, cebula)", PC_UseCauldron_Soups_SausageSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_OysterSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa z ostryg (ostryga, ser, mleko, zio³a)", PC_UseCauldron_Soups_OysterSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_OnionSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa cebulowa (2x cebula, chleb, woda)", PC_UseCauldron_Soups_OnionSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_MushroomSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa grzybowa (2x mu³owy grzyb, cebula, woda)", PC_UseCauldron_Soups_MushroomSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_MilkSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa mleczna (mleko, ryba, por, zio³a)", PC_UseCauldron_Soups_MilkSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_HoneySoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Ry¿anka z miodem (miód, ry¿, zio³a)", PC_UseCauldron_Soups_HoneySoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_GreenSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa z pora (2x por, woda, zio³a)", PC_UseCauldron_Soups_GreenSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_FishSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa rybna (2x ryba, woda, zio³a)", PC_UseCauldron_Soups_FishSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_CheeseSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa serowa na piwie (piwo, ser, cebula, mleko)", PC_UseCauldron_Soups_CheeseSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_CabbageSoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Kapuœniak (2x kapusta, 2x ziemniak, miêso, woda)", PC_UseCauldron_Soups_CabbageSoup);
	};
	if (PLAYER_TALENT_COOKING[COOKING_BerrySoup])
	{
		Info_AddChoice (PC_UseCauldron_Soups, "Zupa owocowa (2x jagoda, jab³ko, gruszka, woda)", PC_UseCauldron_Soups_BerrySoup);
	};
};

///******************************************************************************************
func void PC_UseCauldron_Soups_BACK()
{
	Info_ClearChoices(PC_UseCauldron_Soups);
};

func void PC_UseCauldron_Soups_BerrySoup()
{
	if (Npc_HasItems(hero, ItPl_Forestberry) >= 2 || Npc_HasItems(hero, ItPl_Planeberry) >= 2)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 1)
	&& (Npc_HasItems(hero, ItFo_Pear) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		if (Npc_HasItems(hero, ItPl_Forestberry) >= 2)	{	Npc_RemoveInvItems(hero, ItPl_Forestberry, 2);	}
		else											{	Npc_RemoveInvItems(hero, ItPl_Planeberry, 2);	};
		Npc_RemoveInvItems (hero, ItFo_Apple, 1);
		Npc_RemoveInvItems (hero, ItFo_Pear, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_BerrySoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_CabbageSoup()
{
	if (Npc_HasItems(hero, ItFo_Cabbage) >= 2)
	&& (Npc_HasItems(hero, ItFo_Potato) >= 2)
	&& (Npc_HasItems(hero, ItFoMuttonRaw) >= 1 || Npc_HasItems(hero, ItFoMutton) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Cabbage, 2);
		Npc_RemoveInvItems (hero, ItFo_Potato, 2);
		if (Npc_HasItems(hero, ItFoMuttonRaw) >= 1)		{	Npc_RemoveInvItems(hero, ItFoMuttonRaw, 1);		}
		else											{	Npc_RemoveInvItems(hero, ItFoMutton, 1);		};
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_CabbageSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_CheeseSoup()
{
	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Milk) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Beer, 1);
		Npc_RemoveInvItems (hero, ItFo_Cheese, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		Npc_RemoveInvItem (hero, ItFo_Milk); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_CheeseSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_FishSoup()
{
	if (Npc_HasItems(hero, ItFo_Fish) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Fish, 2);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_FishSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_GreenSoup()
{
	if (Npc_HasItems(hero, ItFo_Leek) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Leek, 2);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_GreenSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_HoneySoup()
{
	if (Npc_HasItems(hero, ItFo_Honey) >= 1)
	&& (Npc_HasItems(hero, ItFo_Rice) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Honey, 1);
		Npc_RemoveInvItems (hero, ItFo_Rice, 1);
		
		CreateInvItem (hero, ItFo_HoneySoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_MilkSoup()
{
	if (Npc_HasItems(hero, ItFo_Milk) >= 1)
	&& (Npc_HasItems(hero, ItFo_Fish) >= 1)
	&& (Npc_HasItems(hero, ItFo_Leek) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Milk); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItFo_Fish, 1);
		Npc_RemoveInvItems (hero, ItFo_Leek, 1);
		
		CreateInvItem (hero, ItFo_MilkSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_MushroomSoup()
{
	if (Npc_HasItems(hero, ItPl_Mushroom_01) >= 2)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mushroom_01, 2);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_MushroomSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_OnionSoup()
{
	if (Npc_HasItems(hero, ItFo_Onion) >= 2)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Onion, 2);
		Npc_RemoveInvItems (hero, ItFo_Bread, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_OnionSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_OysterSoup()
{
	if (Npc_HasItems(hero, ItFo_Oyster) >= 1)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Milk) >= 1)
	&& (Npc_HasItems(hero, ItFo_Herbs) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Oyster, 1);
		Npc_RemoveInvItems (hero, ItFo_Cheese, 1);
		Npc_RemoveInvItem (hero, ItFo_Milk); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_OysterSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_SausageSoup()
{
	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Onion) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Beer, 1);
		Npc_RemoveInvItems (hero, ItFo_Sausage, 1);
		Npc_RemoveInvItems (hero, ItFo_Onion, 1);
		
		CreateInvItem (hero, ItFo_SausageSoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_SpicySoup()
{
	if (Npc_HasItems(hero, ItFo_Chili) >= 1)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Chili, 1);
		Npc_RemoveInvItems (hero, ItFo_Sausage, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItFo_SpicySoup);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_AppleCompote()
{
	if (Npc_HasItems(hero, ItFo_Apple) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Apple, 2);
		Npc_RemoveInvItem (hero, ItFo_Water);
		
		CreateInvItem (hero, ItFo_AppleCompote);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_BerryCompote()
{
	if (Npc_HasItems(hero, ItPl_Planeberry) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Planeberry, 2);
		Npc_RemoveInvItem (hero, ItFo_Water);
		
		CreateInvItem (hero, ItFo_BerryCompote);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_PearCompote()
{
	if (Npc_HasItems(hero, ItFo_Pear) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Pear, 2);
		Npc_RemoveInvItem (hero, ItFo_Water);
		
		CreateInvItem (hero, ItFo_PearCompote);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Soups_BlueDecoction()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 2);
		Npc_RemoveInvItem (hero, ItFo_Water);
		
		CreateInvItem (hero, ItFo_BlueDecoction);
		Print(PRINT_CookingSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

///******************************************************************************************
/// Alcohol
///******************************************************************************************
instance PC_UseCauldron_Alcohol (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_UseCauldron_Condition;
	information							=	PC_UseCauldron_Alcohol_Info;
	permanent							=	true;
	description							=	"Uwarz alkohol";
};
func void PC_UseCauldron_Alcohol_Info()
{
	Info_ClearChoices	(PC_UseCauldron_Alcohol);
	Info_AddChoice		(PC_UseCauldron_Alcohol, DIALOG_BACK, PC_UseCauldron_Alcohol_BACK);
	
	if (PLAYER_TALENT_COOKING[COOKING_Wine])
	{
		Info_AddChoice (PC_UseCauldron_Alcohol, "Wino (winogrono, woda)", PC_UseCauldron_Alcohol_Wine);
	};
	if (PLAYER_TALENT_COOKING[COOKING_SourWine])
	{
		Info_AddChoice (PC_UseCauldron_Alcohol, "Kwaœne wino (leœna jagoda, woda)", PC_UseCauldron_Alcohol_SourWine);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Sake])
	{
		Info_AddChoice (PC_UseCauldron_Alcohol, "2x ry¿ówka (ry¿, 2x woda)", PC_UseCauldron_Alcohol_Sake);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Mead])
	{
		Info_AddChoice (PC_UseCauldron_Alcohol, "3x miód pitny (miód, 3x woda)", PC_UseCauldron_Alcohol_Mead);
	};
	if (PLAYER_TALENT_COOKING[COOKING_DarkBeer])
	{
		Info_AddChoice (PC_UseCauldron_Alcohol, "Ciemne piwo (2x nasiona, woda)", PC_UseCauldron_Alcohol_DarkBeer);
	};
	if (PLAYER_TALENT_COOKING[COOKING_Booze])
	{
		Info_AddChoice (PC_UseCauldron_Alcohol, "Gorza³a (2x ziemniak, woda)", PC_UseCauldron_Alcohol_Booze);
	};
};

///******************************************************************************************
func void PC_UseCauldron_Alcohol_BACK()
{
	Info_ClearChoices(PC_UseCauldron_Alcohol);
};

func void PC_UseCauldron_Alcohol_Booze()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Potato) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItems (hero, ItFo_Potato, 2);
		
		CreateInvItem (hero, ItFo_Booze);
		Print("Uwarzono gorza³ê.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Alcohol_DarkBeer()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Seeds) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItems (hero, ItFo_Seeds, 2);
		
		CreateInvItem (hero, ItFo_DarkBeer);
		Print("Uwarzono ciemne piwo.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Alcohol_Mead()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 3)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Water, 3);
		Npc_RemoveInvItem (hero, ItFo_Honey);
		
		CreateInvItems (hero, ItFo_Mead, 3);
		Print("Uwarzono miód pitny.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Alcohol_Sake()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 2)
	&& (Npc_HasItems(hero, ItFo_Rice) >= 1)
	{
		Npc_RemoveInvItems (hero, ItFo_Water, 2);
		Npc_RemoveInvItem (hero, ItFo_Rice);
		
		CreateInvItems (hero, ItFo_Sake, 2);
		Print("Uwarzono ry¿ówkê.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Alcohol_SourWine()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Forestberry) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItem (hero, ItPl_Forestberry);
		
		CreateInvItem (hero, ItFo_SourWine);
		Print("Uwarzono kwaœne wino.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseCauldron_Alcohol_Wine()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItFo_Grapes) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItem (hero, ItFo_Grapes);
		
		CreateInvItem (hero, ItFo_Wine);
		Print("Uwarzono wino.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
