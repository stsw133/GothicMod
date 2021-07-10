///******************************************************************************************
///	B_CreateAmbientItems
///******************************************************************************************
func void B_CreateAmbientItems (var C_NPC slf)
{
	if (slf.guild == GIL_STRF)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItFo_Bread);		};
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItFo_Water);		};
	}
	else if (slf.guild == GIL_DMT)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItPo_Health_01);	};
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItPo_Mana_01);		};
		
		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Pitch);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Rockcrystal);	}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Sulfur);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Quartz);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Coal);			};
	}
	else
	{
		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Bread);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFoMutton);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Sausage);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Bacon);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_FriedFish);	};

		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Water);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Booze);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Wine);			}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Milk);			}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Beer);			};

		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Apple);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Pear);			}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Cheese);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_WhiteCheese);	}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Carrot);		};
	};

	if (slf.guild == GIL_BDT)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, Itke_Lockpick);		};
	};

	if (slf.guild == GIL_PIR)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItFo_Addon_Grog);	};
	};

	if (slf.guild == GIL_MIL) || (slf.guild == GIL_DJG) || (slf.guild == GIL_SLD)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItPo_Health_02);	};
	};

	if (slf.guild == GIL_PAL) || (slf.guild == GIL_KDF) || (slf.guild == GIL_KDW)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItPo_Mana_02);		};
	};
};

///******************************************************************************************
///	B_CreateAmbientGold
///******************************************************************************************
func void B_CreateAmbientGold (var C_NPC slf)
{
	if (slf.guild == GIL_NOV)
	|| (slf.guild == GIL_BAU)
	|| (slf.guild == GIL_OUT)
	{
		CreateInvItems (slf, ItMi_gold, Hlp_RandomRange(0, slf.level+0));
	};

	if (slf.guild == GIL_VLK)
	|| (slf.guild == GIL_BDT)
	|| (slf.guild == GIL_PIR)
	|| (slf.guild == GIL_KDW)
	|| (slf.guild == GIL_ORC)
	{
		CreateInvItems (slf, ItMi_gold, Hlp_RandomRange(10, slf.level+20));
	};

	if (slf.guild == GIL_MIL)
	|| (slf.guild == GIL_PAL)
	|| (slf.guild == GIL_SLD)
	|| (slf.guild == GIL_DJG)
	|| (slf.guild == GIL_KDF)
	{
		CreateInvItems (slf, ItMi_gold, Hlp_RandomRange(20, slf.level+40));
	};
};

///******************************************************************************************
///	B_CreateAmbientInv
///******************************************************************************************
func void B_CreateAmbientInv (var C_NPC slf)
{
	B_CreateAmbientItems(slf);
	B_CreateAmbientGold(slf);
};
