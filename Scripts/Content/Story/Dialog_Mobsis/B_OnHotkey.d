///******************************************************************************************
/// B_OnHotkey
///******************************************************************************************
func int B_GetBestPlayerMap()
{
	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if		(Npc_HasItems(hero, ItWr_Map_NewWorld))					{	return ItWr_Map_NewWorld;				}
		else if	(Npc_HasItems(hero, ItWr_Map_Shrine_MIS))				{	return ItWr_Map_Shrine_MIS;				}
		else if	(Npc_HasItems(hero, ItWr_Map_Caves_MIS))				{	return ItWr_Map_Caves_MIS;				}
		else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments))		{	return ItWr_Map_NewWorld_Ornaments;		}
		else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter))			{	return ItWr_Map_NewWorld_Dexter;		}
		else if	(Npc_HasItems(hero, ItWr_Map_ShatteredGolem_MIS))		{	return ItWr_Map_ShatteredGolem_MIS;		}
		else if	(Npc_HasItems(hero, ItWr_Map_Orcelite_MIS))				{	return ItWr_Map_Orcelite_MIS;			}
		else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_City))			{	return ItWr_Map_NewWorld_City;			};
	}
	else if (CurrentLevel == OLDWORLD_ZEN)
	{
		if		(Npc_HasItems(hero, ItWr_Map_OldWorld))					{	return ItWr_Map_OldWorld;				}
		else if	(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS))	{	return ItWr_Map_OldWorld_Oremines_MIS;	};
	}
	else if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if		(Npc_HasItems(hero, ItWr_Map_AddonWorld))				{	return ItWr_Map_AddonWorld;				}
		else if	(Npc_HasItems(hero, ItWr_Addon_TreasureMap))			{	return ItWr_Addon_TreasureMap;			};
	};
	
	return default;
};

///******************************************************************************************
func int B_GetAnyPlayerMap()
{
	if		(Npc_HasItems(hero, ItWr_Map_NewWorld))						{	return ItWr_Map_NewWorld;				}
	else if	(Npc_HasItems(hero, ItWr_Map_Shrine_MIS))					{	return ItWr_Map_Shrine_MIS;				}
	else if	(Npc_HasItems(hero, ItWr_Map_Caves_MIS))					{	return ItWr_Map_Caves_MIS;				}
	else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments))			{	return ItWr_Map_NewWorld_Ornaments;		}
	else if (Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter))				{	return ItWr_Map_NewWorld_Dexter;		}
	else if (Npc_HasItems(hero, ItWr_Map_ShatteredGolem_MIS))			{	return ItWr_Map_ShatteredGolem_MIS;		}
	else if (Npc_HasItems(hero, ItWr_Map_Orcelite_MIS))					{	return ItWr_Map_Orcelite_MIS;			}
	else if	(Npc_HasItems(hero, ItWr_Map_NewWorld_City))				{	return ItWr_Map_NewWorld_City;			}
	else if	(Npc_HasItems(hero, ItWr_Map_OldWorld))						{	return ItWr_Map_OldWorld;				}
	else if	(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS))		{	return ItWr_Map_OldWorld_Oremines_MIS;	}
	else if	(Npc_HasItems(hero, ItWr_Map_AddonWorld))					{	return ItWr_Map_AddonWorld;				}
	else if (Npc_HasItems(hero, ItWr_Addon_TreasureMap))				{	return ItWr_Addon_TreasureMap;			};
	
	return default;
};

