///******************************************************************************************
///	B_OnHotkey
///******************************************************************************************
func int B_GetBestPlayerMap()
{
	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_HasItems(hero, ItWr_Map_NewWorld) >= 1)
		{
			return ItWr_Map_NewWorld;
		}
		else if (Npc_HasItems(hero, ItWr_Map_Shrine_MIS) >= 1)
		{
			return ItWr_Map_Shrine_MIS;
		}
		else if	(Npc_HasItems(hero, ItWr_Map_Caves_MIS) >= 1)
		{
			return ItWr_Map_Caves_MIS;
		}
		else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
		{
			return ItWr_Map_NewWorld_Ornaments_Addon;
		}
		else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter) >= 1)
		{
			return ItWr_Map_NewWorld_Dexter;
		}
		else if (Npc_HasItems(hero, ItWr_Map_ShatteredGolem_MIS) >= 1)
		{
			return ItWr_Map_ShatteredGolem_MIS;
		}
		else if (Npc_HasItems(hero, ItWr_Map_Orcelite_MIS) >= 1)
		{
			return ItWr_Map_Orcelite_MIS;
		}
		else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_City) >= 1)
		{
			return ItWr_Map_NewWorld_City;
		};
	}
	else if (CurrentLevel == OLDWORLD_ZEN)
	{
		if (Npc_HasItems(hero, ItWr_Map_OldWorld) >= 1)
		{
			return ItWr_Map_OldWorld;
		}
		else if	(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS) >= 1)
		{
			return ItWr_Map_OldWorld_Oremines_MIS;
		};
	}
	else if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if (Npc_HasItems(hero, ItWr_Map_AddonWorld) >= 1)
		{
			return ItWr_Map_AddonWorld;
		}
		else if (Npc_HasItems(hero, ItWr_Addon_TreasureMap) >= 1)
		{
			return ItWr_Addon_TreasureMap;
		};
	};
	
	return 0;
};

///******************************************************************************************
func int B_GetAnyPlayerMap()
{
	if (Npc_HasItems(hero, ItWr_Map_NewWorld) >= 1)
	{
		return ItWr_Map_NewWorld;
	}
	else if (Npc_HasItems(hero, ItWr_Map_Shrine_MIS) >= 1)
	{
		return ItWr_Map_Shrine_MIS;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_Caves_MIS) >= 1)
	{
		return ItWr_Map_Caves_MIS;
	}
	else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
	{
		return ItWr_Map_NewWorld_Ornaments_Addon;
	}
	else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter) >= 1)
	{
		return ItWr_Map_NewWorld_Dexter;
	}
	else if (Npc_HasItems(hero, ItWr_Map_ShatteredGolem_MIS) >= 1)
	{
		return ItWr_Map_ShatteredGolem_MIS;
	}
	else if (Npc_HasItems(hero, ItWr_Map_Orcelite_MIS) >= 1)
	{
		return ItWr_Map_Orcelite_MIS;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_City) >= 1)
	{
		return ItWr_Map_NewWorld_City;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_OldWorld) >= 1)
	{
		return ItWr_Map_OldWorld;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS) >= 1)
	{
		return ItWr_Map_OldWorld_Oremines_MIS;
	}
	else if	(Npc_HasItems(hero, ItWr_Map_AddonWorld) >= 1)
	{
		return ItWr_Map_AddonWorld;
	}
	else if (Npc_HasItems(hero, ItWr_Addon_TreasureMap) >= 1)
	{
		return ItWr_Addon_TreasureMap;
	};
	
	return 0;
};

