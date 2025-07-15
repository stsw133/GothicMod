///******************************************************************************************
/// B_CreateAmbientInv
///******************************************************************************************
func void B_CreateAmbientInv (var C_Npc slf)
{
	/// ------ Items ------
	if (slf.guild == GIL_PAL)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bacon);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Stew);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Sausage);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Beer);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Coal);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_HolyWater);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Iron);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverRing);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.guild == GIL_MIL)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMutton);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_FishSoup);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Sausage);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Milk);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Coal);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Iron);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverRing);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.guild == GIL_VLK)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_FishSoup);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Cheese);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMutton);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Apple);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Jam);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Beer);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Scrolls);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Ink);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverRing);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.guild == GIL_KDF)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMutton);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Sausage);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Blueplant);		};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Sulfur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Quartz);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Rockcrystal);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverRing);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Mana_01);			};
	}
	else if (slf.guild == GIL_NOV)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Grapes);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Apple);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Fish);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Beer);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Forestberry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Planeberry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Scrolls);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Health_Herb_01);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mana_Herb_01);		};
	}
	else if (slf.guild == GIL_DJG)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bacon);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Stew);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMutton);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WolfFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_BugMandibles);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Joint);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_GoldRing);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.guild == GIL_SLD)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMutton);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Stew);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Sausage);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Milk);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_SheepFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_Teeth);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Joint);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSe_GoldPocket25);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.guild == GIL_BAU)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Apple);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Carrot);			}
//		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Egg);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Potato);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Cheese);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Milk);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Beer);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_SheepFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Planeberry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Forestberry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Wood);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Resin);			};
	}
	else if (slf.guild == GIL_BDT)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Apple);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Cheese);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Fish);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Beer);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItKe_Lockpick);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSe_GoldPocket25);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Joint);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.guild == GIL_STRF)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Rice);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			};
	}
	else if (slf.guild == GIL_DMT)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Mana_01);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Mana_02);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_02);		};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Flask);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Scrolls);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Ink);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Quicksilver);		};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Pitch);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Coal);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Sulfur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Quartz);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Rockcrystal);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_FireCrystal);		};
	}
	else if (slf.guild == GIL_PIR)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Bread);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Pear);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Fish);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Coconut);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Water);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Addon_Grog);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Addon_Hooch);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Addon_Rum);		};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_BlackPowder);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Shell);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverNugget);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSe_GoldPocket25);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Sulfur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_ForestBerry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_PlaneBerry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Fish);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_03);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_05);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Potato);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Gold);				};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_ForestBerry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_PlaneBerry);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Banana);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Joint);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_03);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_05);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverNecklace);	};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BANDIT)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Banana);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Chocolate);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_03);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_05);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_GoldNecklace);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_WARRIOR)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_RedNugget);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Fish);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Iron);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Onion);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_Claw);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_02);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_04);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_06);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_LightHeal);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_FireBolt);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Honey);			}
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Health_Herb_01);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mana_Herb_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_02);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_04);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPl_Mushroom_06);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORC)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMuttonRaw);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WolfFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_Teeth);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Potato);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_MushroomSoup);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORCSOLDIER)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItFoMutton);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WargFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_Claw);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Iron);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Parsley);			};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Stew);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WargFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_CrawlerMandibles);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORCGUARDIAN)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_02);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Sake);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_MeatStew);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_SnapperSkin);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_KeilerTusk);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_SourWine);			};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Mana_01);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Honey);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WargFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_HarpyFeathers);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_RuneBlank);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_02);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Stew);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WargFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_CrawlerPlate);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_TigerFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Addon_Hooch);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ORCCHAMPION)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_03);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Booze);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Stew);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_WargFur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_SharkTeeth);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_ShadowFur);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Alarmhorn);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_DRACONIAN)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Wine);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_FishSoup);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_LurkerSkin);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_FirewaranTongue);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_FireCrystal);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_RedNugget);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ZODD)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItPo_Health_01);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Pitch);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Tabak);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_KeilerFur);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Sulfur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_DrgSnapperHorn);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Chocolate);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItFo_Addon_Rum);		};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_ZOMBIE)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_Poison);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItAt_Ink);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Coal);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Sulfur);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Calcium);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Quartz);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Light);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Firebolt);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_LightHeal);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_IceBolt);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Telekinesis);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Zap);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_MushroomTabak);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_FruitTabak);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_HoneyTabak);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SwampTabak);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Joint);			};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItKe_LockPick);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Hammer);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Knife);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Woodaxe);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Saw);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Pan);				};
	}
	else if (slf.aivar[AIV_MM_REAL_ID] == ID_MUMMY)
	{
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Pitch);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Resin);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Scrolls);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_MagicPowder);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_SilverNugget);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Ink);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_NightToDay);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_InstantFireball);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Sleep);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_IceLance);			}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Resurrection);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItSc_Rock);				};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItLsTorch);				}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_FruitTabak);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_HoneyTabak);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_CoconutTabak);		}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_ChocolateTabak);	}
		else if	(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_DesertJoint);		};
		
		if		(Hlp_Random(2))			{	CreateInvItem (slf, ItMi_Emerald);			}
		else							{	CreateInvItem (slf, ItMi_Ruby);				};
	};
	
	/// ------ Gold ------
	if		(slf.guild == GIL_PAL)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*150, slf.level*200) / 100);	}
	else if	(slf.guild == GIL_MIL)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*100, slf.level*150) / 100);	}
	else if	(slf.guild == GIL_VLK)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*100, slf.level*150) / 100);	}
	else if	(slf.guild == GIL_KDF)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*150, slf.level*200) / 100);	}
	else if	(slf.guild == GIL_NOV)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*50, slf.level*100) / 100);	}
	else if	(slf.guild == GIL_DJG)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*150, slf.level*200) / 100);	}
	else if	(slf.guild == GIL_SLD)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*100, slf.level*150) / 100);	}
	else if	(slf.guild == GIL_BAU)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*50, slf.level*100) / 100);	}
	else if	(slf.guild == GIL_BDT)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*100, slf.level*150) / 100);	}
	else if	(slf.guild == GIL_OUT)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*50, slf.level*100) / 100);	}
	else if	(slf.guild == GIL_PIR)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*125, slf.level*175) / 100);	}
	else if	(slf.guild == GIL_KDW)		{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*75, slf.level*125) / 100);	}
	else if	(slf.guild == GIL_GOBBO)	{	CreateInvItems (slf, ItMi_Gold, r_MinMax(slf.level*50, slf.level*100) / 100);	}
	else if	(slf.guild == GIL_ORC)		{	CreateInvItems (slf, ItMi_OrcCoin, r_MinMax(slf.level*50, slf.level*100) / 100);	};
};
