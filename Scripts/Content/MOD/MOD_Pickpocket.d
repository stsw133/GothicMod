///******************************************************************************************
/// MOD_Pickpocket
///******************************************************************************************
func int MOD_Pickpocket_DexToSteal (var C_Npc oth)
{
	var int DexToSteal; DexToSteal = (oth.level * 2) + (oth.aivar[AIV_PlayerHasPickedMyPocket] * 20);
	
	if (Npc_IsInState(oth, ZS_Sleep))
	{
		DexToSteal /= 2;
	};
	
	return DexToSteal;
};

///******************************************************************************************
func void MOD_Pickpocket (var C_Npc slf, var C_Npc oth)
{
	if (Npc_IsDead(oth))
	{
		return;
	};
	if (oth.aivar[AIV_PlayerHasPickedMyPocket])
	{
		return;
	};
	
	var int DexToSteal; DexToSteal = MOD_Pickpocket_DexToSteal(oth);
	var int PickpocketSuccess;
	
	if (slf.attribute[ATR_DEXTERITY] >= DexToSteal)
	{
		if		(Npc_HasItems(oth, ItKe_Greg_Addon_MIS) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_Greg_Addon_MIS, 1);		}
		else if	(Npc_HasItems(oth, ItKe_KlosterSchatz) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_KlosterSchatz, 1);			}
		else if	(Npc_HasItems(oth, ItKe_IgarazChest_MIS) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_IgarazChest_MIS, 1);		}
		else if	(Npc_HasItems(oth, ItKe_City_Tower_01) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_City_Tower_01, 1);			}
		else if	(Npc_HasItems(oth, ItKe_City_Tower_02) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_City_Tower_02, 1);			}
		else if	(Npc_HasItems(oth, ItKe_City_Tower_03) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_City_Tower_03, 1);			}
		else if	(Npc_HasItems(oth, ItKe_City_Tower_04) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_City_Tower_04, 1);			}
		else if	(Npc_HasItems(oth, ItKe_City_Tower_05) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_City_Tower_05, 1);			}
		else if	(Npc_HasItems(oth, ItKe_OC_MainGate_MIS) >= 1)			{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_OC_MainGate_MIS, 1);		}
		else if	(Npc_HasItems(oth, ItKe_Richter) >= 1)					{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_Richter, 1);				}
		else if	(Npc_HasItems(oth, ItKe_Valentino) >= 1)				{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_Valentino, 1);				}
		else if	(Npc_HasItems(oth, ItKe_Salandril) >= 1)				{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_Salandril, 1);				}
		else if	(Npc_HasItems(oth, ItKe_Bromor) >= 1)					{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItKe_Bromor, 1);				}
		else if (Npc_HasItems(oth, ItWr_CorneliusTagebuch_MIS) >= 1)	{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItWr_CorneliusTagebuch_MIS, 1);	}
		else if (Npc_HasItems(oth, ItWr_Schuldenbuch) >= 1)				{	PickpocketSuccess = true; B_GiveInvItems (oth, slf, ItWr_Schuldenbuch, 1);			}
		else if (Npc_HasItems(oth, ItMi_Gold) > 0)
		{
			var int GoldToSteal; GoldToSteal = Npc_HasItems(oth, ItMi_Gold);
			if (GoldToSteal > 100)	{	B_GiveInvItems (oth, slf, ItMi_Gold, 100);			}
			else					{	B_GiveInvItems (oth, slf, ItMi_Gold, GoldToSteal);	};
			
			Snd_Play("Geldbeutel");
			PickpocketSuccess = true;
		}
		else
		{
			Print("Nie znaleziono nic cennego...");
			PickpocketSuccess = true;
		};
		
		/// if pickpocket succeeded
		if (PickpocketSuccess)
		{
			if (!oth.aivar[AIV_PlayerHasPickedMyPocket])
			{
				B_GivePlayerExp(oth.level);
			};
			oth.aivar[AIV_PlayerHasPickedMyPocket] += 1;
		};
	}
	else
	{
		//B_Say (oth, slf, "$DIRTYTHIEF");
		//B_Attack (oth, slf, AR_Theft, 1);
		
		var string concatText;
		concatText = ConcatStrings ("Potrzeba ", IntToString(DexToSteal));
		concatText = ConcatStrings (concatText, " pkt. zrêcznoœci by dokonaæ udanej kradzie¿y.");
		Print(concatText);
	};
};