///******************************************************************************************
func int PLAYER_HOTKEY_SCREEN_MAP()
{
	var int OldInstance; OldInstance = PlayerMapInstance;
	
	if ((OldInstance > 0) && (Npc_HasItems(hero, OldInstance) < 1))
	{
		OldInstance = 0;
	};
	B_SetPlayerMap(OldInstance);
	
	var int NewInstance; NewInstance = OldInstance;
	
	if (CurrentLevel != NEWWORLD_ZEN)
	{
		if (OldInstance == ItWr_Map_Caves_MIS)
		|| (OldInstance == ItWr_Map_NewWorld)
		|| (OldInstance == ItWr_Map_NewWorld_City)
		|| (OldInstance == ItWr_Map_NewWorld_Dexter)
		|| (OldInstance == ItWr_Map_NewWorld_Ornaments_Addon)
		|| (OldInstance == ItWr_Map_Orcelite_MIS)
		|| (OldInstance == ItWr_Map_Shrine_MIS)
		|| (OldInstance == ItWr_Map_ShatteredGolem_MIS)
		{
			NewInstance = 0;
		};
	};
	if (CurrentLevel != OLDWORLD_ZEN)
	{
		if (OldInstance == ItWr_Map_OldWorld)
		|| (OldInstance == ItWr_Map_OldWorld_Oremines_MIS)
		{
			NewInstance = 0;
		};
	};
	if (CurrentLevel != ADDONWORLD_ZEN)
	{
		if (OldInstance == ItWr_Map_AddonWorld)
		|| (OldInstance == ItWr_Addon_TreasureMap)
		{
			NewInstance = 0;
		};
	};
	
	if (NewInstance <= 0)
	{
		NewInstance = B_GetBestPlayerMap();
	};
	if ((NewInstance <= 0) && (OldInstance <= 0))
	{
		NewInstance = B_GetAnyPlayerMap();
	};
	
	if (NewInstance > 0)
	{
		B_SetPlayerMap(NewInstance);
		return NewInstance;
	}
	else
	{
		return OldInstance;
	};
};

///******************************************************************************************
func void PLAYER_HOTKEY_LAME_POTION()
{
	if (!Npc_IsInState(hero, ZS_Dead))
	{
		if (Npc_HasItems(hero, ItPo_Mana_03))
		&& (hero.attribute[ATR_MANA] <= hero.attribute[ATR_MANA_MAX] / 10)
		{
			AI_UseItem (hero, ItPo_Mana_03);
		}
		else if (Npc_HasItems(hero, ItPo_Mana_02))
		&& (hero.attribute[ATR_MANA] <= hero.attribute[ATR_MANA_MAX] * 2 / 5)
		{
			AI_UseItem (hero, ItPo_Mana_02);
		}
		else if (Npc_HasItems(hero, ItPo_Mana_01))
		&& (hero.attribute[ATR_MANA] <= hero.attribute[ATR_MANA_MAX] * 7 / 10)
		{
			AI_UseItem (hero, ItPo_Mana_01);
		}
		else if (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX])
		{
			if		(Npc_HasItems(hero, ItPo_Mana_01))	{	AI_UseItem (hero, ItPo_Mana_01);	}
			else if (Npc_HasItems(hero, ItPo_Mana_02))	{	AI_UseItem (hero, ItPo_Mana_02);	}
			else if (Npc_HasItems(hero, ItPo_Mana_03))	{	AI_UseItem (hero, ItPo_Mana_03);	}
			else										{	Print("Brak mikstur many!");		};
		}
		else
		{
			Print("Maksymalny mo¿liwy poziom many!");
		};
	};
};

func void PLAYER_HOTKEY_LAME_HEAL()
{
	if (!Npc_IsInState(hero, ZS_Dead))
	{
		if (Npc_HasItems(hero, ItPo_Health_03))
		&& (hero.attribute[ATR_HITPOINTS] <= hero.attribute[ATR_HITPOINTS_MAX] / 10)
		{
			AI_UseItem (hero, ItPo_Health_03);
		}
		else if (Npc_HasItems(hero, ItPo_Health_02))
		&& (hero.attribute[ATR_HITPOINTS] <= hero.attribute[ATR_HITPOINTS_MAX] * 2 / 5)
		{
			AI_UseItem (hero, ItPo_Health_02);
		}
		else if (Npc_HasItems(hero, ItPo_Health_01))
		&& (hero.attribute[ATR_HITPOINTS] <= hero.attribute[ATR_HITPOINTS_MAX] * 7 / 10)
		{
			AI_UseItem (hero, ItPo_Health_01);
		}
		else if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX])
		{
			if		(Npc_HasItems(hero, ItPo_Health_01)){	AI_UseItem (hero, ItPo_Health_01);	}
			else if (Npc_HasItems(hero, ItPo_Health_02)){	AI_UseItem (hero, ItPo_Health_02);	}
			else if (Npc_HasItems(hero, ItPo_Health_03)){	AI_UseItem (hero, ItPo_Health_03);	}
			else										{	Print("Brak mikstur leczniczych!");	};
		}
		else
		{
			Print("Maksymalny mo¿liwy poziom ¿ycia!");
		};
	};
};