///******************************************************************************************
func int PLAYER_HOTKEY_SCREEN_MAP()
{
	/// check if player has his current map
	var int OldInstance; OldInstance = PlayerMapInstance;
	
	if (OldInstance > default && !Npc_HasItems(hero, OldInstance))
	{
		OldInstance = default;
	};
	B_SetPlayerMap(OldInstance);
	
	/// check current ZEN and if map matches it
	var int NewInstance; NewInstance = OldInstance;
	
	if (CurrentLevel != NEWWORLD_ZEN && (
		OldInstance == ItWr_Map_Caves_MIS
	 || OldInstance == ItWr_Map_NewWorld
	 || OldInstance == ItWr_Map_NewWorld_City
	 || OldInstance == ItWr_Map_NewWorld_Dexter
	 || OldInstance == ItWr_Map_NewWorld_Ornaments
	 || OldInstance == ItWr_Map_Orcelite_MIS
	 || OldInstance == ItWr_Map_Shrine_MIS
	 || OldInstance == ItWr_Map_ShatteredGolem_MIS)) 
	{
		NewInstance = default;
	}
	else if (CurrentLevel != OLDWORLD_ZEN && (
		OldInstance == ItWr_Map_OldWorld
	 || OldInstance == ItWr_Map_OldWorld_Oremines_MIS))
	{
		NewInstance = default;
	}
	else if (CurrentLevel != ADDONWORLD_ZEN && (
		OldInstance == ItWr_Map_AddonWorld
	 || OldInstance == ItWr_Addon_TreasureMap))
	{
		NewInstance = default;
	};
	
	/// try best map
	if (NewInstance <= default)
	{
		NewInstance = B_GetBestPlayerMap();
	};
	
	/// try any map
	if (NewInstance <= default && OldInstance <= default)
	{
		NewInstance = B_GetAnyPlayerMap();
	};
	
	/// set new map
	if (NewInstance > default)
	{
		B_SetPlayerMap(NewInstance);
		return NewInstance;
	};
	
	return OldInstance;
};

///******************************************************************************************
func void PLAYER_HOTKEY_LAME_POTION()
{
	if (!Npc_IsInState(hero, ZS_Dead))
	{
		if (Npc_HasItems(hero, ItPo_Mana_Addon_04))
		&& (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX] / 10)
		{
			AI_UseItem (hero, ItPo_Mana_Addon_04);
		}
		else if (Npc_HasItems(hero, ItPo_Mana_03))
		&& (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX] / 5)
		{
			AI_UseItem (hero, ItPo_Mana_03);
		}
		else if (Npc_HasItems(hero, ItPo_Mana_02))
		&& (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX] / 2)
		{
			AI_UseItem (hero, ItPo_Mana_02);
		}
		else if (Npc_HasItems(hero, ItPo_Mana_01))
		&& (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX])
		{
			AI_UseItem (hero, ItPo_Mana_01);
		}
		else if (hero.attribute[ATR_MANA] < hero.attribute[ATR_MANA_MAX])
		{
			if		(Npc_HasItems(hero, ItPo_Mana_01))			{	AI_UseItem (hero, ItPo_Mana_01);			}
			else if (Npc_HasItems(hero, ItPo_Mana_02))			{	AI_UseItem (hero, ItPo_Mana_02);			}
			else if (Npc_HasItems(hero, ItPo_Mana_03))			{	AI_UseItem (hero, ItPo_Mana_03);			}
			else if (Npc_HasItems(hero, ItPo_Mana_Addon_04))	{	AI_UseItem (hero, ItPo_Mana_Addon_04);		}
			else												{	Print("Brak mikstur many!");				};
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
		if (Npc_HasItems(hero, ItPo_Health_Addon_04))
		&& (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX] / 10)
		{
			AI_UseItem (hero, ItPo_Health_Addon_04);
		}
		else if (Npc_HasItems(hero, ItPo_Health_03))
		&& (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX] / 5)
		{
			AI_UseItem (hero, ItPo_Health_03);
		}
		else if (Npc_HasItems(hero, ItPo_Health_02))
		&& (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX] / 2)
		{
			AI_UseItem (hero, ItPo_Health_02);
		}
		else if (Npc_HasItems(hero, ItPo_Health_01))
		&& (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX])
		{
			AI_UseItem (hero, ItPo_Health_01);
		}
		else if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX])
		{
			if		(Npc_HasItems(hero, ItPo_Health_01))		{	AI_UseItem (hero, ItPo_Health_01);			}
			else if (Npc_HasItems(hero, ItPo_Health_02))		{	AI_UseItem (hero, ItPo_Health_02);			}
			else if (Npc_HasItems(hero, ItPo_Health_03))		{	AI_UseItem (hero, ItPo_Health_03);			}
			else if (Npc_HasItems(hero, ItPo_Health_Addon_04))	{	AI_UseItem (hero, ItPo_Health_Addon_04);	}
			else												{	Print("Brak mikstur leczniczych!");			};
		}
		else
		{
			Print("Maksymalny mo¿liwy poziom ¿ycia!");
		};
	};
};
