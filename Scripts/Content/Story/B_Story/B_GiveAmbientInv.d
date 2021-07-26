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
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Chest);			};
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
	}
	else if (slf.guild == GIL_ORC)
	{
		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Health_01);	}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Booze);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Mana_01);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItAt_WolfFur);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItLSTorch);			}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItAt_Teeth);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Chocolate);	}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Jam);			}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Honey);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Alarmhorn);	};
	}
	else if (slf.guild == GIL_GOBBO || slf.guild == GIL_GOBBO_SKELETON)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Fish);			}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Potato);		};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_ForestBerry);	}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_PlaneBerry);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_YELLOW)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Fish);			}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Rice);			};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_ForestBerry);	}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_PlaneBerry);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)
		{
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_SilverRing);		}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_SilverNecklace);	}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_SilverChalice);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Fish);			}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Banana);		};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_ForestBerry);	}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_PlaneBerry);	};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BANDIT)
		{
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_GoldRing);		}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_GoldNecklace);	}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_GoldChalice);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Fish);			}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Chocolate);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_SwampHerb);		}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_Speed_Herb_01);	};
			
			if		(Hlp_Random(3) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_WARRIOR)
		{
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_IronNugget);		}
			else if	(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Fish);			}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Jam);			};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Health_Herb_01);	}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Health_Herb_02);	}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Health_Herb_03);	};
			
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
		{
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItSc_LightHeal);	}
			else if	(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItSc_FireBolt);		};
			
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItFo_Fish);			}
			else if (Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItFo_Honey);		};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Mana_Herb_01);	}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Mana_Herb_02);	}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Mana_Herb_03);	};
			
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON)
		{
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_Coal);			}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_Quartz);		}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItPl_GraveMoss);	};
		};
		
		if		(Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_01);	}
		else if (Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_02);	}
		else if (Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_03);	};
	};
};

///******************************************************************************************
///	B_CreateAmbientGold
///******************************************************************************************
func void B_CreateAmbientGold (var C_NPC slf)
{
	if (slf.guild < GIL_SEPERATOR_HUM)
	{
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
	}
	else if (slf.guild == GIL_ORC)
	{
		CreateInvItems (slf, ItMi_OrcCoin, Hlp_RandomRange(5, slf.level+10));
	}
	else if (slf.guild == GIL_GOBBO)
	{
		CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(0, slf.level+0));
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
