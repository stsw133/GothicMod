///******************************************************************************************
///	B_CreateAmbientInv
///******************************************************************************************
func void B_CreateAmbientInv (var C_Npc slf)
{
	/// ------ Items ------
	if (slf.guild == GIL_STRF)
	{
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItFo_Bread);		};
		if (Hlp_Random(2) == 0)			{	CreateInvItem (slf, ItFo_Water);		};
	}
	else if (slf.guild == GIL_DMT)
	{
		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Health_02);	}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Mana_02);		};
		
		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Pitch);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Coal);			}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Sulfur);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Quartz);		}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Rockcrystal);	}
		else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Quicksilver);	};
	}
	else if (slf.guild < GIL_SEPERATOR_HUM)
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
		
		if (slf.guild == GIL_BDT)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItKe_Lockpick);			}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItSe_GoldPocket25);		};
		}
		else if (slf.guild == GIL_PIR)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Addon_Grog);	}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Addon_Hooch);	}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Addon_Rum);	};
		}
		else if (slf.guild == GIL_MIL) || (slf.guild == GIL_DJG) || (slf.guild == GIL_SLD)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Health_01);	}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Health_02);	}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Health_03);	};
		}
		else if (slf.guild == GIL_PAL) || (slf.guild == GIL_KDF) || (slf.guild == GIL_KDW)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Mana_01);		}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Mana_02);		}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Mana_03);		};
		};
	};
	
	/// ------ Gold ------
	if (slf.guild == GIL_NOV)
	|| (slf.guild == GIL_BAU)
	|| (slf.guild == GIL_OUT)
	{
		CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(0, slf.level+0));
	}
	else if (slf.guild == GIL_VLK)
	|| (slf.guild == GIL_BDT)
	|| (slf.guild == GIL_PIR)
	|| (slf.guild == GIL_KDW)
	{
		CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(10, slf.level+20));
	}
	else if (slf.guild == GIL_MIL)
	|| (slf.guild == GIL_PAL)
	|| (slf.guild == GIL_SLD)
	|| (slf.guild == GIL_DJG)
	|| (slf.guild == GIL_KDF)
	{
		CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(20, slf.level+40));
	};
};
