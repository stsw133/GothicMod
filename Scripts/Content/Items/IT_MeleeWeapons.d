///******************************************************************************************
prototype ItemPR_MeleeWeaponM (C_Item)
{
	mainflag					=	ITEM_KAT_NF;
	material					=	MAT_METAL;
};
prototype ItemPR_MeleeWeaponW (C_Item)
{
	mainflag					=	ITEM_KAT_NF;
	material					=	MAT_WOOD;
};

///******************************************************************************************

const int WEAPON_Unusable		=	-1;
const int WEAPON_Wornout		=	0;
const int WEAPON_Default		=	1;
const int WEAPON_Sharpened		=	2;
const int WEAPON_Forged			=	3;
const int WEAPON_Perfect		=	4;

var int UsingForgedWeapon;
func void Equip_ForgedWeapon()		{	UsingForgedWeapon = true;	};
func void UnEquip_ForgedWeapon()	{	UsingForgedWeapon = false;	};

func void Equip_UnusableWeapon()	{	if (Npc_IsPlayer(self)) { AI_UnequipWeapons(self); };	};

///******************************************************************************************
func void SetItMwAttributes (var C_Item itm, var int type, var int dmg, var int dmgType, var int cond, var int condAtr, var int rng, var int valuePercent, var int variant)
{
	/// properties 1
	itm.flags					=	type;
	
	itm.value					=	(dmg*20 - cond*10) * (rng+100)/150 / 50*50 * valuePercent/100;
	if (dmgType & DAM_FIRE)
	{
		dmg -= 20;
	};
	if (valuePercent > 0 && itm.value <= 0)
	{
		itm.value = 1;
	};
	
	/// variants
	if (variant == WEAPON_Wornout)
	{
		dmg /= 2;
		itm.value				=	itm.value / 10;
		itm.TEXT[0]				=	"Ta broñ jest zu¿yta.";
	}
	else if (variant == WEAPON_Sharpened)
	{
		dmg += 10;
		itm.TEXT[0]				=	"Ta broñ zosta³a dobrze naostrzona.";
	}
	else if (variant == WEAPON_Forged)
	{
		dmg += 5;
		itm.on_equip			=	Equip_ForgedWeapon;
		itm.on_unequip			=	UnEquip_ForgedWeapon;
		itm.TEXT[0]				=	"Ta broñ zosta³a stworzona przez ciebie.";
	}
	else if (variant == WEAPON_Perfect)
	{
		dmg += 15;
		itm.on_equip			=	Equip_ForgedWeapon;
		itm.on_unequip			=	UnEquip_ForgedWeapon;
		itm.TEXT[0]				=	"Ta broñ zosta³a stworzona przez ciebie i dobrze naostrzona.";
	}
	else if (variant == WEAPON_Unusable)
	{
		itm.on_equip			=	Equip_UnusableWeapon;
		itm.TEXT[0]				=	"Nie mo¿esz u¿yæ tej broni.";
	};
	
	/// properties 2
	itm.damageTotal				=	dmg;
	itm.damageType				=	dmgType;
	itm.range					=	rng;
	
	if (condAtr == ATR_STRENGTH)
	{
		itm.cond_atr[0]			=	ATR_STRENGTH;
		itm.cond_atr[1]			=	ATR_DEXTERITY;
	}
	else if (condAtr == ATR_DEXTERITY)
	{
		itm.cond_atr[0]			=	ATR_DEXTERITY;
		itm.cond_atr[1]			=	ATR_STRENGTH;
	}
	else if (condAtr == ATR_POWER)
	{
		itm.cond_atr[0]			=	ATR_POWER;
		itm.cond_atr[1]			=	ATR_STRENGTH;
	}
	else if (condAtr == ATR_MANA_MAX)
	{
		itm.cond_atr[0]			=	ATR_MANA_MAX;
		itm.cond_atr[1]			=	ATR_STRENGTH;
	};
	itm.cond_value[0]			=	cond;
	itm.cond_value[1]			=	cond/5;
	
	/// descriptions
	itm.description				=	itm.name;
	itm.COUNT[2]				=	itm.damageTotal;
	itm.COUNT[3]				=	itm.cond_value[0];
	itm.COUNT[4]				=	itm.range;
	if (valuePercent > 0)
	{
		itm.TEXT[5]				=	NAME_Value;
		itm.COUNT[5]			=	itm.value;
	};
	
	if		(dmgType == DAM_BLUNT)		{	itm.TEXT[2] = NAME_Dam_Blunt;		}
	else if	(dmgType == DAM_EDGE)		{	itm.TEXT[2] = NAME_Dam_Edge;		}
	else if	(dmgType == DAM_FIRE)		{	itm.TEXT[2] = NAME_Dam_Fire;		}
	else if	(dmgType == DAM_MAGIC)		{	itm.TEXT[2] = NAME_Dam_Magic;		}
	else								{	itm.TEXT[2] = NAME_Damage;			};
	
	if		(condAtr == ATR_STRENGTH)	{	itm.TEXT[3] = NAME_Str_needed;		}
	else if	(condAtr == ATR_DEXTERITY)	{	itm.TEXT[3] = NAME_Dex_needed;		}
	else if	(condAtr == ATR_POWER)		{	itm.TEXT[3] = NAME_Power_needed;	}
	else if	(condAtr == ATR_MANA_MAX)	{	itm.TEXT[3] = NAME_MpMax_needed;	};
	
	if		(type == ITEM_AXE)			{	itm.TEXT[4] = NAME_OneHanded;		}
	else if	(type == ITEM_SWD)			{	itm.TEXT[4] = NAME_OneHanded;		}
	else if	(type == ITEM_2HD_AXE)		{	itm.TEXT[4] = NAME_TwoHanded;		}
	else if	(type == ITEM_2HD_SWD)		{	itm.TEXT[4] = NAME_TwoHanded;		}
	else if	(type == ITEM_DAG)			{	itm.TEXT[4] = NAME_SecHanded;		};
};

///******************************************************************************************
/// Wood junk & rusty junk
///******************************************************************************************
instance ItMw_1h_Woodsword (ItemPR_MeleeWeaponW)	{	name = "Drewniany miecz";				visual = "ItMw_1h_Woodsword.3ds";				SetItMwAttributes (self, ITEM_SWD, 3,DAM_BLUNT, 5,ATR_STRENGTH, 60, 1, WEAPON_Default);				};
instance ItMw_2h_Woodsword (ItemPR_MeleeWeaponW)	{	name = "Drewniany miecz";				visual = "ItMw_2h_Woodsword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 6,DAM_BLUNT, 10,ATR_STRENGTH, 100, 1, WEAPON_Default);		};

instance ItMw_1h_Misc_Sword (ItemPR_MeleeWeaponM)	{	name = "Zardzewia³y krótki miecz";		visual = "ItMw_020_1h_Sword_old_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 30,ATR_STRENGTH, 70, 1, WEAPON_Default);				};
instance ItMw_1h_Machete_01 (ItemPR_MeleeWeaponM)	{	name = "Zardzewia³a maczeta";			visual = "ItMw_1h_Machete_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 15,DAM_EDGE, 35,ATR_STRENGTH, 70, 1, WEAPON_Default);				};
instance ItMw_2h_Scythe_01 (ItemPR_MeleeWeaponM)	{	name = "Zardzewia³a kosa";				visual = "ItMw_2h_Scythe_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 40,ATR_STRENGTH, 130, 1, WEAPON_Default);		};
instance ItMw_1h_Misc_Axe (ItemPR_MeleeWeaponM)		{	name = "Zardzewia³y topór";				visual = "ItMw_025_2h_Misc_Axe_old_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 45,ATR_STRENGTH, 80, 1, WEAPON_Default);			};
instance ItMw_2h_Sword_M_01 (ItemPR_MeleeWeaponM)	{	name = "Zardzewia³y miecz dwurêczny";	visual = "ItMw_025_2h_Sword_old_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 30,DAM_EDGE, 50,ATR_STRENGTH, 100, 1, WEAPON_Default);		};
instance ItMw_2h_Machete_01 (ItemPR_MeleeWeaponM)	{	name = "Wielka zardzewia³a maczeta";	visual = "ItMw_2h_Machete_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 35,DAM_EDGE, 55,ATR_STRENGTH, 95, 1, WEAPON_Default);			};

///******************************************************************************************
/// Goblin weapons & orc weapons
///******************************************************************************************
instance ItMw_1h_GobboMace_01 (ItemPR_MeleeWeaponW)	{	name = "Gobo Lagush";					visual = "ItMw_1h_GobboMace_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 6,DAM_BLUNT, 9,ATR_STRENGTH, 90, 5, WEAPON_Default);				};
instance ItMw_1h_GobboMace_02 (ItemPR_MeleeWeaponW)	{	name = "Gobo Parush";					visual = "ItMw_1h_GobboMace_02.3ds";			SetItMwAttributes (self, ITEM_AXE, 9,DAM_BLUNT, 12,ATR_STRENGTH, 90, 5, WEAPON_Default);				};
instance ItMw_1h_GobboMace_03 (ItemPR_MeleeWeaponW)	{	name = "Gobo Morush";					visual = "ItMw_1h_GobboMace_03.3ds";			SetItMwAttributes (self, ITEM_AXE, 12,DAM_BLUNT, 15,ATR_STRENGTH, 90, 5, WEAPON_Default);			};
instance ItMw_1h_GobboMace_04 (ItemPR_MeleeWeaponW)	{	name = "Gobo Nabush";					visual = "ItMw_1h_GobboMace_04.3ds";			SetItMwAttributes (self, ITEM_AXE, 15,DAM_BLUNT, 18,ATR_STRENGTH, 90, 5, WEAPON_Default);			};

instance ItMw_2h_OrcAxe_01 (ItemPR_MeleeWeaponM)	{	name = "Krush Pach";					visual = "ItMw_2h_OrcAxe_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 80,ATR_STRENGTH, 100, 5, WEAPON_Default);		};
instance ItMw_2h_OrcAxe_02 (ItemPR_MeleeWeaponM)	{	name = "Krush UrRok";					visual = "ItMw_2h_OrcAxe_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 85,ATR_STRENGTH, 110, 5, WEAPON_Default);		};
instance ItMw_2h_OrcAxe_03 (ItemPR_MeleeWeaponM)	{	name = "Krush Agash";					visual = "ItMw_2h_OrcAxe_03.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_EDGE, 90,ATR_STRENGTH, 110, 5, WEAPON_Default);		};
instance ItMw_2h_OrcAxe_04 (ItemPR_MeleeWeaponM)	{	name = "Krush BrokDar";					visual = "ItMw_2h_OrcAxe_04.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_EDGE, 100,ATR_STRENGTH, 130, 5, WEAPON_Default);		};
instance ItMw_2h_OrcHalberd_01 (ItemPR_MeleeWeaponM){	name = "Krush Gnar";					visual = "ItMw_2h_OrcHalberd_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 95,ATR_STRENGTH, 160, 5, WEAPON_Unusable);		};

instance ItMw_2h_OrcDagger_01 (ItemPR_MeleeWeaponM)	{	name = "Krush Drak";					visual = "ItMw_2h_OrcDagger_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 45,DAM_EDGE, 75,ATR_STRENGTH, 100, 5, WEAPON_Default);		};
instance ItMw_2h_OrcSword_01 (ItemPR_MeleeWeaponM)	{	name = "Krush Varrok";					visual = "ItMw_2h_OrcSword_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 65,DAM_EDGE, 95,ATR_STRENGTH, 100, 5, WEAPON_Default);		};
instance ItMw_2h_OrcSword_02 (ItemPR_MeleeWeaponM)	{	name = "Krush Tarrok";					visual = "ItMw_2h_OrcSword_02.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 70,DAM_EDGE, 100,ATR_STRENGTH, 100, 5, WEAPON_Default);		};
instance ItMw_2h_OrcElite_01 (ItemPR_MeleeWeaponM)	{	name = "Krush BrokRosh";				visual = "ItMw_2h_OrcElite_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 105,ATR_STRENGTH, 140, 5, WEAPON_Default);		};

instance ItMw_2h_OrcStaff_01 (ItemPR_MeleeWeaponW)	{	name = "Krush Nabush";					visual = "ItMw_2h_OrcStaff_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 80,ATR_STRENGTH, 130, 5, WEAPON_Default);		};
instance ItMw_2h_OrcMace_01 (ItemPR_MeleeWeaponM)	{	name = "Krush Karrok";					visual = "ItMw_2h_OrcMace_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_BLUNT, 85,ATR_STRENGTH, 110, 5, WEAPON_Default);		};
instance ItMw_2h_OrcMace_02 (ItemPR_MeleeWeaponM)	{	name = "Krush Zarrok";					visual = "ItMw_2h_OrcMace_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_BLUNT, 95,ATR_STRENGTH, 120, 5, WEAPON_Default);		};

///******************************************************************************************
/// Chapter 1
///******************************************************************************************
instance ItMw_1h_Bau_Mace (ItemPR_MeleeWeaponW)		{	name = "Laga";							visual = "ItMw_010_1h_Club_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 10,ATR_STRENGTH, 70, 5, WEAPON_Default);				};
instance ItMw0_1h_Bau_Mace (ItemPR_MeleeWeaponW)	{	name = "Laga";							visual = "ItMw_010_1h_Club_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 10,ATR_STRENGTH, 70, 0, WEAPON_Wornout);				};
instance ItMw2_1h_Bau_Mace (ItemPR_MeleeWeaponW)	{	name = "Laga";							visual = "ItMw_010_1h_Club_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 10,ATR_STRENGTH, 70, 5, WEAPON_Sharpened);			};
instance ItMw3_1h_Bau_Mace (ItemPR_MeleeWeaponW)	{	name = "Laga";							visual = "ItMw_010_1h_Club_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 10,ATR_STRENGTH, 70, 5, WEAPON_Forged);				};
instance ItMw4_1h_Bau_Mace (ItemPR_MeleeWeaponW)	{	name = "Laga";							visual = "ItMw_010_1h_Club_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 10,ATR_STRENGTH, 70, 5, WEAPON_Perfect);				};

instance ItMw_1h_Mace_L_01 (ItemPR_MeleeWeaponW)	{	name = "Pogrzebacz";					visual = "ItMw_005_1h_poker_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10, WEAPON_Default);				};
instance ItMw0_1h_Mace_L_01 (ItemPR_MeleeWeaponW)	{	name = "Pogrzebacz";					visual = "ItMw_005_1h_poker_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10, WEAPON_Wornout);				};
instance ItMw2_1h_Mace_L_01 (ItemPR_MeleeWeaponW)	{	name = "Pogrzebacz";					visual = "ItMw_005_1h_poker_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10, WEAPON_Sharpened);			};
instance ItMw3_1h_Mace_L_01 (ItemPR_MeleeWeaponW)	{	name = "Pogrzebacz";					visual = "ItMw_005_1h_poker_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10, WEAPON_Forged);				};
instance ItMw4_1h_Mace_L_01 (ItemPR_MeleeWeaponW)	{	name = "Pogrzebacz";					visual = "ItMw_005_1h_poker_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10, WEAPON_Perfect);				};

instance ItMw_1h_Bau_Axe (ItemPR_MeleeWeaponM)		{	name = "Sierp";							visual = "ItMw_007_1h_sickle_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 6,DAM_EDGE, 6,ATR_STRENGTH, 50, 10, WEAPON_Default);				};
instance ItMw0_1h_Bau_Axe (ItemPR_MeleeWeaponM)		{	name = "Sierp";							visual = "ItMw_007_1h_sickle_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 6,DAM_EDGE, 6,ATR_STRENGTH, 50, 10, WEAPON_Wornout);				};
instance ItMw2_1h_Bau_Axe (ItemPR_MeleeWeaponM)		{	name = "Sierp";							visual = "ItMw_007_1h_sickle_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 6,DAM_EDGE, 6,ATR_STRENGTH, 50, 10, WEAPON_Sharpened);			};
instance ItMw3_1h_Bau_Axe (ItemPR_MeleeWeaponM)		{	name = "Sierp";							visual = "ItMw_007_1h_sickle_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 6,DAM_EDGE, 6,ATR_STRENGTH, 50, 10, WEAPON_Forged);				};
instance ItMw4_1h_Bau_Axe (ItemPR_MeleeWeaponM)		{	name = "Sierp";							visual = "ItMw_007_1h_sickle_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 6,DAM_EDGE, 6,ATR_STRENGTH, 50, 10, WEAPON_Perfect);				};

instance ItMw_1h_Vlk_Mace (ItemPR_MeleeWeaponW)		{	name = "Laska";							visual = "ItMw_008_1h_pole_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 7,DAM_BLUNT, 7,ATR_STRENGTH, 70, 10, WEAPON_Default);				};
instance ItMw0_1h_Vlk_Mace (ItemPR_MeleeWeaponW)	{	name = "Laska";							visual = "ItMw_008_1h_pole_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 7,DAM_BLUNT, 7,ATR_STRENGTH, 70, 10, WEAPON_Wornout);				};
instance ItMw2_1h_Vlk_Mace (ItemPR_MeleeWeaponW)	{	name = "Laska";							visual = "ItMw_008_1h_pole_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 7,DAM_BLUNT, 7,ATR_STRENGTH, 70, 10, WEAPON_Sharpened);			};
instance ItMw3_1h_Vlk_Mace (ItemPR_MeleeWeaponW)	{	name = "Laska";							visual = "ItMw_008_1h_pole_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 7,DAM_BLUNT, 7,ATR_STRENGTH, 70, 10, WEAPON_Forged);				};
instance ItMw4_1h_Vlk_Mace (ItemPR_MeleeWeaponW)	{	name = "Laska";							visual = "ItMw_008_1h_pole_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 7,DAM_BLUNT, 7,ATR_STRENGTH, 70, 10, WEAPON_Perfect);				};

instance ItMw_1h_Mace_L_03 (ItemPR_MeleeWeaponW)	{	name = "Pa³ka";							visual = "ItMw_008_1h_mace_light_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 8,DAM_BLUNT, 10,ATR_STRENGTH, 70, 10, WEAPON_Default);			};
instance ItMw0_1h_Mace_L_03 (ItemPR_MeleeWeaponW)	{	name = "Pa³ka";							visual = "ItMw_008_1h_mace_light_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 8,DAM_BLUNT, 10,ATR_STRENGTH, 70, 10, WEAPON_Wornout);			};
instance ItMw2_1h_Mace_L_03 (ItemPR_MeleeWeaponW)	{	name = "Pa³ka";							visual = "ItMw_008_1h_mace_light_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 8,DAM_BLUNT, 10,ATR_STRENGTH, 70, 10, WEAPON_Sharpened);			};
instance ItMw3_1h_Mace_L_03 (ItemPR_MeleeWeaponW)	{	name = "Pa³ka";							visual = "ItMw_008_1h_mace_light_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 8,DAM_BLUNT, 10,ATR_STRENGTH, 70, 10, WEAPON_Forged);				};
instance ItMw4_1h_Mace_L_03 (ItemPR_MeleeWeaponW)	{	name = "Pa³ka";							visual = "ItMw_008_1h_mace_light_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 8,DAM_BLUNT, 10,ATR_STRENGTH, 70, 10, WEAPON_Perfect);			};

instance ItMw_1h_Vlk_Dagger (ItemPR_MeleeWeaponM)	{	name = "Sztylet";						visual = "ItMw_005_1h_dagger_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 10,ATR_DEXTERITY, 50, 100, WEAPON_Default);			};
instance ItMw0_1h_Vlk_Dagger (ItemPR_MeleeWeaponM)	{	name = "Sztylet";						visual = "ItMw_005_1h_dagger_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 10,ATR_DEXTERITY, 50, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Vlk_Dagger (ItemPR_MeleeWeaponM)	{	name = "Sztylet";						visual = "ItMw_005_1h_dagger_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 10,ATR_DEXTERITY, 50, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Vlk_Dagger (ItemPR_MeleeWeaponM)	{	name = "Sztylet";						visual = "ItMw_005_1h_dagger_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 10,ATR_DEXTERITY, 50, 100, WEAPON_Forged);			};
instance ItMw4_1h_Vlk_Dagger (ItemPR_MeleeWeaponM)	{	name = "Sztylet";						visual = "ItMw_005_1h_dagger_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 10,ATR_DEXTERITY, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_Dagger_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki sztylet";		visual = "ItMw_1h_Dagger_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_DEXTERITY, 40, 100, WEAPON_Default);			};
instance ItMw0_1h_Dagger_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki sztylet";		visual = "ItMw_1h_Dagger_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_DEXTERITY, 40, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Dagger_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki sztylet";		visual = "ItMw_1h_Dagger_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_DEXTERITY, 40, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Dagger_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki sztylet";		visual = "ItMw_1h_Dagger_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_DEXTERITY, 40, 100, WEAPON_Forged);			};
instance ItMw4_1h_Dagger_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki sztylet";		visual = "ItMw_1h_Dagger_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_DEXTERITY, 40, 100, WEAPON_Perfect);			};

instance ItMw_Sense (ItemPR_MeleeWeaponM)			{	name = "Ma³a kosa";						visual = "ItMw_012_1h_Scythe_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_STRENGTH, 60, 10, WEAPON_Default);			};
instance ItMw0_Sense (ItemPR_MeleeWeaponM)			{	name = "Ma³a kosa";						visual = "ItMw_012_1h_Scythe_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_STRENGTH, 60, 10, WEAPON_Wornout);			};
instance ItMw2_Sense (ItemPR_MeleeWeaponM)			{	name = "Ma³a kosa";						visual = "ItMw_012_1h_Scythe_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_STRENGTH, 60, 10, WEAPON_Sharpened);			};
instance ItMw3_Sense (ItemPR_MeleeWeaponM)			{	name = "Ma³a kosa";						visual = "ItMw_012_1h_Scythe_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_STRENGTH, 60, 10, WEAPON_Forged);				};
instance ItMw4_Sense (ItemPR_MeleeWeaponM)			{	name = "Ma³a kosa";						visual = "ItMw_012_1h_Scythe_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 12,DAM_EDGE, 12,ATR_STRENGTH, 60, 10, WEAPON_Perfect);			};

instance ItMw_MudClub (ItemPR_MeleeWeaponW)			{	name = "Stara pa³ka Wrzoda";			visual = "ItMw_1h_MudClub.3ds";					SetItMwAttributes (self, ITEM_AXE, 13,DAM_BLUNT, 15,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_MudClub (ItemPR_MeleeWeaponW)		{	name = "Stara pa³ka Wrzoda";			visual = "ItMw_1h_MudClub.3ds";					SetItMwAttributes (self, ITEM_AXE, 13,DAM_BLUNT, 15,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_MudClub (ItemPR_MeleeWeaponW)		{	name = "Stara pa³ka Wrzoda";			visual = "ItMw_1h_MudClub.3ds";					SetItMwAttributes (self, ITEM_AXE, 13,DAM_BLUNT, 15,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_MudClub (ItemPR_MeleeWeaponW)		{	name = "Stara pa³ka Wrzoda";			visual = "ItMw_1h_MudClub.3ds";					SetItMwAttributes (self, ITEM_AXE, 13,DAM_BLUNT, 15,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_MudClub (ItemPR_MeleeWeaponW)		{	name = "Stara pa³ka Wrzoda";			visual = "ItMw_1h_MudClub.3ds";					SetItMwAttributes (self, ITEM_AXE, 13,DAM_BLUNT, 15,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Zwirbelschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz wiruj¹cy";				visual = "ItMw_2h_Zwirbelschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 15,DAM_EDGE, 15,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_Zwirbelschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz wiruj¹cy";				visual = "ItMw_2h_Zwirbelschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 15,DAM_EDGE, 15,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_Zwirbelschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz wiruj¹cy";				visual = "ItMw_2h_Zwirbelschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 15,DAM_EDGE, 15,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Zwirbelschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz wiruj¹cy";				visual = "ItMw_2h_Zwirbelschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 15,DAM_EDGE, 15,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_Zwirbelschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz wiruj¹cy";				visual = "ItMw_2h_Zwirbelschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 15,DAM_EDGE, 15,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

instance ItMw_Nagelknueppel (ItemPR_MeleeWeaponW)	{	name = "Maczuga z kolcami";				visual = "ItMw_012_1h_Nailmace_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 20,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Nagelknueppel (ItemPR_MeleeWeaponW)	{	name = "Maczuga z kolcami";				visual = "ItMw_012_1h_Nailmace_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 20,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Nagelknueppel (ItemPR_MeleeWeaponW)	{	name = "Maczuga z kolcami";				visual = "ItMw_012_1h_Nailmace_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 20,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Nagelknueppel (ItemPR_MeleeWeaponW)	{	name = "Maczuga z kolcami";				visual = "ItMw_012_1h_Nailmace_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 20,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Nagelknueppel (ItemPR_MeleeWeaponW)	{	name = "Maczuga z kolcami";				visual = "ItMw_012_1h_Nailmace_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 20,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_ShortSword1 (ItemPR_MeleeWeaponM)		{	name = "Kiepski krótki miecz";			visual = "ItMw_010_1h_Sword_short_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 16,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_ShortSword1 (ItemPR_MeleeWeaponM)	{	name = "Kiepski krótki miecz";			visual = "ItMw_010_1h_Sword_short_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 16,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_ShortSword1 (ItemPR_MeleeWeaponM)	{	name = "Kiepski krótki miecz";			visual = "ItMw_010_1h_Sword_short_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 16,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_ShortSword1 (ItemPR_MeleeWeaponM)	{	name = "Kiepski krótki miecz";			visual = "ItMw_010_1h_Sword_short_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 16,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_ShortSword1 (ItemPR_MeleeWeaponM)	{	name = "Kiepski krótki miecz";			visual = "ItMw_010_1h_Sword_short_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 16,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_Mace_L_04 (ItemPR_MeleeWeaponM)	{	name = "M³ot kowalski";					visual = "ItMw_010_1h_sledgehammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 30, 10, WEAPON_Default);			};
instance ItMw0_1h_Mace_L_04 (ItemPR_MeleeWeaponM)	{	name = "M³ot kowalski";					visual = "ItMw_010_1h_sledgehammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 30, 10, WEAPON_Wornout);			};
instance ItMw2_1h_Mace_L_04 (ItemPR_MeleeWeaponM)	{	name = "M³ot kowalski";					visual = "ItMw_010_1h_sledgehammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 30, 10, WEAPON_Sharpened);			};
instance ItMw3_1h_Mace_L_04 (ItemPR_MeleeWeaponM)	{	name = "M³ot kowalski";					visual = "ItMw_010_1h_sledgehammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 30, 10, WEAPON_Forged);			};
instance ItMw4_1h_Mace_L_04 (ItemPR_MeleeWeaponM)	{	name = "M³ot kowalski";					visual = "ItMw_010_1h_sledgehammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 30, 10, WEAPON_Perfect);			};

instance ItMw_2h_Axe_L_01 (ItemPR_MeleeWeaponM)		{	name = "Kilof";							visual = "ItMw_020_2h_Pickaxe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 60, 10, WEAPON_Default);		};
instance ItMw0_2h_Axe_L_01 (ItemPR_MeleeWeaponM)	{	name = "Kilof";							visual = "ItMw_020_2h_Pickaxe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 60, 10, WEAPON_Wornout);		};
instance ItMw2_2h_Axe_L_01 (ItemPR_MeleeWeaponM)	{	name = "Kilof";							visual = "ItMw_020_2h_Pickaxe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 60, 10, WEAPON_Sharpened);		};
instance ItMw3_2h_Axe_L_01 (ItemPR_MeleeWeaponM)	{	name = "Kilof";							visual = "ItMw_020_2h_Pickaxe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 60, 10, WEAPON_Forged);			};
instance ItMw4_2h_Axe_L_01 (ItemPR_MeleeWeaponM)	{	name = "Kilof";							visual = "ItMw_020_2h_Pickaxe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 60, 10, WEAPON_Perfect);		};

instance ItMw_2h_Bau_Axe (ItemPR_MeleeWeaponW)		{	name = "Topór drwala";					visual = "ItMw_020_2h_Axe_Lumberjack_01.3ds";	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 70, 10, WEAPON_Default);		};
instance ItMw0_2h_Bau_Axe (ItemPR_MeleeWeaponW)		{	name = "Topór drwala";					visual = "ItMw_020_2h_Axe_Lumberjack_01.3ds";	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 70, 10, WEAPON_Wornout);		};
instance ItMw2_2h_Bau_Axe (ItemPR_MeleeWeaponW)		{	name = "Topór drwala";					visual = "ItMw_020_2h_Axe_Lumberjack_01.3ds";	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 70, 10, WEAPON_Sharpened);		};
instance ItMw3_2h_Bau_Axe (ItemPR_MeleeWeaponW)		{	name = "Topór drwala";					visual = "ItMw_020_2h_Axe_Lumberjack_01.3ds";	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 70, 10, WEAPON_Forged);			};
instance ItMw4_2h_Bau_Axe (ItemPR_MeleeWeaponW)		{	name = "Topór drwala";					visual = "ItMw_020_2h_Axe_Lumberjack_01.3ds";	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_EDGE, 15,ATR_STRENGTH, 70, 10, WEAPON_Perfect);		};

instance ItMw_1h_Sword_L_03 (ItemPR_MeleeWeaponM)	{	name = "Nó¿ na wilki";					visual = "ItMw_012_1h_Knife_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 10,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_1h_Sword_L_03 (ItemPR_MeleeWeaponM)	{	name = "Nó¿ na wilki";					visual = "ItMw_012_1h_Knife_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 10,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Sword_L_03 (ItemPR_MeleeWeaponM)	{	name = "Nó¿ na wilki";					visual = "ItMw_012_1h_Knife_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 10,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Sword_L_03 (ItemPR_MeleeWeaponM)	{	name = "Nó¿ na wilki";					visual = "ItMw_012_1h_Knife_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 10,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_1h_Sword_L_03 (ItemPR_MeleeWeaponM)	{	name = "Nó¿ na wilki";					visual = "ItMw_012_1h_Knife_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 10,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_Vlk_Axe (ItemPR_MeleeWeaponM)		{	name = "Lekki topór";					visual = "ItMw_010_1h_vlk_hatchet_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 24,DAM_EDGE, 18,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_1h_Vlk_Axe (ItemPR_MeleeWeaponM)		{	name = "Lekki topór";					visual = "ItMw_010_1h_vlk_hatchet_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 24,DAM_EDGE, 18,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Vlk_Axe (ItemPR_MeleeWeaponM)		{	name = "Lekki topór";					visual = "ItMw_010_1h_vlk_hatchet_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 24,DAM_EDGE, 18,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Vlk_Axe (ItemPR_MeleeWeaponM)		{	name = "Lekki topór";					visual = "ItMw_010_1h_vlk_hatchet_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 24,DAM_EDGE, 18,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_1h_Vlk_Axe (ItemPR_MeleeWeaponM)		{	name = "Lekki topór";					visual = "ItMw_010_1h_vlk_hatchet_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 24,DAM_EDGE, 18,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_Vlk_Sword (ItemPR_MeleeWeaponM)	{	name = "Miejski miecz";					visual = "ItMw_018_1h_SwordCane_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 24,DAM_EDGE, 18,ATR_DEXTERITY, 70, 100, WEAPON_Default);			};
instance ItMw0_1h_Vlk_Sword (ItemPR_MeleeWeaponM)	{	name = "Miejski miecz";					visual = "ItMw_018_1h_SwordCane_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 24,DAM_EDGE, 18,ATR_DEXTERITY, 70, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Vlk_Sword (ItemPR_MeleeWeaponM)	{	name = "Miejski miecz";					visual = "ItMw_018_1h_SwordCane_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 24,DAM_EDGE, 18,ATR_DEXTERITY, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Vlk_Sword (ItemPR_MeleeWeaponM)	{	name = "Miejski miecz";					visual = "ItMw_018_1h_SwordCane_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 24,DAM_EDGE, 18,ATR_DEXTERITY, 70, 100, WEAPON_Forged);			};
instance ItMw4_1h_Vlk_Sword (ItemPR_MeleeWeaponM)	{	name = "Miejski miecz";					visual = "ItMw_018_1h_SwordCane_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 24,DAM_EDGE, 18,ATR_DEXTERITY, 70, 100, WEAPON_Perfect);			};

instance ItMw_LongSpear1 (ItemPR_MeleeWeaponM)		{	name = "W³ócznia";						visual = "ItMw_2h_Spear_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 25,ATR_DEXTERITY, 105, 100, WEAPON_Default);		};
instance ItMw0_LongSpear1 (ItemPR_MeleeWeaponM)		{	name = "W³ócznia";						visual = "ItMw_2h_Spear_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 25,ATR_DEXTERITY, 105, 100, WEAPON_Wornout);		};
instance ItMw2_LongSpear1 (ItemPR_MeleeWeaponM)		{	name = "W³ócznia";						visual = "ItMw_2h_Spear_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 25,ATR_DEXTERITY, 105, 100, WEAPON_Sharpened);	};
instance ItMw3_LongSpear1 (ItemPR_MeleeWeaponM)		{	name = "W³ócznia";						visual = "ItMw_2h_Spear_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 25,ATR_DEXTERITY, 105, 100, WEAPON_Forged);		};
instance ItMw4_LongSpear1 (ItemPR_MeleeWeaponM)		{	name = "W³ócznia";						visual = "ItMw_2h_Spear_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 25,ATR_DEXTERITY, 105, 100, WEAPON_Perfect);		};

instance ItMw_ShortSword2 (ItemPR_MeleeWeaponM)		{	name = "Prosty krótki miecz";			visual = "ItMw_012_1h_Sword_short_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_ShortSword2 (ItemPR_MeleeWeaponM)	{	name = "Prosty krótki miecz";			visual = "ItMw_012_1h_Sword_short_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_ShortSword2 (ItemPR_MeleeWeaponM)	{	name = "Prosty krótki miecz";			visual = "ItMw_012_1h_Sword_short_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_ShortSword2 (ItemPR_MeleeWeaponM)	{	name = "Prosty krótki miecz";			visual = "ItMw_012_1h_Sword_short_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_ShortSword2 (ItemPR_MeleeWeaponM)	{	name = "Prosty krótki miecz";			visual = "ItMw_012_1h_Sword_short_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_BanditTrader (ItemPR_MeleeWeaponM)	{	name = "Pa³asz bandytów";				visual = "ItMw_1h_BanditWeapon.3ds";			SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_DEXTERITY, 90, 100, WEAPON_Default);			};
instance ItMw0_BanditTrader (ItemPR_MeleeWeaponM)	{	name = "Pa³asz bandytów";				visual = "ItMw_1h_BanditWeapon.3ds";			SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_DEXTERITY, 90, 100, WEAPON_Wornout);			};
instance ItMw2_BanditTrader (ItemPR_MeleeWeaponM)	{	name = "Pa³asz bandytów";				visual = "ItMw_1h_BanditWeapon.3ds";			SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_DEXTERITY, 90, 100, WEAPON_Sharpened);		};
instance ItMw3_BanditTrader (ItemPR_MeleeWeaponM)	{	name = "Pa³asz bandytów";				visual = "ItMw_1h_BanditWeapon.3ds";			SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_DEXTERITY, 90, 100, WEAPON_Forged);			};
instance ItMw4_BanditTrader (ItemPR_MeleeWeaponM)	{	name = "Pa³asz bandytów";				visual = "ItMw_1h_BanditWeapon.3ds";			SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 20,ATR_DEXTERITY, 90, 100, WEAPON_Perfect);			};

instance ItMw_1h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski tasak";					visual = "ItMw_025_1h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_1h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski tasak";					visual = "ItMw_025_1h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski tasak";					visual = "ItMw_025_1h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski tasak";					visual = "ItMw_025_1h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_1h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski tasak";					visual = "ItMw_025_1h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_1h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz";					visual = "ItMw_025_1h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_1h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz";					visual = "ItMw_025_1h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz";					visual = "ItMw_025_1h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz";					visual = "ItMw_025_1h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_1h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz";					visual = "ItMw_025_1h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_1h_Nov_Mace (ItemPR_MeleeWeaponW)		{	name = "Pika bojowa";					visual = "ItMw_020_2h_Nov_Staff_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 30,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_1h_Nov_Mace (ItemPR_MeleeWeaponW)	{	name = "Pika bojowa";					visual = "ItMw_020_2h_Nov_Staff_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 30,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_1h_Nov_Mace (ItemPR_MeleeWeaponW)	{	name = "Pika bojowa";					visual = "ItMw_020_2h_Nov_Staff_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 30,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_1h_Nov_Mace (ItemPR_MeleeWeaponW)	{	name = "Pika bojowa";					visual = "ItMw_020_2h_Nov_Staff_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 30,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_1h_Nov_Mace (ItemPR_MeleeWeaponW)	{	name = "Pika bojowa";					visual = "ItMw_020_2h_Nov_Staff_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 30,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_ShortSword3 (ItemPR_MeleeWeaponM)		{	name = "Krótki miecz";					visual = "ItMw_016_1h_Sword_short_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 24,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_ShortSword3 (ItemPR_MeleeWeaponM)	{	name = "Krótki miecz";					visual = "ItMw_016_1h_Sword_short_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 24,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_ShortSword3 (ItemPR_MeleeWeaponM)	{	name = "Krótki miecz";					visual = "ItMw_016_1h_Sword_short_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 24,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_ShortSword3 (ItemPR_MeleeWeaponM)	{	name = "Krótki miecz";					visual = "ItMw_016_1h_Sword_short_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 24,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_ShortSword3 (ItemPR_MeleeWeaponM)	{	name = "Krótki miecz";					visual = "ItMw_016_1h_Sword_short_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 24,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_LongSpear2 (ItemPR_MeleeWeaponM)		{	name = "D³u¿sza w³ócznia";				visual = "ItMw_2h_Spear_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 35,ATR_DEXTERITY, 115, 100, WEAPON_Default);		};
instance ItMw0_LongSpear2 (ItemPR_MeleeWeaponM)		{	name = "D³u¿sza w³ócznia";				visual = "ItMw_2h_Spear_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 35,ATR_DEXTERITY, 115, 100, WEAPON_Wornout);		};
instance ItMw2_LongSpear2 (ItemPR_MeleeWeaponM)		{	name = "D³u¿sza w³ócznia";				visual = "ItMw_2h_Spear_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 35,ATR_DEXTERITY, 115, 100, WEAPON_Sharpened);	};
instance ItMw3_LongSpear2 (ItemPR_MeleeWeaponM)		{	name = "D³u¿sza w³ócznia";				visual = "ItMw_2h_Spear_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 35,ATR_DEXTERITY, 115, 100, WEAPON_Forged);		};
instance ItMw4_LongSpear2 (ItemPR_MeleeWeaponM)		{	name = "D³u¿sza w³ócznia";				visual = "ItMw_2h_Spear_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 35,ATR_DEXTERITY, 115, 100, WEAPON_Perfect);		};

instance ItMw_Dyaebl (ItemPR_MeleeWeaponM)			{	name = "Dyaebl";						visual = "ItMw_1h_Dyaebl.3ds";					SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 30,ATR_DEXTERITY, 50, 100, WEAPON_Default);			};
instance ItMw0_Dyaebl (ItemPR_MeleeWeaponM)			{	name = "Dyaebl";						visual = "ItMw_1h_Dyaebl.3ds";					SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 30,ATR_DEXTERITY, 50, 100, WEAPON_Wornout);			};
instance ItMw2_Dyaebl (ItemPR_MeleeWeaponM)			{	name = "Dyaebl";						visual = "ItMw_1h_Dyaebl.3ds";					SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 30,ATR_DEXTERITY, 50, 100, WEAPON_Sharpened);		};
instance ItMw3_Dyaebl (ItemPR_MeleeWeaponM)			{	name = "Dyaebl";						visual = "ItMw_1h_Dyaebl.3ds";					SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 30,ATR_DEXTERITY, 50, 100, WEAPON_Forged);			};
instance ItMw4_Dyaebl (ItemPR_MeleeWeaponM)			{	name = "Dyaebl";						visual = "ItMw_1h_Dyaebl.3ds";					SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 30,ATR_DEXTERITY, 50, 100, WEAPON_Perfect);			};

instance ItMw_ShortSword4 (ItemPR_MeleeWeaponM)		{	name = "Wilczy kie³";					visual = "ItMw_020_1h_Sword_short_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 28,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_ShortSword4 (ItemPR_MeleeWeaponM)	{	name = "Wilczy kie³";					visual = "ItMw_020_1h_Sword_short_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 28,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_ShortSword4 (ItemPR_MeleeWeaponM)	{	name = "Wilczy kie³";					visual = "ItMw_020_1h_Sword_short_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 28,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_ShortSword4 (ItemPR_MeleeWeaponM)	{	name = "Wilczy kie³";					visual = "ItMw_020_1h_Sword_short_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 28,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_ShortSword4 (ItemPR_MeleeWeaponM)	{	name = "Wilczy kie³";					visual = "ItMw_020_1h_Sword_short_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 28,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_Nagelkeule (ItemPR_MeleeWeaponW)		{	name = "Pa³ka z kolcami";				visual = "ItMw_018_1h_Mace_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 40,DAM_BLUNT, 40,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Nagelkeule (ItemPR_MeleeWeaponW)		{	name = "Pa³ka z kolcami";				visual = "ItMw_018_1h_Mace_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 40,DAM_BLUNT, 40,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Nagelkeule (ItemPR_MeleeWeaponW)		{	name = "Pa³ka z kolcami";				visual = "ItMw_018_1h_Mace_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 40,DAM_BLUNT, 40,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_Nagelkeule (ItemPR_MeleeWeaponW)		{	name = "Pa³ka z kolcami";				visual = "ItMw_018_1h_Mace_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 40,DAM_BLUNT, 40,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Nagelkeule (ItemPR_MeleeWeaponW)		{	name = "Pa³ka z kolcami";				visual = "ItMw_018_1h_Mace_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 40,DAM_BLUNT, 40,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_1h_Mil_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki miecz";			visual = "ItMw_025_1h_Mil_Sword_broad_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 40,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Mil_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki miecz";			visual = "ItMw_025_1h_Mil_Sword_broad_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 40,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Mil_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki miecz";			visual = "ItMw_025_1h_Mil_Sword_broad_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 40,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Mil_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki miecz";			visual = "ItMw_025_1h_Mil_Sword_broad_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 40,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Mil_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski szeroki miecz";			visual = "ItMw_025_1h_Mil_Sword_broad_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 40,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_2h_Scythe_02 (ItemPR_MeleeWeaponM)	{	name = "Kosa";							visual = "ItMw_2h_Scythe_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_EDGE, 40,ATR_STRENGTH, 130, 10, WEAPON_Default);		};
instance ItMw0_2h_Scythe_02 (ItemPR_MeleeWeaponM)	{	name = "Kosa";							visual = "ItMw_2h_Scythe_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_EDGE, 40,ATR_STRENGTH, 130, 10, WEAPON_Wornout);		};
instance ItMw2_2h_Scythe_02 (ItemPR_MeleeWeaponM)	{	name = "Kosa";							visual = "ItMw_2h_Scythe_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_EDGE, 40,ATR_STRENGTH, 130, 10, WEAPON_Sharpened);		};
instance ItMw3_2h_Scythe_02 (ItemPR_MeleeWeaponM)	{	name = "Kosa";							visual = "ItMw_2h_Scythe_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_EDGE, 40,ATR_STRENGTH, 130, 10, WEAPON_Forged);		};
instance ItMw4_2h_Scythe_02 (ItemPR_MeleeWeaponM)	{	name = "Kosa";							visual = "ItMw_2h_Scythe_02.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_EDGE, 40,ATR_STRENGTH, 130, 10, WEAPON_Perfect);		};

instance ItMw_1h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz";							visual = "ItMw_030_1h_Common_Sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz";							visual = "ItMw_030_1h_Common_Sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz";							visual = "ItMw_030_1h_Common_Sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz";							visual = "ItMw_030_1h_Common_Sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz";							visual = "ItMw_030_1h_Common_Sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Kriegssichel (ItemPR_MeleeWeaponM)	{	name = "Sierp bojowy";					visual = "ItMw_1h_Warsickle_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_DEXTERITY, 90, 100, WEAPON_Default);			};
instance ItMw0_Kriegssichel (ItemPR_MeleeWeaponM)	{	name = "Sierp bojowy";					visual = "ItMw_1h_Warsickle_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_DEXTERITY, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Kriegssichel (ItemPR_MeleeWeaponM)	{	name = "Sierp bojowy";					visual = "ItMw_1h_Warsickle_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_DEXTERITY, 90, 100, WEAPON_Sharpened);		};
instance ItMw3_Kriegssichel (ItemPR_MeleeWeaponM)	{	name = "Sierp bojowy";					visual = "ItMw_1h_Warsickle_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_DEXTERITY, 90, 100, WEAPON_Forged);			};
instance ItMw4_Kriegssichel (ItemPR_MeleeWeaponM)	{	name = "Sierp bojowy";					visual = "ItMw_1h_Warsickle_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 35,ATR_DEXTERITY, 90, 100, WEAPON_Perfect);			};

instance ItMw_ShortSword5 (ItemPR_MeleeWeaponM)		{	name = "Dobry krótki miecz";			visual = "ItMw_025_1h_Sword_short_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 32,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_ShortSword5 (ItemPR_MeleeWeaponM)	{	name = "Dobry krótki miecz";			visual = "ItMw_025_1h_Sword_short_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 32,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_ShortSword5 (ItemPR_MeleeWeaponM)	{	name = "Dobry krótki miecz";			visual = "ItMw_025_1h_Sword_short_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 32,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);			};
instance ItMw3_ShortSword5 (ItemPR_MeleeWeaponM)	{	name = "Dobry krótki miecz";			visual = "ItMw_025_1h_Sword_short_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 32,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_ShortSword5 (ItemPR_MeleeWeaponM)	{	name = "Dobry krótki miecz";			visual = "ItMw_025_1h_Sword_short_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 32,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Wiatru";					visual = "ItMw_Club_1h_01.3ds";					SetItMwAttributes (self, ITEM_AXE, 45,DAM_BLUNT, 50,ATR_STRENGTH, 80, 100, WEAPON_Default);			};
instance ItMw0_1h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Wiatru";					visual = "ItMw_Club_1h_01.3ds";					SetItMwAttributes (self, ITEM_AXE, 45,DAM_BLUNT, 50,ATR_STRENGTH, 80, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Wiatru";					visual = "ItMw_Club_1h_01.3ds";					SetItMwAttributes (self, ITEM_AXE, 45,DAM_BLUNT, 50,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Wiatru";					visual = "ItMw_Club_1h_01.3ds";					SetItMwAttributes (self, ITEM_AXE, 45,DAM_BLUNT, 50,ATR_STRENGTH, 80, 100, WEAPON_Forged);			};
instance ItMw4_1h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Wiatru";					visual = "ItMw_Club_1h_01.3ds";					SetItMwAttributes (self, ITEM_AXE, 45,DAM_BLUNT, 50,ATR_STRENGTH, 80, 100, WEAPON_Perfect);			};

instance ItMw_Richtstab (ItemPR_MeleeWeaponW)		{	name = "Kostur sêdziego";				visual = "ItMw_025_2h_Staff_02.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 45,DAM_EDGE, 40,ATR_STRENGTH, 110, 100, WEAPON_Default);		};
instance ItMw0_Richtstab (ItemPR_MeleeWeaponW)		{	name = "Kostur sêdziego";				visual = "ItMw_025_2h_Staff_02.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 45,DAM_EDGE, 40,ATR_STRENGTH, 110, 100, WEAPON_Wornout);		};
instance ItMw2_Richtstab (ItemPR_MeleeWeaponW)		{	name = "Kostur sêdziego";				visual = "ItMw_025_2h_Staff_02.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 45,DAM_EDGE, 40,ATR_STRENGTH, 110, 100, WEAPON_Sharpened);		};
instance ItMw3_Richtstab (ItemPR_MeleeWeaponW)		{	name = "Kostur sêdziego";				visual = "ItMw_025_2h_Staff_02.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 45,DAM_EDGE, 40,ATR_STRENGTH, 110, 100, WEAPON_Forged);		};
instance ItMw4_Richtstab (ItemPR_MeleeWeaponW)		{	name = "Kostur sêdziego";				visual = "ItMw_025_2h_Staff_02.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 45,DAM_EDGE, 40,ATR_STRENGTH, 110, 100, WEAPON_Perfect);		};

instance ItMw_Kriegskeule (ItemPR_MeleeWeaponW)		{	name = "Pa³ka bojowa";					visual = "ItMw_022_1h_mace_war_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_Kriegskeule (ItemPR_MeleeWeaponW)	{	name = "Pa³ka bojowa";					visual = "ItMw_022_1h_mace_war_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_Kriegskeule (ItemPR_MeleeWeaponW)	{	name = "Pa³ka bojowa";					visual = "ItMw_022_1h_mace_war_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);		};
instance ItMw3_Kriegskeule (ItemPR_MeleeWeaponW)	{	name = "Pa³ka bojowa";					visual = "ItMw_022_1h_mace_war_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_Kriegskeule (ItemPR_MeleeWeaponW)	{	name = "Pa³ka bojowa";					visual = "ItMw_022_1h_mace_war_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_Sword_01 (ItemPR_MeleeWeaponM)		{	name = "Œredni miecz";					visual = "ItMw_1h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_1h_Sword_01 (ItemPR_MeleeWeaponM)	{	name = "Œredni miecz";					visual = "ItMw_1h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Sword_01 (ItemPR_MeleeWeaponM)	{	name = "Œredni miecz";					visual = "ItMw_1h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Sword_01 (ItemPR_MeleeWeaponM)	{	name = "Œredni miecz";					visual = "ItMw_1h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_1h_Sword_01 (ItemPR_MeleeWeaponM)	{	name = "Œredni miecz";					visual = "ItMw_1h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_2h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski topór bojowy";			visual = "ItMw_035_2h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 50,ATR_STRENGTH, 80, 100, WEAPON_Default);		};
instance ItMw0_2h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski topór bojowy";			visual = "ItMw_035_2h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 50,ATR_STRENGTH, 80, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski topór bojowy";			visual = "ItMw_035_2h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 50,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);		};
instance ItMw3_2h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski topór bojowy";			visual = "ItMw_035_2h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 50,ATR_STRENGTH, 80, 100, WEAPON_Forged);		};
instance ItMw4_2h_Sld_Axe (ItemPR_MeleeWeaponM)		{	name = "Kiepski topór bojowy";			visual = "ItMw_035_2h_sld_axe_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 50,ATR_STRENGTH, 80, 100, WEAPON_Perfect);		};

instance ItMw_2h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz dwurêczny";		visual = "ItMw_035_2h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_2h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz dwurêczny";		visual = "ItMw_035_2h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz dwurêczny";		visual = "ItMw_035_2h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_2h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz dwurêczny";		visual = "ItMw_035_2h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Sld_Sword (ItemPR_MeleeWeaponM)	{	name = "Kiepski miecz dwurêczny";		visual = "ItMw_035_2h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_Blutpfanne (ItemPR_MeleeWeaponW)		{	name = "Du¿a patelnia";					visual = "ItMw_2h_Blutpfanne.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 130, 10, WEAPON_Default);		};
instance ItMw0_Blutpfanne (ItemPR_MeleeWeaponW)		{	name = "Du¿a patelnia";					visual = "ItMw_2h_Blutpfanne.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 130, 10, WEAPON_Wornout);		};
instance ItMw2_Blutpfanne (ItemPR_MeleeWeaponW)		{	name = "Du¿a patelnia";					visual = "ItMw_2h_Blutpfanne.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 130, 10, WEAPON_Sharpened);	};
instance ItMw3_Blutpfanne (ItemPR_MeleeWeaponW)		{	name = "Du¿a patelnia";					visual = "ItMw_2h_Blutpfanne.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 130, 10, WEAPON_Forged);		};
instance ItMw4_Blutpfanne (ItemPR_MeleeWeaponW)		{	name = "Du¿a patelnia";					visual = "ItMw_2h_Blutpfanne.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 130, 10, WEAPON_Perfect);		};

instance ItMw_Kriegshammer1 (ItemPR_MeleeWeaponM)	{	name = "M³ot wojenny";					visual = "ItMw_028_1h_warhammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 55,DAM_BLUNT, 55,ATR_STRENGTH, 40, 100, WEAPON_Default);			};
instance ItMw0_Kriegshammer1 (ItemPR_MeleeWeaponM)	{	name = "M³ot wojenny";					visual = "ItMw_028_1h_warhammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 55,DAM_BLUNT, 55,ATR_STRENGTH, 40, 100, WEAPON_Wornout);			};
instance ItMw2_Kriegshammer1 (ItemPR_MeleeWeaponM)	{	name = "M³ot wojenny";					visual = "ItMw_028_1h_warhammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 55,DAM_BLUNT, 55,ATR_STRENGTH, 40, 100, WEAPON_Sharpened);		};
instance ItMw3_Kriegshammer1 (ItemPR_MeleeWeaponM)	{	name = "M³ot wojenny";					visual = "ItMw_028_1h_warhammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 55,DAM_BLUNT, 55,ATR_STRENGTH, 40, 100, WEAPON_Forged);			};
instance ItMw4_Kriegshammer1 (ItemPR_MeleeWeaponM)	{	name = "M³ot wojenny";					visual = "ItMw_028_1h_warhammer_01.3ds";		SetItMwAttributes (self, ITEM_AXE, 55,DAM_BLUNT, 55,ATR_STRENGTH, 40, 100, WEAPON_Perfect);			};

instance ItMw_1h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Maczeta";						visual = "ItMw_1h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 55,ATR_STRENGTH, 75, 100, WEAPON_Default);			};
instance ItMw0_1h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Maczeta";						visual = "ItMw_1h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 55,ATR_STRENGTH, 75, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Maczeta";						visual = "ItMw_1h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 55,ATR_STRENGTH, 75, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Maczeta";						visual = "ItMw_1h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 55,ATR_STRENGTH, 75, 100, WEAPON_Forged);			};
instance ItMw4_1h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Maczeta";						visual = "ItMw_1h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 55,ATR_STRENGTH, 75, 100, WEAPON_Perfect);			};

instance ItMw_2h_Mil_Halberd (ItemPR_MeleeWeaponM)	{	name = "Kiepska d³uga halabarda";		visual = "ItMw_028_2h_halberd_02.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100, WEAPON_Unusable);		};
instance ItMw_Hellebarde (ItemPR_MeleeWeaponM)		{	name = "Halabarda";						visual = "ItMw_028_2h_halberd_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100, WEAPON_Default);		};
instance ItMw0_Hellebarde (ItemPR_MeleeWeaponM)		{	name = "Halabarda";						visual = "ItMw_028_2h_halberd_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100, WEAPON_Wornout);		};
instance ItMw2_Hellebarde (ItemPR_MeleeWeaponM)		{	name = "Halabarda";						visual = "ItMw_028_2h_halberd_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);		};
instance ItMw3_Hellebarde (ItemPR_MeleeWeaponM)		{	name = "Halabarda";						visual = "ItMw_028_2h_halberd_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100, WEAPON_Forged);		};
instance ItMw4_Hellebarde (ItemPR_MeleeWeaponM)		{	name = "Halabarda";						visual = "ItMw_028_2h_halberd_01.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100, WEAPON_Perfect);		};

instance ItMw_Faustschwert (ItemPR_MeleeWeaponM)	{	name = "Szpony";						visual = "ItMw_1h_Faustschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 50,ATR_DEXTERITY, 60, 100, WEAPON_Default);			};
instance ItMw0_Faustschwert (ItemPR_MeleeWeaponM)	{	name = "Szpony";						visual = "ItMw_1h_Faustschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 50,ATR_DEXTERITY, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Faustschwert (ItemPR_MeleeWeaponM)	{	name = "Szpony";						visual = "ItMw_1h_Faustschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 50,ATR_DEXTERITY, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Faustschwert (ItemPR_MeleeWeaponM)	{	name = "Szpony";						visual = "ItMw_1h_Faustschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 50,ATR_DEXTERITY, 60, 100, WEAPON_Forged);			};
instance ItMw4_Faustschwert (ItemPR_MeleeWeaponM)	{	name = "Szpony";						visual = "ItMw_1h_Faustschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 55,DAM_EDGE, 50,ATR_DEXTERITY, 60, 100, WEAPON_Perfect);			};

instance ItMw_Nagelkeule2 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ka pa³ka z kolcami";		visual = "ItMw_028_1H_Mace_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_BLUNT, 60,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Nagelkeule2 (ItemPR_MeleeWeaponW)	{	name = "Ciê¿ka pa³ka z kolcami";		visual = "ItMw_028_1H_Mace_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_BLUNT, 60,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Nagelkeule2 (ItemPR_MeleeWeaponW)	{	name = "Ciê¿ka pa³ka z kolcami";		visual = "ItMw_028_1H_Mace_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_BLUNT, 60,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Nagelkeule2 (ItemPR_MeleeWeaponW)	{	name = "Ciê¿ka pa³ka z kolcami";		visual = "ItMw_028_1H_Mace_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_BLUNT, 60,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Nagelkeule2 (ItemPR_MeleeWeaponW)	{	name = "Ciê¿ka pa³ka z kolcami";		visual = "ItMw_028_1H_Mace_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_BLUNT, 60,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Schiffsaxt (ItemPR_MeleeWeaponM)		{	name = "Topór pok³adowy";				visual = "ItMw_030_1h_axe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Schiffsaxt (ItemPR_MeleeWeaponM)		{	name = "Topór pok³adowy";				visual = "ItMw_030_1h_axe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Schiffsaxt (ItemPR_MeleeWeaponM)		{	name = "Topór pok³adowy";				visual = "ItMw_030_1h_axe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_Schiffsaxt (ItemPR_MeleeWeaponM)		{	name = "Topór pok³adowy";				visual = "ItMw_030_1h_axe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Schiffsaxt (ItemPR_MeleeWeaponM)		{	name = "Topór pok³adowy";				visual = "ItMw_030_1h_axe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_1h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz paladyna";				visual = "ItMw_030_1h_PAL_Sword_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_1h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz paladyna";				visual = "ItMw_030_1h_PAL_Sword_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz paladyna";				visual = "ItMw_030_1h_PAL_Sword_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz paladyna";				visual = "ItMw_030_1h_PAL_Sword_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_1h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz paladyna";				visual = "ItMw_030_1h_PAL_Sword_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_2h_Scythe_03 (ItemPR_MeleeWeaponM)	{	name = "Kosa bojowa";					visual = "ItMw_2h_Scythe_03.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_2h_Scythe_03 (ItemPR_MeleeWeaponM)	{	name = "Kosa bojowa";					visual = "ItMw_2h_Scythe_03.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Scythe_03 (ItemPR_MeleeWeaponM)	{	name = "Kosa bojowa";					visual = "ItMw_2h_Scythe_03.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_2h_Scythe_03 (ItemPR_MeleeWeaponM)	{	name = "Kosa bojowa";					visual = "ItMw_2h_Scythe_03.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Scythe_03 (ItemPR_MeleeWeaponM)	{	name = "Kosa bojowa";					visual = "ItMw_2h_Scythe_03.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_Schwert1 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz";					visual = "ItMw_035_1h_Sword_04.3ds";			SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Schwert1 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz";					visual = "ItMw_035_1h_Sword_04.3ds";			SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Schwert1 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz";					visual = "ItMw_035_1h_Sword_04.3ds";			SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_Schwert1 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz";					visual = "ItMw_035_1h_Sword_04.3ds";			SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Schwert1 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz";					visual = "ItMw_035_1h_Sword_04.3ds";			SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Rubindolch (ItemPR_MeleeWeaponM)		{	name = "Rubinowy sztylet";				visual = "ItMw_1h_Dagger_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_DEXTERITY, 70, 100, WEAPON_Default);			};
instance ItMw0_Rubindolch (ItemPR_MeleeWeaponM)		{	name = "Rubinowy sztylet";				visual = "ItMw_1h_Dagger_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_DEXTERITY, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Rubindolch (ItemPR_MeleeWeaponM)		{	name = "Rubinowy sztylet";				visual = "ItMw_1h_Dagger_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_DEXTERITY, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_Rubindolch (ItemPR_MeleeWeaponM)		{	name = "Rubinowy sztylet";				visual = "ItMw_1h_Dagger_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_DEXTERITY, 70, 100, WEAPON_Forged);			};
instance ItMw4_Rubindolch (ItemPR_MeleeWeaponM)		{	name = "Rubinowy sztylet";				visual = "ItMw_1h_Dagger_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 55,ATR_DEXTERITY, 70, 100, WEAPON_Perfect);			};

///******************************************************************************************
/// Chapter 2
///******************************************************************************************
instance ItMw_Schwert (ItemPR_MeleeWeaponM)			{	name = "Kiepski d³ugi miecz";			visual = "ItMw_030_1h_sword_long_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 65,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_Schwert (ItemPR_MeleeWeaponM)		{	name = "Kiepski d³ugi miecz";			visual = "ItMw_030_1h_sword_long_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 65,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Schwert (ItemPR_MeleeWeaponM)		{	name = "Kiepski d³ugi miecz";			visual = "ItMw_030_1h_sword_long_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 65,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_Schwert (ItemPR_MeleeWeaponM)		{	name = "Kiepski d³ugi miecz";			visual = "ItMw_030_1h_sword_long_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 65,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_Schwert (ItemPR_MeleeWeaponM)		{	name = "Kiepski d³ugi miecz";			visual = "ItMw_030_1h_sword_long_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 65,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_LongGlaive1 (ItemPR_MeleeWeaponM)		{	name = "Glewia";						visual = "ItMw_2h_Glaive_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 65,ATR_DEXTERITY, 150, 100, WEAPON_Default);		};
instance ItMw0_LongGlaive1 (ItemPR_MeleeWeaponM)	{	name = "Glewia";						visual = "ItMw_2h_Glaive_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 65,ATR_DEXTERITY, 150, 100, WEAPON_Wornout);		};
instance ItMw2_LongGlaive1 (ItemPR_MeleeWeaponM)	{	name = "Glewia";						visual = "ItMw_2h_Glaive_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 65,ATR_DEXTERITY, 150, 100, WEAPON_Sharpened);	};
instance ItMw3_LongGlaive1 (ItemPR_MeleeWeaponM)	{	name = "Glewia";						visual = "ItMw_2h_Glaive_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 65,ATR_DEXTERITY, 150, 100, WEAPON_Forged);		};
instance ItMw4_LongGlaive1 (ItemPR_MeleeWeaponM)	{	name = "Glewia";						visual = "ItMw_2h_Glaive_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 65,ATR_DEXTERITY, 150, 100, WEAPON_Perfect);		};

instance ItMw_Piratensaebel (ItemPR_MeleeWeaponM)	{	name = "Piracki kordelas";				visual = "ItMw_030_1h_sword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Piratensaebel (ItemPR_MeleeWeaponM)	{	name = "Piracki kordelas";				visual = "ItMw_030_1h_sword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Piratensaebel (ItemPR_MeleeWeaponM)	{	name = "Piracki kordelas";				visual = "ItMw_030_1h_sword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_Piratensaebel (ItemPR_MeleeWeaponM)	{	name = "Piracki kordelas";				visual = "ItMw_030_1h_sword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Piratensaebel (ItemPR_MeleeWeaponM)	{	name = "Piracki kordelas";				visual = "ItMw_030_1h_sword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Breitschwert1 (ItemPR_MeleeWeaponM)	{	name = "Srebrny pa³asz";				visual = "ItMw_1h_Cutlass_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_DEXTERITY, 75, 100, WEAPON_Default);			};
instance ItMw0_Breitschwert1 (ItemPR_MeleeWeaponM)	{	name = "Srebrny pa³asz";				visual = "ItMw_1h_Cutlass_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_DEXTERITY, 75, 100, WEAPON_Wornout);			};
instance ItMw2_Breitschwert1 (ItemPR_MeleeWeaponM)	{	name = "Srebrny pa³asz";				visual = "ItMw_1h_Cutlass_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_DEXTERITY, 75, 100, WEAPON_Sharpened);		};
instance ItMw3_Breitschwert1 (ItemPR_MeleeWeaponM)	{	name = "Srebrny pa³asz";				visual = "ItMw_1h_Cutlass_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_DEXTERITY, 75, 100, WEAPON_Forged);			};
instance ItMw4_Breitschwert1 (ItemPR_MeleeWeaponM)	{	name = "Srebrny pa³asz";				visual = "ItMw_1h_Cutlass_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_DEXTERITY, 75, 100, WEAPON_Perfect);			};

instance ItMw_Schwarzeaxt1 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór";					visual = "ItMw_1h_BlackAxe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Schwarzeaxt1 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór";					visual = "ItMw_1h_BlackAxe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Schwarzeaxt1 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór";					visual = "ItMw_1h_BlackAxe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);			};
instance ItMw3_Schwarzeaxt1 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór";					visual = "ItMw_1h_BlackAxe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Schwarzeaxt1 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór";					visual = "ItMw_1h_BlackAxe_01.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Schwarzeaxt2 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór obosieczny";		visual = "ItMw_1h_BlackAxe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Schwarzeaxt2 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór obosieczny";		visual = "ItMw_1h_BlackAxe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Schwarzeaxt2 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór obosieczny";		visual = "ItMw_1h_BlackAxe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);			};
instance ItMw3_Schwarzeaxt2 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór obosieczny";		visual = "ItMw_1h_BlackAxe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Schwarzeaxt2 (ItemPR_MeleeWeaponM)	{	name = "Czarny topór obosieczny";		visual = "ItMw_1h_BlackAxe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 70,DAM_EDGE, 70,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Stabkeule (ItemPR_MeleeWeaponW)		{	name = "Bu³awa drzewcowa";				visual = "ItMw_032_2h_staff_03.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_BLUNT, 70,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_Stabkeule (ItemPR_MeleeWeaponW)		{	name = "Bu³awa drzewcowa";				visual = "ItMw_032_2h_staff_03.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_BLUNT, 70,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Stabkeule (ItemPR_MeleeWeaponW)		{	name = "Bu³awa drzewcowa";				visual = "ItMw_032_2h_staff_03.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_BLUNT, 70,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_Stabkeule (ItemPR_MeleeWeaponW)		{	name = "Bu³awa drzewcowa";				visual = "ItMw_032_2h_staff_03.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_BLUNT, 70,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_Stabkeule (ItemPR_MeleeWeaponW)		{	name = "Bu³awa drzewcowa";				visual = "ItMw_032_2h_staff_03.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_BLUNT, 70,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_Breitschwert2 (ItemPR_MeleeWeaponM)	{	name = "Z³oty pa³asz";					visual = "ItMw_1h_Cutlass_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 65,ATR_DEXTERITY, 75, 100, WEAPON_Default);			};
instance ItMw0_Breitschwert2 (ItemPR_MeleeWeaponM)	{	name = "Z³oty pa³asz";					visual = "ItMw_1h_Cutlass_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 65,ATR_DEXTERITY, 75, 100, WEAPON_Wornout);			};
instance ItMw2_Breitschwert2 (ItemPR_MeleeWeaponM)	{	name = "Z³oty pa³asz";					visual = "ItMw_1h_Cutlass_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 65,ATR_DEXTERITY, 75, 100, WEAPON_Sharpened);		};
instance ItMw3_Breitschwert2 (ItemPR_MeleeWeaponM)	{	name = "Z³oty pa³asz";					visual = "ItMw_1h_Cutlass_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 65,ATR_DEXTERITY, 75, 100, WEAPON_Forged);			};
instance ItMw4_Breitschwert2 (ItemPR_MeleeWeaponM)	{	name = "Z³oty pa³asz";					visual = "ItMw_1h_Cutlass_02.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 65,ATR_DEXTERITY, 75, 100, WEAPON_Perfect);			};

instance ItMw_Steinbrecher (ItemPR_MeleeWeaponW)	{	name = "Oskard";						visual = "ItMw_035_1h_mace_war_02.3ds";			SetItMwAttributes (self, ITEM_AXE, 75,DAM_BLUNT, 75,ATR_STRENGTH, 50, 100, WEAPON_Default);			};
instance ItMw0_Steinbrecher (ItemPR_MeleeWeaponW)	{	name = "Oskard";						visual = "ItMw_035_1h_mace_war_02.3ds";			SetItMwAttributes (self, ITEM_AXE, 75,DAM_BLUNT, 75,ATR_STRENGTH, 50, 100, WEAPON_Wornout);			};
instance ItMw2_Steinbrecher (ItemPR_MeleeWeaponW)	{	name = "Oskard";						visual = "ItMw_035_1h_mace_war_02.3ds";			SetItMwAttributes (self, ITEM_AXE, 75,DAM_BLUNT, 75,ATR_STRENGTH, 50, 100, WEAPON_Sharpened);		};
instance ItMw3_Steinbrecher (ItemPR_MeleeWeaponW)	{	name = "Oskard";						visual = "ItMw_035_1h_mace_war_02.3ds";			SetItMwAttributes (self, ITEM_AXE, 75,DAM_BLUNT, 75,ATR_STRENGTH, 50, 100, WEAPON_Forged);			};
instance ItMw4_Steinbrecher (ItemPR_MeleeWeaponW)	{	name = "Oskard";						visual = "ItMw_035_1h_mace_war_02.3ds";			SetItMwAttributes (self, ITEM_AXE, 75,DAM_BLUNT, 75,ATR_STRENGTH, 50, 100, WEAPON_Perfect);			};

instance ItMw_1h_LongSword_01 (ItemPR_MeleeWeaponM)	{	name = "Zdobiony miecz";				visual = "ItMw_1h_LongSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_LongSword_01 (ItemPR_MeleeWeaponM){	name = "Zdobiony miecz";				visual = "ItMw_1h_LongSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_LongSword_01 (ItemPR_MeleeWeaponM){	name = "Zdobiony miecz";				visual = "ItMw_1h_LongSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_LongSword_01 (ItemPR_MeleeWeaponM){	name = "Zdobiony miecz";				visual = "ItMw_1h_LongSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_LongSword_01 (ItemPR_MeleeWeaponM){	name = "Zdobiony miecz";				visual = "ItMw_1h_LongSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Bastardschwert1 (ItemPR_MeleeWeaponM)	{	name = "Lekki miecz bêkarci";			visual = "ItMw_1h_BastardSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Bastardschwert1 (ItemPR_MeleeWeaponM){	name = "Lekki miecz bêkarci";			visual = "ItMw_1h_BastardSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Bastardschwert1 (ItemPR_MeleeWeaponM){	name = "Lekki miecz bêkarci";			visual = "ItMw_1h_BastardSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);			};
instance ItMw3_Bastardschwert1 (ItemPR_MeleeWeaponM){	name = "Lekki miecz bêkarci";			visual = "ItMw_1h_BastardSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Bastardschwert1 (ItemPR_MeleeWeaponM){	name = "Lekki miecz bêkarci";			visual = "ItMw_1h_BastardSword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Zweihaender1 (ItemPR_MeleeWeaponM)	{	name = "Lekki miecz dwurêczny";			visual = "ItMw_032_2h_sword_light_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 110, 100, WEAPON_Default);		};
instance ItMw0_Zweihaender1 (ItemPR_MeleeWeaponM)	{	name = "Lekki miecz dwurêczny";			visual = "ItMw_032_2h_sword_light_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 110, 100, WEAPON_Wornout);		};
instance ItMw2_Zweihaender1 (ItemPR_MeleeWeaponM)	{	name = "Lekki miecz dwurêczny";			visual = "ItMw_032_2h_sword_light_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 110, 100, WEAPON_Sharpened);		};
instance ItMw3_Zweihaender1 (ItemPR_MeleeWeaponM)	{	name = "Lekki miecz dwurêczny";			visual = "ItMw_032_2h_sword_light_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 110, 100, WEAPON_Forged);		};
instance ItMw4_Zweihaender1 (ItemPR_MeleeWeaponM)	{	name = "Lekki miecz dwurêczny";			visual = "ItMw_032_2h_sword_light_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 110, 100, WEAPON_Perfect);		};

instance ItMw_Schlaeferfluch (ItemPR_MeleeWeaponM)	{	name = "Kl¹twa Œni¹cego";				visual = "ItMw_1h_Sword_Sleeper_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 75,DAM_BLUNT, 75,ATR_STRENGTH, 120, 100, WEAPON_Default);			};
instance ItMw0_Schlaeferfluch (ItemPR_MeleeWeaponM)	{	name = "Kl¹twa Œni¹cego";				visual = "ItMw_1h_Sword_Sleeper_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 75,DAM_BLUNT, 75,ATR_STRENGTH, 120, 100, WEAPON_Wornout);			};
instance ItMw2_Schlaeferfluch (ItemPR_MeleeWeaponM)	{	name = "Kl¹twa Œni¹cego";				visual = "ItMw_1h_Sword_Sleeper_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 75,DAM_BLUNT, 75,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);		};
instance ItMw3_Schlaeferfluch (ItemPR_MeleeWeaponM)	{	name = "Kl¹twa Œni¹cego";				visual = "ItMw_1h_Sword_Sleeper_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 75,DAM_BLUNT, 75,ATR_STRENGTH, 120, 100, WEAPON_Forged);			};
instance ItMw4_Schlaeferfluch (ItemPR_MeleeWeaponM)	{	name = "Kl¹twa Œni¹cego";				visual = "ItMw_1h_Sword_Sleeper_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 75,DAM_BLUNT, 75,ATR_STRENGTH, 120, 100, WEAPON_Perfect);			};

instance ItMw_Spicker (ItemPR_MeleeWeaponW)			{	name = "Rêbiczerep";					visual = "ItMw_035_1h_mace_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 80,DAM_BLUNT, 80,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Spicker (ItemPR_MeleeWeaponW)		{	name = "Rêbiczerep";					visual = "ItMw_035_1h_mace_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 80,DAM_BLUNT, 80,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Spicker (ItemPR_MeleeWeaponW)		{	name = "Rêbiczerep";					visual = "ItMw_035_1h_mace_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 80,DAM_BLUNT, 80,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Spicker (ItemPR_MeleeWeaponW)		{	name = "Rêbiczerep";					visual = "ItMw_035_1h_mace_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 80,DAM_BLUNT, 80,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Spicker (ItemPR_MeleeWeaponW)		{	name = "Rêbiczerep";					visual = "ItMw_035_1h_mace_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 80,DAM_BLUNT, 80,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Streitaxt1 (ItemPR_MeleeWeaponM)		{	name = "Lekki topór bojowy";			visual = "ItMw_035_2h_Axe_light_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 70, 100, WEAPON_Default);		};
instance ItMw0_Streitaxt1 (ItemPR_MeleeWeaponM)		{	name = "Lekki topór bojowy";			visual = "ItMw_035_2h_Axe_light_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 70, 100, WEAPON_Wornout);		};
instance ItMw2_Streitaxt1 (ItemPR_MeleeWeaponM)		{	name = "Lekki topór bojowy";			visual = "ItMw_035_2h_Axe_light_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_Streitaxt1 (ItemPR_MeleeWeaponM)		{	name = "Lekki topór bojowy";			visual = "ItMw_035_2h_Axe_light_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 70, 100, WEAPON_Forged);		};
instance ItMw4_Streitaxt1 (ItemPR_MeleeWeaponM)		{	name = "Lekki topór bojowy";			visual = "ItMw_035_2h_Axe_light_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 70, 100, WEAPON_Perfect);		};

instance ItMw_Ritterschwert (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz paladyna";		visual = "ItMw_1h_Ritterschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 75, 100, WEAPON_Default);			};
instance ItMw0_Ritterschwert (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz paladyna";		visual = "ItMw_1h_Ritterschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 75, 100, WEAPON_Wornout);			};
instance ItMw2_Ritterschwert (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz paladyna";		visual = "ItMw_1h_Ritterschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 75, 100, WEAPON_Sharpened);			};
instance ItMw3_Ritterschwert (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz paladyna";		visual = "ItMw_1h_Ritterschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 75, 100, WEAPON_Forged);			};
instance ItMw4_Ritterschwert (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz paladyna";		visual = "ItMw_1h_Ritterschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 75, 100, WEAPON_Perfect);			};

instance ItMw_Nordmarschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz nordmarczyka";			visual = "ItMw_1h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 80, 100, WEAPON_Default);			};
instance ItMw0_Nordmarschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz nordmarczyka";			visual = "ItMw_1h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 80, 100, WEAPON_Wornout);			};
instance ItMw2_Nordmarschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz nordmarczyka";			visual = "ItMw_1h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);			};
instance ItMw3_Nordmarschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz nordmarczyka";			visual = "ItMw_1h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 80, 100, WEAPON_Forged);			};
instance ItMw4_Nordmarschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz nordmarczyka";			visual = "ItMw_1h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 80,ATR_STRENGTH, 80, 100, WEAPON_Perfect);			};

instance ItMw_Kriegssense (ItemPR_MeleeWeaponM)		{	name = "Kosa wojenna";					visual = "ItMw_2h_Kriegssense.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_Kriegssense (ItemPR_MeleeWeaponM)	{	name = "Kosa wojenna";					visual = "ItMw_2h_Kriegssense.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Kriegssense (ItemPR_MeleeWeaponM)	{	name = "Kosa wojenna";					visual = "ItMw_2h_Kriegssense.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Kriegssense (ItemPR_MeleeWeaponM)	{	name = "Kosa wojenna";					visual = "ItMw_2h_Kriegssense.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_Kriegssense (ItemPR_MeleeWeaponM)	{	name = "Kosa wojenna";					visual = "ItMw_2h_Kriegssense.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_Schwert4 (ItemPR_MeleeWeaponM)		{	name = "Dobry d³ugi miecz";				visual = "ItMw_045_1h_Sword_long_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_Schwert4 (ItemPR_MeleeWeaponM)		{	name = "Dobry d³ugi miecz";				visual = "ItMw_045_1h_Sword_long_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Schwert4 (ItemPR_MeleeWeaponM)		{	name = "Dobry d³ugi miecz";				visual = "ItMw_045_1h_Sword_long_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_Schwert4 (ItemPR_MeleeWeaponM)		{	name = "Dobry d³ugi miecz";				visual = "ItMw_045_1h_Sword_long_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_Schwert4 (ItemPR_MeleeWeaponM)		{	name = "Dobry d³ugi miecz";				visual = "ItMw_045_1h_Sword_long_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 75,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Rabenschnabel (ItemPR_MeleeWeaponM)	{	name = "Kruczy Dziób";					visual = "ItMw_058_1h_warhammer_02.3ds";		SetItMwAttributes (self, ITEM_AXE, 85,DAM_BLUNT, 85,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Rabenschnabel (ItemPR_MeleeWeaponM)	{	name = "Kruczy Dziób";					visual = "ItMw_058_1h_warhammer_02.3ds";		SetItMwAttributes (self, ITEM_AXE, 85,DAM_BLUNT, 85,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Rabenschnabel (ItemPR_MeleeWeaponM)	{	name = "Kruczy Dziób";					visual = "ItMw_058_1h_warhammer_02.3ds";		SetItMwAttributes (self, ITEM_AXE, 85,DAM_BLUNT, 85,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Rabenschnabel (ItemPR_MeleeWeaponM)	{	name = "Kruczy Dziób";					visual = "ItMw_058_1h_warhammer_02.3ds";		SetItMwAttributes (self, ITEM_AXE, 85,DAM_BLUNT, 85,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Rabenschnabel (ItemPR_MeleeWeaponM)	{	name = "Kruczy Dziób";					visual = "ItMw_058_1h_warhammer_02.3ds";		SetItMwAttributes (self, ITEM_AXE, 85,DAM_BLUNT, 85,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Nomadensaebel (ItemPR_MeleeWeaponM)	{	name = "Szabla koczownika";				visual = "ItMw_1h_NomadSabre.3ds";				SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_Nomadensaebel (ItemPR_MeleeWeaponM)	{	name = "Szabla koczownika";				visual = "ItMw_1h_NomadSabre.3ds";				SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Nomadensaebel (ItemPR_MeleeWeaponM)	{	name = "Szabla koczownika";				visual = "ItMw_1h_NomadSabre.3ds";				SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_Nomadensaebel (ItemPR_MeleeWeaponM)	{	name = "Szabla koczownika";				visual = "ItMw_1h_NomadSabre.3ds";				SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_Nomadensaebel (ItemPR_MeleeWeaponM)	{	name = "Szabla koczownika";				visual = "ItMw_1h_NomadSabre.3ds";				SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Adelsschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz szlachecki";				visual = "ItMw_2h_NobleSword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 95, 100, WEAPON_Default);		};
instance ItMw0_Adelsschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz szlachecki";				visual = "ItMw_2h_NobleSword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 95, 100, WEAPON_Wornout);		};
instance ItMw2_Adelsschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz szlachecki";				visual = "ItMw_2h_NobleSword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 95, 100, WEAPON_Sharpened);		};
instance ItMw3_Adelsschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz szlachecki";				visual = "ItMw_2h_NobleSword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 95, 100, WEAPON_Forged);		};
instance ItMw4_Adelsschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz szlachecki";				visual = "ItMw_2h_NobleSword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 85,DAM_EDGE, 85,ATR_STRENGTH, 95, 100, WEAPON_Perfect);		};

instance ItMw_Schwert2 (ItemPR_MeleeWeaponM)		{	name = "D³ugi miecz";					visual = "ItMw_037_1h_sword_long_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 80,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_Schwert2 (ItemPR_MeleeWeaponM)		{	name = "D³ugi miecz";					visual = "ItMw_037_1h_sword_long_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 80,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Schwert2 (ItemPR_MeleeWeaponM)		{	name = "D³ugi miecz";					visual = "ItMw_037_1h_sword_long_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 80,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_Schwert2 (ItemPR_MeleeWeaponM)		{	name = "D³ugi miecz";					visual = "ItMw_037_1h_sword_long_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 80,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_Schwert2 (ItemPR_MeleeWeaponM)		{	name = "D³ugi miecz";					visual = "ItMw_037_1h_sword_long_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 80,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Doppelaxt (ItemPR_MeleeWeaponM)		{	name = "Topór obosieczny";				visual = "ItMw_040_1h_Axe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Doppelaxt (ItemPR_MeleeWeaponM)		{	name = "Topór obosieczny";				visual = "ItMw_040_1h_Axe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Doppelaxt (ItemPR_MeleeWeaponM)		{	name = "Topór obosieczny";				visual = "ItMw_040_1h_Axe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_Doppelaxt (ItemPR_MeleeWeaponM)		{	name = "Topór obosieczny";				visual = "ItMw_040_1h_Axe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Doppelaxt (ItemPR_MeleeWeaponM)		{	name = "Topór obosieczny";				visual = "ItMw_040_1h_Axe_02.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Bartaxt (ItemPR_MeleeWeaponM)			{	name = "Wielki topór";					visual = "ItMw_040_1h_axe_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Bartaxt (ItemPR_MeleeWeaponM)		{	name = "Wielki topór";					visual = "ItMw_040_1h_axe_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Bartaxt (ItemPR_MeleeWeaponM)		{	name = "Wielki topór";					visual = "ItMw_040_1h_axe_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_Bartaxt (ItemPR_MeleeWeaponM)		{	name = "Wielki topór";					visual = "ItMw_040_1h_axe_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Bartaxt (ItemPR_MeleeWeaponM)		{	name = "Wielki topór";					visual = "ItMw_040_1h_axe_03.3ds";				SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Rapier (ItemPR_MeleeWeaponM)			{	name = "Rapier";						visual = "ItMw_050_1h_Sword_Rapier_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 90,DAM_EDGE, 80,ATR_DEXTERITY, 70, 100, WEAPON_Default);			};
instance ItMw0_Rapier (ItemPR_MeleeWeaponM)			{	name = "Rapier";						visual = "ItMw_050_1h_Sword_Rapier_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 90,DAM_EDGE, 80,ATR_DEXTERITY, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Rapier (ItemPR_MeleeWeaponM)			{	name = "Rapier";						visual = "ItMw_050_1h_Sword_Rapier_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 90,DAM_EDGE, 80,ATR_DEXTERITY, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_Rapier (ItemPR_MeleeWeaponM)			{	name = "Rapier";						visual = "ItMw_050_1h_Sword_Rapier_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 90,DAM_EDGE, 80,ATR_DEXTERITY, 70, 100, WEAPON_Forged);			};
instance ItMw4_Rapier (ItemPR_MeleeWeaponM)			{	name = "Rapier";						visual = "ItMw_050_1h_Sword_Rapier_01.3ds";		SetItMwAttributes (self, ITEM_SWD, 90,DAM_EDGE, 80,ATR_DEXTERITY, 70, 100, WEAPON_Perfect);			};

///******************************************************************************************
instance ItMw_1h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz magiczny";			visual = "ItMw_045_1h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 60,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz magiczny";			visual = "ItMw_045_1h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 60,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz magiczny";			visual = "ItMw_045_1h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 60,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz magiczny";			visual = "ItMw_045_1h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 60,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz magiczny";			visual = "ItMw_045_1h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 60,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_1h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz podpalaj¹cy";		visual = "ItMw_1h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_FIRE, 60,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz podpalaj¹cy";		visual = "ItMw_1h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_FIRE, 60,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz podpalaj¹cy";		visual = "ItMw_1h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_FIRE, 60,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz podpalaj¹cy";		visual = "ItMw_1h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_FIRE, 60,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "D³ugi miecz podpalaj¹cy";		visual = "ItMw_1h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 70,DAM_FIRE, 60,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_2h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz dwurêczny";		visual = "ItMw_050_2h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_EDGE, 80,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_2h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz dwurêczny";		visual = "ItMw_050_2h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_EDGE, 80,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz dwurêczny";		visual = "ItMw_050_2h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_EDGE, 80,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_2h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz dwurêczny";		visual = "ItMw_050_2h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_EDGE, 80,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_2h_Special_01 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz dwurêczny";		visual = "ItMw_050_2h_Sword_smith_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_EDGE, 80,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

instance ItMw_2h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_FIRE, 80,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_2h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_FIRE, 80,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_FIRE, 80,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_2h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_FIRE, 80,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_2h_Ignite_01 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_FIRE, 80,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

///******************************************************************************************
/// Chapter 3
///******************************************************************************************
instance ItMw_Zweihandaxt (ItemPR_MeleeWeaponM)		{	name = "Topór dwurêczny";				visual = "ItMw_2h_Axe_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 95,DAM_EDGE, 95,ATR_STRENGTH, 80, 100, WEAPON_Default);		};
instance ItMw0_Zweihandaxt (ItemPR_MeleeWeaponM)	{	name = "Topór dwurêczny";				visual = "ItMw_2h_Axe_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 95,DAM_EDGE, 95,ATR_STRENGTH, 80, 100, WEAPON_Wornout);		};
instance ItMw2_Zweihandaxt (ItemPR_MeleeWeaponM)	{	name = "Topór dwurêczny";				visual = "ItMw_2h_Axe_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 95,DAM_EDGE, 95,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);		};
instance ItMw3_Zweihandaxt (ItemPR_MeleeWeaponM)	{	name = "Topór dwurêczny";				visual = "ItMw_2h_Axe_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 95,DAM_EDGE, 95,ATR_STRENGTH, 80, 100, WEAPON_Forged);		};
instance ItMw4_Zweihandaxt (ItemPR_MeleeWeaponM)	{	name = "Topór dwurêczny";				visual = "ItMw_2h_Axe_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 95,DAM_EDGE, 95,ATR_STRENGTH, 80, 100, WEAPON_Perfect);		};

instance ItMw_Zweihandhammer (ItemPR_MeleeWeaponM)	{	name = "M³ot dwurêczny";				visual = "ItMw_2h_Warhammer_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 95,DAM_BLUNT, 95,ATR_STRENGTH, 80, 100, WEAPON_Default);		};
instance ItMw0_Zweihandhammer (ItemPR_MeleeWeaponM)	{	name = "M³ot dwurêczny";				visual = "ItMw_2h_Warhammer_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 95,DAM_BLUNT, 95,ATR_STRENGTH, 80, 100, WEAPON_Wornout);		};
instance ItMw2_Zweihandhammer (ItemPR_MeleeWeaponM)	{	name = "M³ot dwurêczny";				visual = "ItMw_2h_Warhammer_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 95,DAM_BLUNT, 95,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);	};
instance ItMw3_Zweihandhammer (ItemPR_MeleeWeaponM)	{	name = "M³ot dwurêczny";				visual = "ItMw_2h_Warhammer_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 95,DAM_BLUNT, 95,ATR_STRENGTH, 80, 100, WEAPON_Forged);		};
instance ItMw4_Zweihandhammer (ItemPR_MeleeWeaponM)	{	name = "M³ot dwurêczny";				visual = "ItMw_2h_Warhammer_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 95,DAM_BLUNT, 95,ATR_STRENGTH, 80, 100, WEAPON_Perfect);		};

instance ItMw_Bastardschwert2 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki miecz bêkarci";			visual = "ItMw_1h_BastardSword_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Bastardschwert2 (ItemPR_MeleeWeaponM){	name = "Ciê¿ki miecz bêkarci";			visual = "ItMw_1h_BastardSword_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Bastardschwert2 (ItemPR_MeleeWeaponM){	name = "Ciê¿ki miecz bêkarci";			visual = "ItMw_1h_BastardSword_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);			};
instance ItMw3_Bastardschwert2 (ItemPR_MeleeWeaponM){	name = "Ciê¿ki miecz bêkarci";			visual = "ItMw_1h_BastardSword_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Bastardschwert2 (ItemPR_MeleeWeaponM){	name = "Ciê¿ki miecz bêkarci";			visual = "ItMw_1h_BastardSword_02.3ds";			SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Breitschwert3 (ItemPR_MeleeWeaponM)	{	name = "Z³oty kordelas";				visual = "ItMw_1h_Cutlass_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_Breitschwert3 (ItemPR_MeleeWeaponM)	{	name = "Z³oty kordelas";				visual = "ItMw_1h_Cutlass_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Breitschwert3 (ItemPR_MeleeWeaponM)	{	name = "Z³oty kordelas";				visual = "ItMw_1h_Cutlass_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_Breitschwert3 (ItemPR_MeleeWeaponM)	{	name = "Z³oty kordelas";				visual = "ItMw_1h_Cutlass_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_Breitschwert3 (ItemPR_MeleeWeaponM)	{	name = "Z³oty kordelas";				visual = "ItMw_1h_Cutlass_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Streitkolben (ItemPR_MeleeWeaponM)	{	name = "Bu³awa";						visual = "ItMw_050_1h_mace_war_03.3ds";			SetItMwAttributes (self, ITEM_AXE, 100,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Streitkolben (ItemPR_MeleeWeaponM)	{	name = "Bu³awa";						visual = "ItMw_050_1h_mace_war_03.3ds";			SetItMwAttributes (self, ITEM_AXE, 100,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Streitkolben (ItemPR_MeleeWeaponM)	{	name = "Bu³awa";						visual = "ItMw_050_1h_mace_war_03.3ds";			SetItMwAttributes (self, ITEM_AXE, 100,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Streitkolben (ItemPR_MeleeWeaponM)	{	name = "Bu³awa";						visual = "ItMw_050_1h_mace_war_03.3ds";			SetItMwAttributes (self, ITEM_AXE, 100,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Streitkolben (ItemPR_MeleeWeaponM)	{	name = "Bu³awa";						visual = "ItMw_050_1h_mace_war_03.3ds";			SetItMwAttributes (self, ITEM_AXE, 100,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_2h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_2h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_2h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_2h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_2h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_2h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_2h_Common_01 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_2h_Sword_01.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

instance ItMw_2h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Wielka maczeta";				visual = "ItMw_2h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 105, 100, WEAPON_Default);		};
instance ItMw0_2h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Wielka maczeta";				visual = "ItMw_2h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 105, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Wielka maczeta";				visual = "ItMw_2h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 105, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Wielka maczeta";				visual = "ItMw_2h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 105, 100, WEAPON_Forged);		};
instance ItMw4_2h_Machete_02 (ItemPR_MeleeWeaponM)	{	name = "Wielka maczeta";				visual = "ItMw_2h_Machete_02.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 105, 100, WEAPON_Perfect);		};

instance ItMw_2h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny paladyna";		visual = "ItMw_040_2h_PAL_Sword_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 110, 100, WEAPON_Default);		};
instance ItMw0_2h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny paladyna";		visual = "ItMw_040_2h_PAL_Sword_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 110, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny paladyna";		visual = "ItMw_040_2h_PAL_Sword_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 110, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny paladyna";		visual = "ItMw_040_2h_PAL_Sword_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 110, 100, WEAPON_Forged);		};
instance ItMw4_2h_Pal_Sword (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny paladyna";		visual = "ItMw_040_2h_PAL_Sword_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 110, 100, WEAPON_Perfect);		};

instance ItMw_Rubinklinge (ItemPR_MeleeWeaponM)		{	name = "Rubinowe ostrze";				visual = "ItMw_050_1h_sword_05.3ds";			SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 95,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Rubinklinge (ItemPR_MeleeWeaponM)	{	name = "Rubinowe ostrze";				visual = "ItMw_050_1h_sword_05.3ds";			SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 95,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Rubinklinge (ItemPR_MeleeWeaponM)	{	name = "Rubinowe ostrze";				visual = "ItMw_050_1h_sword_05.3ds";			SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 95,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);			};
instance ItMw3_Rubinklinge (ItemPR_MeleeWeaponM)	{	name = "Rubinowe ostrze";				visual = "ItMw_050_1h_sword_05.3ds";			SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 95,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Rubinklinge (ItemPR_MeleeWeaponM)	{	name = "Rubinowe ostrze";				visual = "ItMw_050_1h_sword_05.3ds";			SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 95,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Nachtbann (ItemPR_MeleeWeaponM)		{	name = "Nocna Zmora";					visual = "ItMw_1h_MatteoSchwert_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_DEXTERITY, 100, 100, WEAPON_Default);			};
instance ItMw0_Nachtbann (ItemPR_MeleeWeaponM)		{	name = "Nocna Zmora";					visual = "ItMw_1h_MatteoSchwert_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_DEXTERITY, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Nachtbann (ItemPR_MeleeWeaponM)		{	name = "Nocna Zmora";					visual = "ItMw_1h_MatteoSchwert_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_DEXTERITY, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Nachtbann (ItemPR_MeleeWeaponM)		{	name = "Nocna Zmora";					visual = "ItMw_1h_MatteoSchwert_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_DEXTERITY, 100, 100, WEAPON_Forged);			};
instance ItMw4_Nachtbann (ItemPR_MeleeWeaponM)		{	name = "Nocna Zmora";					visual = "ItMw_1h_MatteoSchwert_03.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_DEXTERITY, 100, 100, WEAPON_Perfect);			};

instance ItMw_2h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Burzy";					visual = "ItMw_Club_2h_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 105,DAM_BLUNT, 110,ATR_STRENGTH, 130, 100, WEAPON_Default);	};
instance ItMw0_2h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Burzy";					visual = "ItMw_Club_2h_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 105,DAM_BLUNT, 110,ATR_STRENGTH, 130, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Burzy";					visual = "ItMw_Club_2h_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 105,DAM_BLUNT, 110,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Burzy";					visual = "ItMw_Club_2h_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 105,DAM_BLUNT, 110,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Keule (ItemPR_MeleeWeaponW)		{	name = "S³uga Burzy";					visual = "ItMw_Club_2h_01.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 105,DAM_BLUNT, 110,ATR_STRENGTH, 130, 100, WEAPON_Perfect);	};

instance ItMw_Morgenstern (ItemPR_MeleeWeaponW)		{	name = "Bu³awa i ³añcuch";				visual = "ItMw_045_1h_mace_04.3ds";				SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 105,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Morgenstern (ItemPR_MeleeWeaponW)	{	name = "Bu³awa i ³añcuch";				visual = "ItMw_045_1h_mace_04.3ds";				SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 105,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Morgenstern (ItemPR_MeleeWeaponW)	{	name = "Bu³awa i ³añcuch";				visual = "ItMw_045_1h_mace_04.3ds";				SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 105,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Morgenstern (ItemPR_MeleeWeaponW)	{	name = "Bu³awa i ³añcuch";				visual = "ItMw_045_1h_mace_04.3ds";				SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 105,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Morgenstern (ItemPR_MeleeWeaponW)	{	name = "Bu³awa i ³añcuch";				visual = "ItMw_045_1h_mace_04.3ds";				SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 105,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Zweihaender2 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_055_2h_sword_light_05.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_Zweihaender2 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_055_2h_sword_light_05.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_Zweihaender2 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_055_2h_sword_light_05.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);	};
instance ItMw3_Zweihaender2 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_055_2h_sword_light_05.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_Zweihaender2 (ItemPR_MeleeWeaponM)	{	name = "Miecz dwurêczny";				visual = "ItMw_055_2h_sword_light_05.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

instance ItMw_Schatzsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at";					visual = "ItMw_1h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 130, 100, WEAPON_Default);			};
instance ItMw0_Schatzsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at";					visual = "ItMw_1h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Schatzsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at";					visual = "ItMw_1h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Schatzsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at";					visual = "ItMw_1h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 130, 100, WEAPON_Forged);			};
instance ItMw4_Schatzsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at";					visual = "ItMw_1h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 105,ATR_STRENGTH, 130, 100, WEAPON_Perfect);			};

instance ItMw_Schwert3 (ItemPR_MeleeWeaponM)		{	name = "Kiepski miecz pó³torarêczny";	visual = "ItMw_045_1h_Sword_Bastard_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Schwert3 (ItemPR_MeleeWeaponM)		{	name = "Kiepski miecz pó³torarêczny";	visual = "ItMw_045_1h_Sword_Bastard_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Schwert3 (ItemPR_MeleeWeaponM)		{	name = "Kiepski miecz pó³torarêczny";	visual = "ItMw_045_1h_Sword_Bastard_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Schwert3 (ItemPR_MeleeWeaponM)		{	name = "Kiepski miecz pó³torarêczny";	visual = "ItMw_045_1h_Sword_Bastard_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Schwert3 (ItemPR_MeleeWeaponM)		{	name = "Kiepski miecz pó³torarêczny";	visual = "ItMw_045_1h_Sword_Bastard_01.3ds";	SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 95,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Runenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz runiczny";				visual = "ItMw_055_1h_sword_long_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 110,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_Runenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz runiczny";				visual = "ItMw_055_1h_sword_long_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 110,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_Runenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz runiczny";				visual = "ItMw_055_1h_sword_long_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 110,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);		};
instance ItMw3_Runenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz runiczny";				visual = "ItMw_055_1h_sword_long_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 110,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_Runenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz runiczny";				visual = "ItMw_055_1h_sword_long_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 110,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_Inquisitor (ItemPR_MeleeWeaponM)		{	name = "Inkwizytor";					visual = "ItMw_060_1h_mace_war_04.3ds";			SetItMwAttributes (self, ITEM_AXE, 110,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Inquisitor (ItemPR_MeleeWeaponM)		{	name = "Inkwizytor";					visual = "ItMw_060_1h_mace_war_04.3ds";			SetItMwAttributes (self, ITEM_AXE, 110,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Inquisitor (ItemPR_MeleeWeaponM)		{	name = "Inkwizytor";					visual = "ItMw_060_1h_mace_war_04.3ds";			SetItMwAttributes (self, ITEM_AXE, 110,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Inquisitor (ItemPR_MeleeWeaponM)		{	name = "Inkwizytor";					visual = "ItMw_060_1h_mace_war_04.3ds";			SetItMwAttributes (self, ITEM_AXE, 110,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Inquisitor (ItemPR_MeleeWeaponM)		{	name = "Inkwizytor";					visual = "ItMw_060_1h_mace_war_04.3ds";			SetItMwAttributes (self, ITEM_AXE, 110,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Schwert5 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz pó³torarêczny";		visual = "ItMw_058_1h_Sword_Bastard_02.3ds";	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Schwert5 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz pó³torarêczny";		visual = "ItMw_058_1h_Sword_Bastard_02.3ds";	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Schwert5 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz pó³torarêczny";		visual = "ItMw_058_1h_Sword_Bastard_02.3ds";	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Schwert5 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz pó³torarêczny";		visual = "ItMw_058_1h_Sword_Bastard_02.3ds";	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Schwert5 (ItemPR_MeleeWeaponM)		{	name = "Dobry miecz pó³torarêczny";		visual = "ItMw_058_1h_Sword_Bastard_02.3ds";	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 105,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Florett (ItemPR_MeleeWeaponM)			{	name = "Floret";						visual = "ItMw_1h_Foil_01.3ds";					SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 100,ATR_DEXTERITY, 100, 100, WEAPON_Default);		};
instance ItMw0_Florett (ItemPR_MeleeWeaponM)		{	name = "Floret";						visual = "ItMw_1h_Foil_01.3ds";					SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 100,ATR_DEXTERITY, 100, 100, WEAPON_Wornout);		};
instance ItMw2_Florett (ItemPR_MeleeWeaponM)		{	name = "Floret";						visual = "ItMw_1h_Foil_01.3ds";					SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 100,ATR_DEXTERITY, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Florett (ItemPR_MeleeWeaponM)		{	name = "Floret";						visual = "ItMw_1h_Foil_01.3ds";					SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 100,ATR_DEXTERITY, 100, 100, WEAPON_Forged);			};
instance ItMw4_Florett (ItemPR_MeleeWeaponM)		{	name = "Floret";						visual = "ItMw_1h_Foil_01.3ds";					SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 100,ATR_DEXTERITY, 100, 100, WEAPON_Perfect);		};

instance ItMw_Hausordnung (ItemPR_MeleeWeaponM)		{	name = "Mia¿d¿ydeska";					visual = "ItMw_1h_hausordnung.3ds";				SetItMwAttributes (self, ITEM_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Hausordnung (ItemPR_MeleeWeaponM)	{	name = "Mia¿d¿ydeska";					visual = "ItMw_1h_hausordnung.3ds";				SetItMwAttributes (self, ITEM_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Hausordnung (ItemPR_MeleeWeaponM)	{	name = "Mia¿d¿ydeska";					visual = "ItMw_1h_hausordnung.3ds";				SetItMwAttributes (self, ITEM_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_Hausordnung (ItemPR_MeleeWeaponM)	{	name = "Mia¿d¿ydeska";					visual = "ItMw_1h_hausordnung.3ds";				SetItMwAttributes (self, ITEM_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Hausordnung (ItemPR_MeleeWeaponM)	{	name = "Mia¿d¿ydeska";					visual = "ItMw_1h_hausordnung.3ds";				SetItMwAttributes (self, ITEM_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Stachelkeule (ItemPR_MeleeWeaponW)	{	name = "Morgensztern";					visual = "ItMw_1h_Stachelkeule.3ds";			SetItMwAttributes (self, ITEM_AXE, 115,DAM_BLUNT, 115,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw0_Stachelkeule (ItemPR_MeleeWeaponW)	{	name = "Morgensztern";					visual = "ItMw_1h_Stachelkeule.3ds";			SetItMwAttributes (self, ITEM_AXE, 115,DAM_BLUNT, 115,ATR_STRENGTH, 70, 100, WEAPON_Wornout);			};
instance ItMw2_Stachelkeule (ItemPR_MeleeWeaponW)	{	name = "Morgensztern";					visual = "ItMw_1h_Stachelkeule.3ds";			SetItMwAttributes (self, ITEM_AXE, 115,DAM_BLUNT, 115,ATR_STRENGTH, 70, 100, WEAPON_Sharpened);		};
instance ItMw3_Stachelkeule (ItemPR_MeleeWeaponW)	{	name = "Morgensztern";					visual = "ItMw_1h_Stachelkeule.3ds";			SetItMwAttributes (self, ITEM_AXE, 115,DAM_BLUNT, 115,ATR_STRENGTH, 70, 100, WEAPON_Forged);			};
instance ItMw4_Stachelkeule (ItemPR_MeleeWeaponW)	{	name = "Morgensztern";					visual = "ItMw_1h_Stachelkeule.3ds";			SetItMwAttributes (self, ITEM_AXE, 115,DAM_BLUNT, 115,ATR_STRENGTH, 70, 100, WEAPON_Perfect);			};

instance ItMw_Streitaxt2 (ItemPR_MeleeWeaponM)		{	name = "Topór bojowy";					visual = "ItMw_060_2h_axe_heavy_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_Streitaxt2 (ItemPR_MeleeWeaponM)		{	name = "Topór bojowy";					visual = "ItMw_060_2h_axe_heavy_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_Streitaxt2 (ItemPR_MeleeWeaponM)		{	name = "Topór bojowy";					visual = "ItMw_060_2h_axe_heavy_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);	};
instance ItMw3_Streitaxt2 (ItemPR_MeleeWeaponM)		{	name = "Topór bojowy";					visual = "ItMw_060_2h_axe_heavy_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_Streitaxt2 (ItemPR_MeleeWeaponM)		{	name = "Topór bojowy";					visual = "ItMw_060_2h_axe_heavy_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

instance ItMw_Bastardschwert3 (ItemPR_MeleeWeaponM)	{	name = "Rubinowy miecz bêkarci";		visual = "ItMw_1h_BastardSword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Bastardschwert3 (ItemPR_MeleeWeaponM){	name = "Rubinowy miecz bêkarci";		visual = "ItMw_1h_BastardSword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Bastardschwert3 (ItemPR_MeleeWeaponM){	name = "Rubinowy miecz bêkarci";		visual = "ItMw_1h_BastardSword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Bastardschwert3 (ItemPR_MeleeWeaponM){	name = "Rubinowy miecz bêkarci";		visual = "ItMw_1h_BastardSword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Bastardschwert3 (ItemPR_MeleeWeaponM){	name = "Rubinowy miecz bêkarci";		visual = "ItMw_1h_BastardSword_03.3ds";			SetItMwAttributes (self, ITEM_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Zweihaender3 (ItemPR_MeleeWeaponM)	{	name = "Wzmocniony miecz dwurêczny";	visual = "ItMw_060_2h_sword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_Zweihaender3 (ItemPR_MeleeWeaponM)	{	name = "Wzmocniony miecz dwurêczny";	visual = "ItMw_060_2h_sword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_Zweihaender3 (ItemPR_MeleeWeaponM)	{	name = "Wzmocniony miecz dwurêczny";	visual = "ItMw_060_2h_sword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);	};
instance ItMw3_Zweihaender3 (ItemPR_MeleeWeaponM)	{	name = "Wzmocniony miecz dwurêczny";	visual = "ItMw_060_2h_sword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 120, 100, WEAPON_Forged);		};
instance ItMw4_Zweihaender3 (ItemPR_MeleeWeaponM)	{	name = "Wzmocniony miecz dwurêczny";	visual = "ItMw_060_2h_sword_01.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

instance ItMw_Kriegshammer2 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki m³ot wojenny";			visual = "ItMw_065_1h_warhammer_03.3ds";		SetItMwAttributes (self, ITEM_AXE, 120,DAM_BLUNT, 120,ATR_STRENGTH, 60, 100, WEAPON_Default);			};
instance ItMw0_Kriegshammer2 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki m³ot wojenny";			visual = "ItMw_065_1h_warhammer_03.3ds";		SetItMwAttributes (self, ITEM_AXE, 120,DAM_BLUNT, 120,ATR_STRENGTH, 60, 100, WEAPON_Wornout);			};
instance ItMw2_Kriegshammer2 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki m³ot wojenny";			visual = "ItMw_065_1h_warhammer_03.3ds";		SetItMwAttributes (self, ITEM_AXE, 120,DAM_BLUNT, 120,ATR_STRENGTH, 60, 100, WEAPON_Sharpened);		};
instance ItMw3_Kriegshammer2 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki m³ot wojenny";			visual = "ItMw_065_1h_warhammer_03.3ds";		SetItMwAttributes (self, ITEM_AXE, 120,DAM_BLUNT, 120,ATR_STRENGTH, 60, 100, WEAPON_Forged);			};
instance ItMw4_Kriegshammer2 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki m³ot wojenny";			visual = "ItMw_065_1h_warhammer_03.3ds";		SetItMwAttributes (self, ITEM_AXE, 120,DAM_BLUNT, 120,ATR_STRENGTH, 60, 100, WEAPON_Perfect);			};

instance ItMw_Runenschwert2 (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz runiczny";		visual = "ItMw_1h_HeavySword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 120,ATR_STRENGTH, 95, 100, WEAPON_Default);			};
instance ItMw0_Runenschwert2 (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz runiczny";		visual = "ItMw_1h_HeavySword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 120,ATR_STRENGTH, 95, 100, WEAPON_Wornout);			};
instance ItMw2_Runenschwert2 (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz runiczny";		visual = "ItMw_1h_HeavySword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 120,ATR_STRENGTH, 95, 100, WEAPON_Sharpened);		};
instance ItMw3_Runenschwert2 (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz runiczny";		visual = "ItMw_1h_HeavySword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 120,ATR_STRENGTH, 95, 100, WEAPON_Forged);			};
instance ItMw4_Runenschwert2 (ItemPR_MeleeWeaponM)	{	name = "Szeroki miecz runiczny";		visual = "ItMw_1h_HeavySword_01.3ds";			SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 120,ATR_STRENGTH, 95, 100, WEAPON_Perfect);			};

instance ItMw_ElBastardo (ItemPR_MeleeWeaponM)		{	name = "El Bastardo";					visual = "ItMw_065_1h_sword_bastard_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_ElBastardo (ItemPR_MeleeWeaponM)		{	name = "El Bastardo";					visual = "ItMw_065_1h_sword_bastard_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_ElBastardo (ItemPR_MeleeWeaponM)		{	name = "El Bastardo";					visual = "ItMw_065_1h_sword_bastard_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_ElBastardo (ItemPR_MeleeWeaponM)		{	name = "El Bastardo";					visual = "ItMw_065_1h_sword_bastard_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_ElBastardo (ItemPR_MeleeWeaponM)		{	name = "El Bastardo";					visual = "ItMw_065_1h_sword_bastard_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Meisterdegen (ItemPR_MeleeWeaponM)	{	name = "Miecz mistrzowski";				visual = "ItMw_065_1h_SwordCane_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_DEXTERITY, 100, 100, WEAPON_Default);		};
instance ItMw0_Meisterdegen (ItemPR_MeleeWeaponM)	{	name = "Miecz mistrzowski";				visual = "ItMw_065_1h_SwordCane_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_DEXTERITY, 100, 100, WEAPON_Wornout);		};
instance ItMw2_Meisterdegen (ItemPR_MeleeWeaponM)	{	name = "Miecz mistrzowski";				visual = "ItMw_065_1h_SwordCane_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_DEXTERITY, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Meisterdegen (ItemPR_MeleeWeaponM)	{	name = "Miecz mistrzowski";				visual = "ItMw_065_1h_SwordCane_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_DEXTERITY, 100, 100, WEAPON_Forged);			};
instance ItMw4_Meisterdegen (ItemPR_MeleeWeaponM)	{	name = "Miecz mistrzowski";				visual = "ItMw_065_1h_SwordCane_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_DEXTERITY, 100, 100, WEAPON_Perfect);		};

///******************************************************************************************
instance ItMw_1h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz pó³torarêczny";		visual = "ItMw_060_1h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz pó³torarêczny";		visual = "ItMw_060_1h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz pó³torarêczny";		visual = "ItMw_060_1h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz pó³torarêczny";		visual = "ItMw_060_1h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Magiczny miecz pó³torarêczny";		visual = "ItMw_060_1h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_1h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz pó³torarêczny";		visual = "ItMw_1h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_FIRE, 90,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz pó³torarêczny";		visual = "ItMw_1h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_FIRE, 90,ATR_STRENGTH, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz pó³torarêczny";		visual = "ItMw_1h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_FIRE, 90,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);			};
instance ItMw3_1h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz pó³torarêczny";		visual = "ItMw_1h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_FIRE, 90,ATR_STRENGTH, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹cy miecz pó³torarêczny";		visual = "ItMw_1h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_SWD, 100,DAM_FIRE, 90,ATR_STRENGTH, 90, 100, WEAPON_Perfect);			};

instance ItMw_2h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki magiczny miecz dwurêczny";	visual = "ItMw_070_2h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 110, 100, WEAPON_Default);		};
instance ItMw0_2h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki magiczny miecz dwurêczny";	visual = "ItMw_070_2h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 110, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki magiczny miecz dwurêczny";	visual = "ItMw_070_2h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 110, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki magiczny miecz dwurêczny";	visual = "ItMw_070_2h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 110, 100, WEAPON_Forged);		};
instance ItMw4_2h_Special_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki magiczny miecz dwurêczny";	visual = "ItMw_070_2h_Sword_smith_03.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 110, 100, WEAPON_Perfect);		};

instance ItMw_2h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_FIRE, 110,ATR_STRENGTH, 110, 100, WEAPON_Default);		};
instance ItMw0_2h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_FIRE, 110,ATR_STRENGTH, 110, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_FIRE, 110,ATR_STRENGTH, 110, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_FIRE, 110,ATR_STRENGTH, 110, 100, WEAPON_Forged);		};
instance ItMw4_2h_Ignite_02 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki podpalaj¹cy miecz dwurêczny";	visual = "ItMw_2h_Ignite_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 120,DAM_FIRE, 110,ATR_STRENGTH, 110, 100, WEAPON_Perfect);		};

///******************************************************************************************
/// Chapter 4
///******************************************************************************************
instance ItMw_Folteraxt (ItemPR_MeleeWeaponM)		{	name = "Katowski topór";				visual = "ItMw_065_2h_greataxe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 80, 100, WEAPON_Default);			};
instance ItMw0_Folteraxt (ItemPR_MeleeWeaponM)		{	name = "Katowski topór";				visual = "ItMw_065_2h_greataxe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 80, 100, WEAPON_Wornout);			};
instance ItMw2_Folteraxt (ItemPR_MeleeWeaponM)		{	name = "Katowski topór";				visual = "ItMw_065_2h_greataxe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 80, 100, WEAPON_Sharpened);		};
instance ItMw3_Folteraxt (ItemPR_MeleeWeaponM)		{	name = "Katowski topór";				visual = "ItMw_065_2h_greataxe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 80, 100, WEAPON_Forged);			};
instance ItMw4_Folteraxt (ItemPR_MeleeWeaponM)		{	name = "Katowski topór";				visual = "ItMw_065_2h_greataxe_01.3ds";			SetItMwAttributes (self, ITEM_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 80, 100, WEAPON_Perfect);			};

instance ItMw_Krummsaebel (ItemPR_MeleeWeaponM)		{	name = "Srebrny bu³at dwurêczny";		visual = "ItMw_2h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_Krummsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at dwurêczny";		visual = "ItMw_2h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Krummsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at dwurêczny";		visual = "ItMw_2h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_Krummsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at dwurêczny";		visual = "ItMw_2h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_Krummsaebel (ItemPR_MeleeWeaponM)	{	name = "Srebrny bu³at dwurêczny";		visual = "ItMw_2h_Scimitar_01.3ds";				SetItMwAttributes (self, ITEM_2HD_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_Orkschlaechter (ItemPR_MeleeWeaponM)	{	name = "Orkowa Zguba";					visual = "ItMw_065_1h_sword_bastard_04.3ds";	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Orkschlaechter (ItemPR_MeleeWeaponM)	{	name = "Orkowa Zguba";					visual = "ItMw_065_1h_sword_bastard_04.3ds";	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Orkschlaechter (ItemPR_MeleeWeaponM)	{	name = "Orkowa Zguba";					visual = "ItMw_065_1h_sword_bastard_04.3ds";	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Orkschlaechter (ItemPR_MeleeWeaponM)	{	name = "Orkowa Zguba";					visual = "ItMw_065_1h_sword_bastard_04.3ds";	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Orkschlaechter (ItemPR_MeleeWeaponM)	{	name = "Orkowa Zguba";					visual = "ItMw_065_1h_sword_bastard_04.3ds";	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Ahnenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz przodków";				visual = "ItMw_2h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_Ahnenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz przodków";				visual = "ItMw_2h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_Ahnenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz przodków";				visual = "ItMw_2h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);	};
instance ItMw3_Ahnenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz przodków";				visual = "ItMw_2h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 120, 100, WEAPON_Forged);		};
instance ItMw4_Ahnenschwert (ItemPR_MeleeWeaponM)	{	name = "Miecz przodków";				visual = "ItMw_2h_Nordmarschwert.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

instance ItMw_Zweihaender4 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki miecz dwurêczny";		visual = "ItMw_068_2h_sword_02.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 135,DAM_EDGE, 135,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_Zweihaender4 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki miecz dwurêczny";		visual = "ItMw_068_2h_sword_02.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 135,DAM_EDGE, 135,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_Zweihaender4 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki miecz dwurêczny";		visual = "ItMw_068_2h_sword_02.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 135,DAM_EDGE, 135,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);	};
instance ItMw3_Zweihaender4 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki miecz dwurêczny";		visual = "ItMw_068_2h_sword_02.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 135,DAM_EDGE, 135,ATR_STRENGTH, 120, 100, WEAPON_Forged);		};
instance ItMw4_Zweihaender4 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿ki miecz dwurêczny";		visual = "ItMw_068_2h_sword_02.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 135,DAM_EDGE, 135,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

instance ItMw_Schlachtaxt (ItemPR_MeleeWeaponM)		{	name = "Topór wojenny";					visual = "ItMw_070_2h_axe_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 140,DAM_EDGE, 140,ATR_STRENGTH, 100, 100, WEAPON_Default);		};
instance ItMw0_Schlachtaxt (ItemPR_MeleeWeaponM)	{	name = "Topór wojenny";					visual = "ItMw_070_2h_axe_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 140,DAM_EDGE, 140,ATR_STRENGTH, 100, 100, WEAPON_Wornout);		};
instance ItMw2_Schlachtaxt (ItemPR_MeleeWeaponM)	{	name = "Topór wojenny";					visual = "ItMw_070_2h_axe_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 140,DAM_EDGE, 140,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);	};
instance ItMw3_Schlachtaxt (ItemPR_MeleeWeaponM)	{	name = "Topór wojenny";					visual = "ItMw_070_2h_axe_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 140,DAM_EDGE, 140,ATR_STRENGTH, 100, 100, WEAPON_Forged);		};
instance ItMw4_Schlachtaxt (ItemPR_MeleeWeaponM)	{	name = "Topór wojenny";					visual = "ItMw_070_2h_axe_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 140,DAM_EDGE, 140,ATR_STRENGTH, 100, 100, WEAPON_Perfect);		};

instance ItMw_Avalis (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz";				visual = "ItMw_1h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_SWD, 140,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Avalis (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz";				visual = "ItMw_1h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_SWD, 140,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Avalis (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz";				visual = "ItMw_1h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_SWD, 140,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Avalis (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz";				visual = "ItMw_1h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_SWD, 140,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Avalis (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz";				visual = "ItMw_1h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_SWD, 140,DAM_EDGE, 130,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Wargskralle (ItemPR_MeleeWeaponM)		{	name = "Szpon Warga";					visual = "ItMw_1h_WargClaw.3ds";				SetItMwAttributes (self, ITEM_SWD, 145,DAM_EDGE, 145,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_Wargskralle (ItemPR_MeleeWeaponM)	{	name = "Szpon Warga";					visual = "ItMw_1h_WargClaw.3ds";				SetItMwAttributes (self, ITEM_SWD, 145,DAM_EDGE, 145,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_Wargskralle (ItemPR_MeleeWeaponM)	{	name = "Szpon Warga";					visual = "ItMw_1h_WargClaw.3ds";				SetItMwAttributes (self, ITEM_SWD, 145,DAM_EDGE, 145,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_Wargskralle (ItemPR_MeleeWeaponM)	{	name = "Szpon Warga";					visual = "ItMw_1h_WargClaw.3ds";				SetItMwAttributes (self, ITEM_SWD, 145,DAM_EDGE, 145,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_Wargskralle (ItemPR_MeleeWeaponM)	{	name = "Szpon Warga";					visual = "ItMw_1h_WargClaw.3ds";				SetItMwAttributes (self, ITEM_SWD, 145,DAM_EDGE, 145,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_Barbarenstreitaxt (ItemPR_MeleeWeaponM)	{	name = "Barbarzyñski topór bojowy";	visual = "ItMw_075_2h_axe_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 150,DAM_EDGE, 150,ATR_STRENGTH, 90, 100, WEAPON_Default);		};
instance ItMw0_Barbarenstreitaxt (ItemPR_MeleeWeaponM)	{	name = "Barbarzyñski topór bojowy";	visual = "ItMw_075_2h_axe_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 150,DAM_EDGE, 150,ATR_STRENGTH, 90, 100, WEAPON_Wornout);		};
instance ItMw2_Barbarenstreitaxt (ItemPR_MeleeWeaponM)	{	name = "Barbarzyñski topór bojowy";	visual = "ItMw_075_2h_axe_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 150,DAM_EDGE, 150,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);	};
instance ItMw3_Barbarenstreitaxt (ItemPR_MeleeWeaponM)	{	name = "Barbarzyñski topór bojowy";	visual = "ItMw_075_2h_axe_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 150,DAM_EDGE, 150,ATR_STRENGTH, 90, 100, WEAPON_Forged);		};
instance ItMw4_Barbarenstreitaxt (ItemPR_MeleeWeaponM)	{	name = "Barbarzyñski topór bojowy";	visual = "ItMw_075_2h_axe_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 150,DAM_EDGE, 150,ATR_STRENGTH, 90, 100, WEAPON_Perfect);		};

instance ItMw_Krummschwert (ItemPR_MeleeWeaponM)	{	name = "Kordelas";						visual = "ItMw_070_2h_sword_09.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_Krummschwert (ItemPR_MeleeWeaponM)	{	name = "Kordelas";						visual = "ItMw_070_2h_sword_09.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_Krummschwert (ItemPR_MeleeWeaponM)	{	name = "Kordelas";						visual = "ItMw_070_2h_sword_09.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);	};
instance ItMw3_Krummschwert (ItemPR_MeleeWeaponM)	{	name = "Kordelas";						visual = "ItMw_070_2h_sword_09.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Forged);		};
instance ItMw4_Krummschwert (ItemPR_MeleeWeaponM)	{	name = "Kordelas";						visual = "ItMw_070_2h_sword_09.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

///******************************************************************************************
instance ItMw_1h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze bojowe";		visual = "ItMw_075_1h_sword_smith_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 120,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_1h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze bojowe";		visual = "ItMw_075_1h_sword_smith_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 120,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze bojowe";		visual = "ItMw_075_1h_sword_smith_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 120,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze bojowe";		visual = "ItMw_075_1h_sword_smith_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 120,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_1h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze bojowe";		visual = "ItMw_075_1h_sword_smith_04.3ds";		SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 120,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_1h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce ostrze bojowe";		visual = "ItMw_1h_Ignite_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 130,DAM_FIRE, 120,ATR_STRENGTH, 100, 100, WEAPON_Default);			};
instance ItMw0_1h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce ostrze bojowe";		visual = "ItMw_1h_Ignite_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 130,DAM_FIRE, 120,ATR_STRENGTH, 100, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce ostrze bojowe";		visual = "ItMw_1h_Ignite_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 130,DAM_FIRE, 120,ATR_STRENGTH, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce ostrze bojowe";		visual = "ItMw_1h_Ignite_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 130,DAM_FIRE, 120,ATR_STRENGTH, 100, 100, WEAPON_Forged);			};
instance ItMw4_1h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce ostrze bojowe";		visual = "ItMw_1h_Ignite_03.3ds";				SetItMwAttributes (self, ITEM_SWD, 130,DAM_FIRE, 120,ATR_STRENGTH, 100, 100, WEAPON_Perfect);			};

instance ItMw_2h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie magiczne ostrze bojowe";	visual = "ItMw_090_2h_sword_smith_04.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 140,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_2h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie magiczne ostrze bojowe";	visual = "ItMw_090_2h_sword_smith_04.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 140,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie magiczne ostrze bojowe";	visual = "ItMw_090_2h_sword_smith_04.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 140,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie magiczne ostrze bojowe";	visual = "ItMw_090_2h_sword_smith_04.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 140,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Special_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie magiczne ostrze bojowe";	visual = "ItMw_090_2h_sword_smith_04.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 140,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_2h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie podpalaj¹ce ostrze bojowe";	visual = "ItMw_2h_Ignite_03.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_FIRE, 140,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_2h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie podpalaj¹ce ostrze bojowe";	visual = "ItMw_2h_Ignite_03.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_FIRE, 140,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie podpalaj¹ce ostrze bojowe";	visual = "ItMw_2h_Ignite_03.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_FIRE, 140,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie podpalaj¹ce ostrze bojowe";	visual = "ItMw_2h_Ignite_03.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_FIRE, 140,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Ignite_03 (ItemPR_MeleeWeaponM)	{	name = "Ciê¿kie podpalaj¹ce ostrze bojowe";	visual = "ItMw_2h_Ignite_03.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_FIRE, 140,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

///******************************************************************************************
/// Chapter 5
///******************************************************************************************
instance ItMw_Sturmbringer (ItemPR_MeleeWeaponM)	{	name = "Ostrze Burzy";					visual = "ItMw_075_2h_sword_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 155,DAM_EDGE, 155,ATR_STRENGTH, 130, 100, WEAPON_Default);		};
instance ItMw0_Sturmbringer (ItemPR_MeleeWeaponM)	{	name = "Ostrze Burzy";					visual = "ItMw_075_2h_sword_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 155,DAM_EDGE, 155,ATR_STRENGTH, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Sturmbringer (ItemPR_MeleeWeaponM)	{	name = "Ostrze Burzy";					visual = "ItMw_075_2h_sword_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 155,DAM_EDGE, 155,ATR_STRENGTH, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_Sturmbringer (ItemPR_MeleeWeaponM)	{	name = "Ostrze Burzy";					visual = "ItMw_075_2h_sword_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 155,DAM_EDGE, 155,ATR_STRENGTH, 130, 100, WEAPON_Forged);		};
instance ItMw4_Sturmbringer (ItemPR_MeleeWeaponM)	{	name = "Ostrze Burzy";					visual = "ItMw_075_2h_sword_heavy_03.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 155,DAM_EDGE, 155,ATR_STRENGTH, 130, 100, WEAPON_Perfect);		};

instance ItMw_Avalon (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz dwurêczny";		visual = "ItMw_2h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 140, 100, WEAPON_Default);		};
instance ItMw0_Avalon (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz dwurêczny";		visual = "ItMw_2h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 140, 100, WEAPON_Wornout);		};
instance ItMw2_Avalon (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz dwurêczny";		visual = "ItMw_2h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 140, 100, WEAPON_Sharpened);	};
instance ItMw3_Avalon (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz dwurêczny";		visual = "ItMw_2h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 140, 100, WEAPON_Forged);		};
instance ItMw4_Avalon (ItemPR_MeleeWeaponM)			{	name = "Wspania³y miecz dwurêczny";		visual = "ItMw_2h_GreatSword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 140, 100, WEAPON_Perfect);		};

instance ItMw_Drachenschneide (ItemPR_MeleeWeaponM)	{	name = "Smocza Zguba";					visual = "ItMw_080_2h_sword_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 170,DAM_EDGE, 170,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_Drachenschneide (ItemPR_MeleeWeaponM){	name = "Smocza Zguba";					visual = "ItMw_080_2h_sword_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 170,DAM_EDGE, 170,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_Drachenschneide (ItemPR_MeleeWeaponM){	name = "Smocza Zguba";					visual = "ItMw_080_2h_sword_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 170,DAM_EDGE, 170,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);	};
instance ItMw3_Drachenschneide (ItemPR_MeleeWeaponM){	name = "Smocza Zguba";					visual = "ItMw_080_2h_sword_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 170,DAM_EDGE, 170,ATR_STRENGTH, 120, 100, WEAPON_Forged);		};
instance ItMw4_Drachenschneide (ItemPR_MeleeWeaponM){	name = "Smocza Zguba";					visual = "ItMw_080_2h_sword_heavy_04.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD, 170,DAM_EDGE, 170,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

instance ItMw_Berserkeraxt (ItemPR_MeleeWeaponM)	{	name = "Topór Berserkera";				visual = "ItMw_080_2h_axe_heavy_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 175,DAM_EDGE, 175,ATR_STRENGTH, 90, 100, WEAPON_Default);		};
instance ItMw0_Berserkeraxt (ItemPR_MeleeWeaponM)	{	name = "Topór Berserkera";				visual = "ItMw_080_2h_axe_heavy_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 175,DAM_EDGE, 175,ATR_STRENGTH, 90, 100, WEAPON_Wornout);		};
instance ItMw2_Berserkeraxt (ItemPR_MeleeWeaponM)	{	name = "Topór Berserkera";				visual = "ItMw_080_2h_axe_heavy_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 175,DAM_EDGE, 175,ATR_STRENGTH, 90, 100, WEAPON_Sharpened);	};
instance ItMw3_Berserkeraxt (ItemPR_MeleeWeaponM)	{	name = "Topór Berserkera";				visual = "ItMw_080_2h_axe_heavy_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 175,DAM_EDGE, 175,ATR_STRENGTH, 90, 100, WEAPON_Forged);		};
instance ItMw4_Berserkeraxt (ItemPR_MeleeWeaponM)	{	name = "Topór Berserkera";				visual = "ItMw_080_2h_axe_heavy_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 175,DAM_EDGE, 175,ATR_STRENGTH, 90, 100, WEAPON_Perfect);		};

instance ItMw_Seelenernter (ItemPR_MeleeWeaponM)	{	name = "¯niwiarz Dusz";					visual = "ItMw_2h_SoulHarvester.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 180,DAM_EDGE, 180,ATR_STRENGTH, 180, 100, WEAPON_Default);		};
instance ItMw0_Seelenernter (ItemPR_MeleeWeaponM)	{	name = "¯niwiarz Dusz";					visual = "ItMw_2h_SoulHarvester.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 180,DAM_EDGE, 180,ATR_STRENGTH, 180, 100, WEAPON_Wornout);		};
instance ItMw2_Seelenernter (ItemPR_MeleeWeaponM)	{	name = "¯niwiarz Dusz";					visual = "ItMw_2h_SoulHarvester.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 180,DAM_EDGE, 180,ATR_STRENGTH, 180, 100, WEAPON_Sharpened);	};
instance ItMw3_Seelenernter (ItemPR_MeleeWeaponM)	{	name = "¯niwiarz Dusz";					visual = "ItMw_2h_SoulHarvester.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 180,DAM_EDGE, 180,ATR_STRENGTH, 180, 100, WEAPON_Forged);		};
instance ItMw4_Seelenernter (ItemPR_MeleeWeaponM)	{	name = "¯niwiarz Dusz";					visual = "ItMw_2h_SoulHarvester.3ds";			SetItMwAttributes (self, ITEM_2HD_AXE, 180,DAM_EDGE, 180,ATR_STRENGTH, 180, 100, WEAPON_Perfect);		};

///******************************************************************************************
instance ItMw_1h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze na smoki";		visual = "ItMw_090_1h_sword_smith_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Default);			};
instance ItMw0_1h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze na smoki";		visual = "ItMw_090_1h_sword_smith_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze na smoki";		visual = "ItMw_090_1h_sword_smith_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze na smoki";		visual = "ItMw_090_1h_sword_smith_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Forged);			};
instance ItMw4_1h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Magiczne ostrze na smoki";		visual = "ItMw_090_1h_sword_smith_05.3ds";		SetItMwAttributes (self, ITEM_SWD, 160,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Perfect);			};

instance ItMw_1h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce smocze ostrze";		visual = "ItMw_1h_Ignite_04.3ds";				SetItMwAttributes (self, ITEM_SWD, 160,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Default);			};
instance ItMw0_1h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce smocze ostrze";		visual = "ItMw_1h_Ignite_04.3ds";				SetItMwAttributes (self, ITEM_SWD, 160,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce smocze ostrze";		visual = "ItMw_1h_Ignite_04.3ds";				SetItMwAttributes (self, ITEM_SWD, 160,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce smocze ostrze";		visual = "ItMw_1h_Ignite_04.3ds";				SetItMwAttributes (self, ITEM_SWD, 160,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Forged);			};
instance ItMw4_1h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Podpalaj¹ce smocze ostrze";		visual = "ItMw_1h_Ignite_04.3ds";				SetItMwAttributes (self, ITEM_SWD, 160,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Perfect);			};

instance ItMw_2h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e magiczne ostrze na smoki";		visual = "ItMw_110_2h_sword_smith_05.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Default);		};
instance ItMw0_2h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e magiczne ostrze na smoki";		visual = "ItMw_110_2h_sword_smith_05.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e magiczne ostrze na smoki";		visual = "ItMw_110_2h_sword_smith_05.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e magiczne ostrze na smoki";		visual = "ItMw_110_2h_sword_smith_05.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Forged);		};
instance ItMw4_2h_Special_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e magiczne ostrze na smoki";		visual = "ItMw_110_2h_sword_smith_05.3ds";	SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Perfect);		};

instance ItMw_2h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e podpalaj¹ce smocze ostrze";	visual = "ItMw_2h_Ignite_04.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Default);		};
instance ItMw0_2h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e podpalaj¹ce smocze ostrze";	visual = "ItMw_2h_Ignite_04.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Wornout);		};
instance ItMw2_2h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e podpalaj¹ce smocze ostrze";	visual = "ItMw_2h_Ignite_04.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e podpalaj¹ce smocze ostrze";	visual = "ItMw_2h_Ignite_04.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Forged);		};
instance ItMw4_2h_Ignite_04 (ItemPR_MeleeWeaponM)	{	name = "Du¿e podpalaj¹ce smocze ostrze";	visual = "ItMw_2h_Ignite_04.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Perfect);		};

///******************************************************************************************
/// Dragon hunter weapons
///******************************************************************************************
instance ItMw_1h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze magiczne";		visual = "ItMw_1h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_1h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze magiczne";		visual = "ItMw_1h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_1h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze magiczne";		visual = "ItMw_1h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze magiczne";		visual = "ItMw_1h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Forged);			};
instance ItMw4_1h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze magiczne";		visual = "ItMw_1h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_EDGE, 150,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

instance ItMw_1h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_1h_Ignite_05.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Default);		};
instance ItMw0_1h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_1h_Ignite_05.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Wornout);		};
instance ItMw2_1h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_1h_Ignite_05.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_1h_Ignite_05.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Forged);			};
instance ItMw4_1h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_1h_Ignite_05.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_FIRE, 150,ATR_STRENGTH, 120, 100, WEAPON_Perfect);		};

instance ItMw_2h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze magiczne";	visual = "ItMw_2h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Default);	};
instance ItMw0_2h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze magiczne";	visual = "ItMw_2h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze magiczne";	visual = "ItMw_2h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze magiczne";	visual = "ItMw_2h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Forged);		};
instance ItMw4_2h_Special_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze magiczne";	visual = "ItMw_2h_Sword_Sleeper_02.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_EDGE, 170,ATR_STRENGTH, 140, 100, WEAPON_Perfect);	};

instance ItMw_2h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_2h_Ignite_05.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Default);	};
instance ItMw0_2h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_2h_Ignite_05.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_2h_Ignite_05.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_2h_Ignite_05.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Forged);		};
instance ItMw4_2h_Ignite_05 (ItemPR_MeleeWeaponM)	{	name = "Du¿e potê¿ne ostrze podpalaj¹ce";	visual = "ItMw_2h_Ignite_05.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 200,DAM_FIRE, 170,ATR_STRENGTH, 140, 100, WEAPON_Perfect);	};

///******************************************************************************************
/// Mage weapons
///******************************************************************************************
instance ItMw_Stab_L_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kij bojowy maga";			visual = "ItMw_MageStaff_Normal_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 30,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_L_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kij bojowy maga";			visual = "ItMw_MageStaff_Normal_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 30,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_L_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kij bojowy maga";			visual = "ItMw_MageStaff_Normal_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 30,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_L_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kij bojowy maga";			visual = "ItMw_MageStaff_Normal_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 30,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_L_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kij bojowy maga";			visual = "ItMw_MageStaff_Normal_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 30,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_L_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 35,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_L_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 35,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_L_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 35,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_L_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 35,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_L_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 35,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_L_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 40,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_L_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 40,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_L_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 40,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_L_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 40,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_L_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kij bojowy maga";		visual = "ItMw_MageStaff_Normal_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 40,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_M_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 60,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_M_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 60,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_M_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 60,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_M_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 60,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_M_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 60,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_M_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_BLUNT, 65,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_M_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_BLUNT, 65,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_M_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_BLUNT, 65,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_M_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_BLUNT, 65,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_M_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_BLUNT, 65,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_M_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_BLUNT, 70,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_M_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_BLUNT, 70,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_M_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_BLUNT, 70,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_M_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_BLUNT, 70,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_M_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy maga";		visual = "ItMw_MageStaff_Good_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_BLUNT, 70,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_H_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 90,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_H_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 90,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_H_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 90,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_H_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 90,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_H_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 90,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_H_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 85,DAM_EDGE, 95,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_H_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 85,DAM_EDGE, 95,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_H_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 85,DAM_EDGE, 95,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_H_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 85,DAM_EDGE, 95,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_H_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 85,DAM_EDGE, 95,ATR_POWER, 130, 100, WEAPON_Perfect);			};

instance ItMw_Stab_H_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 90,DAM_EDGE, 100,ATR_POWER, 130, 100, WEAPON_Default);			};
instance ItMw0_Stab_H_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 90,DAM_EDGE, 100,ATR_POWER, 130, 100, WEAPON_Wornout);			};
instance ItMw2_Stab_H_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 90,DAM_EDGE, 100,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_H_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 90,DAM_EDGE, 100,ATR_POWER, 130, 100, WEAPON_Forged);			};
instance ItMw4_Stab_H_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur bojowy maga";		visual = "ItMw_MageStaff_Blades_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 90,DAM_EDGE, 100,ATR_POWER, 130, 100, WEAPON_Perfect);			};

///******************************************************************************************
instance ItMw_Stab_A_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 110,DAM_BLUNT, 120,ATR_POWER, 130, 100, WEAPON_Default);		};
instance ItMw0_Stab_A_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 110,DAM_BLUNT, 120,ATR_POWER, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Stab_A_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 110,DAM_BLUNT, 120,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_A_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 110,DAM_BLUNT, 120,ATR_POWER, 130, 100, WEAPON_Forged);		};
instance ItMw4_Stab_A_01 (ItemPR_MeleeWeaponW)		{	name = "Lekki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_01.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 110,DAM_BLUNT, 120,ATR_POWER, 130, 100, WEAPON_Perfect);		};

instance ItMw_Stab_A_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_BLUNT, 125,ATR_POWER, 130, 100, WEAPON_Default);		};
instance ItMw0_Stab_A_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_BLUNT, 125,ATR_POWER, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Stab_A_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_BLUNT, 125,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_A_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_BLUNT, 125,ATR_POWER, 130, 100, WEAPON_Forged);		};
instance ItMw4_Stab_A_02 (ItemPR_MeleeWeaponW)		{	name = "Œredni kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_02.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_BLUNT, 125,ATR_POWER, 130, 100, WEAPON_Perfect);		};

instance ItMw_Stab_A_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 120,DAM_BLUNT, 130,ATR_POWER, 130, 100, WEAPON_Default);		};
instance ItMw0_Stab_A_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 120,DAM_BLUNT, 130,ATR_POWER, 130, 100, WEAPON_Wornout);		};
instance ItMw2_Stab_A_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 120,DAM_BLUNT, 130,ATR_POWER, 130, 100, WEAPON_Sharpened);		};
instance ItMw3_Stab_A_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 120,DAM_BLUNT, 130,ATR_POWER, 130, 100, WEAPON_Forged);		};
instance ItMw4_Stab_A_03 (ItemPR_MeleeWeaponW)		{	name = "Ciê¿ki kostur mocy arcymaga";	visual = "ItMw_MageStaff_Great_2h_03.3ds";		SetItMwAttributes (self, ITEM_2HD_AXE, 120,DAM_BLUNT, 130,ATR_POWER, 130, 100, WEAPON_Perfect);		};

///******************************************************************************************
/// Paladin weapons
///******************************************************************************************
instance ItMw_1h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Default);		};
instance ItMw0_1h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Wornout);		};
instance ItMw2_1h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Forged);			};
instance ItMw4_1h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Perfect);		};

instance ItMw_2h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 120,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Default);	};
instance ItMw0_2h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 120,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 120,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 120,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Blessed_01 (ItemPR_MeleeWeaponM)	{	name = "Kiepskie ostrze magiczne";		visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 120,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Perfect);	};

instance ItMw_1h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "B³ogos³awione ostrze magiczne";	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 120,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Default);		};
instance ItMw0_1h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "B³ogos³awione ostrze magiczne";	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 120,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Wornout);		};
instance ItMw2_1h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "B³ogos³awione ostrze magiczne";	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 120,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "B³ogos³awione ostrze magiczne";	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 120,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Forged);			};
instance ItMw4_1h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "B³ogos³awione ostrze magiczne";	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 120,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Perfect);		};

instance ItMw_2h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "Miecz Zakonu";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 140,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Default);	};
instance ItMw0_2h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "Miecz Zakonu";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 140,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "Miecz Zakonu";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 140,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "Miecz Zakonu";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 140,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Blessed_02 (ItemPR_MeleeWeaponM)	{	name = "Miecz Zakonu";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 140,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Perfect);	};

instance ItMw_1h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Gniew";					visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 140,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Default);		};
instance ItMw0_1h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Gniew";					visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 140,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Wornout);		};
instance ItMw2_1h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Gniew";					visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 140,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Gniew";					visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 140,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Forged);			};
instance ItMw4_1h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Gniew";					visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3ds";	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 140,DAM_EDGE, 100,ATR_MANA_MAX, 100, 100, WEAPON_Perfect);		};

instance ItMw_2h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Kat";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 160,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Default);	};
instance ItMw0_2h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Kat";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 160,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Kat";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 160,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Kat";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 160,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Forged);		};
instance ItMw4_2h_Blessed_03 (ItemPR_MeleeWeaponM)	{	name = "Œwiêty Kat";					visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 160,DAM_EDGE, 120,ATR_MANA_MAX, 130, 100, WEAPON_Perfect);	};

///******************************************************************************************
instance ItMw_1h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_1h.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 160,DAM_EDGE, 100,ATR_MANA_MAX, 90, 100, WEAPON_Default);			};
instance ItMw0_1h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_1h.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 160,DAM_EDGE, 100,ATR_MANA_MAX, 90, 100, WEAPON_Wornout);			};
instance ItMw2_1h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_1h.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 160,DAM_EDGE, 100,ATR_MANA_MAX, 90, 100, WEAPON_Sharpened);		};
instance ItMw3_1h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_1h.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 160,DAM_EDGE, 100,ATR_MANA_MAX, 90, 100, WEAPON_Forged);			};
instance ItMw4_1h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_1h.3ds";				SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 160,DAM_EDGE, 100,ATR_MANA_MAX, 90, 100, WEAPON_Perfect);			};

instance ItMw_2h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_2h.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 180,DAM_EDGE, 120,ATR_MANA_MAX, 140, 100, WEAPON_Default);	};
instance ItMw0_2h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_2h.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 180,DAM_EDGE, 120,ATR_MANA_MAX, 140, 100, WEAPON_Wornout);	};
instance ItMw2_2h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_2h.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 180,DAM_EDGE, 120,ATR_MANA_MAX, 140, 100, WEAPON_Sharpened);	};
instance ItMw3_2h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_2h.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 180,DAM_EDGE, 120,ATR_MANA_MAX, 140, 100, WEAPON_Forged);		};
instance ItMw4_2h_Innos (ItemPR_MeleeWeaponM)		{	name = "Gniew Innosa";					visual = "ItMw_InnosWeapon_2h.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 180,DAM_EDGE, 120,ATR_MANA_MAX, 140, 100, WEAPON_Perfect);	};

///******************************************************************************************
/// Assassin weapons
///******************************************************************************************

///******************************************************************************************
/// Iron weapons
///******************************************************************************************
instance ItMw_Iron_Axe (ItemPR_MeleeWeaponM)		{	name = "¯elazny topór";					visual = "iron_axe.3ds";						SetItMwAttributes (self, ITEM_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 50, 100, WEAPON_Default);				};
instance ItMw_Iron_BroadSword (ItemPR_MeleeWeaponM)	{	name = "¯elazny szeroki miecz";			visual = "iron_broadsword.3ds";					SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 70, 100, WEAPON_Default);				};
instance ItMw_Iron_Claymore (ItemPR_MeleeWeaponM)	{	name = "¯elazny Claymore";				visual = "iron_claymore.3ds";					SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 110, 100, WEAPON_Default);		};
instance ItMw_Iron_Club (ItemPR_MeleeWeaponM)		{	name = "¯elazna bu³awa";				visual = "iron_club.3ds";						SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw_Iron_Dagger (ItemPR_MeleeWeaponM)		{	name = "¯elazny sztylet";				visual = "iron_dagger.3ds";						SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 55, 100, WEAPON_Default);				};
instance ItMw_Iron_HeavyClaymore (ItemPR_MeleeWeaponM)	{	name = "¯elazny ciê¿ki Claymore";	visual = "iron_heavyclaymore.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 115, 100, WEAPON_Default);		};
instance ItMw_Iron_LongSword (ItemPR_MeleeWeaponM)	{	name = "¯elazny d³ugi miecz";			visual = "iron_longsword.3ds";					SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 90, 100, WEAPON_Default);				};
instance ItMw_Iron_Mace (ItemPR_MeleeWeaponM)		{	name = "¯elazna pa³ka";					visual = "iron_mace.3ds";						SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 70, 100, WEAPON_Default);			};
instance ItMw_Iron_MasterSword (ItemPR_MeleeWeaponM){	name = "¯elazny mistrzowski miecz";		visual = "iron_mastersword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 95, 100, WEAPON_Default);			};
instance ItMw_Iron_ShortSword (ItemPR_MeleeWeaponM)	{	name = "¯elazny krótki miecz";			visual = "iron_shortsword.3ds";					SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 50, 100, WEAPON_Default);				};
instance ItMw_Iron_WarAxe (ItemPR_MeleeWeaponM)		{	name = "¯elazny topór wojenny";			visual = "iron_waraxe.3ds";						SetItMwAttributes (self, ITEM_2HD_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 90, 100, WEAPON_Default);			};
instance ItMw_Iron_WarHammer (ItemPR_MeleeWeaponM)	{	name = "¯elazny m³ot wojenny";			visual = "iron_warhammer.3ds";					SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 50, 100, WEAPON_Default);			};

///******************************************************************************************
/// Steel weapons
///******************************************************************************************
instance ItMw_Steel_Axe (ItemPR_MeleeWeaponM)		{	name =	"Stalowy topór";				visual = "Steel_axe.3ds";						SetItMwAttributes (self, ITEM_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 70, 100, WEAPON_Default);				};
instance ItMw_Steel_BroadSword (ItemPR_MeleeWeaponM){	name =	"Stalowy szeroki miecz";		visual = "Steel_broadsword.3ds";				SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_Claymore (ItemPR_MeleeWeaponM)	{	name =	"Stalowy Claymore";				visual = "Steel_claymore.3ds";					SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_Club (ItemPR_MeleeWeaponM)		{	name =	"Stalowa bu³awa";				visual = "Steel_club.3ds";						SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_Dagger (ItemPR_MeleeWeaponM)	{	name =	"Stalowy sztylet";				visual = "Steel_dagger.3ds";					SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_HeavyClaymore (ItemPR_MeleeWeaponM)	{	name =	"Stalowy ciê¿ki Claymore";	visual = "Steel_heavyclaymore.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);			};
instance ItMw_Steel_LongSword (ItemPR_MeleeWeaponM)	{	name =	"Stalowy d³ugi miecz";			visual = "Steel_longsword.3ds";					SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_Mace (ItemPR_MeleeWeaponM)		{	name = "Stalowa pa³ka";					visual = "Steel_mace.3ds";						SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_MasterSword (ItemPR_MeleeWeaponM)	{	name = "Stalowy mistrzowski miecz";	visual = "Steel_mastersword.3ds";				SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_ShortSword (ItemPR_MeleeWeaponM){	name = "Stalowy krótki miecz";			visual = "Steel_shortsword.3ds";				SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};
instance ItMw_Steel_WarAxe (ItemPR_MeleeWeaponM)	{	name = "Stalowy topór wojenny";			visual = "Steel_waraxe.3ds";					SetItMwAttributes (self, ITEM_2HD_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);			};
instance ItMw_Steel_WarHammer (ItemPR_MeleeWeaponM)	{	name = "Stalowy m³ot wojenny";			visual = "Steel_warhammer.3ds";					SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 0, 100, WEAPON_Default);				};

///******************************************************************************************
/// WzA weapons
///******************************************************************************************
instance ItMw_Broom (ItemPR_MeleeWeaponW)			{	name = "Miot³a";						visual = "ItMi_Broom.3ds";						SetItMwAttributes (self, ITEM_2HD_AXE, 10,DAM_BLUNT, 10,ATR_STRENGTH, 150, 10, WEAPON_Default);		};
instance ItMw_BusterSword (ItemPR_MeleeWeaponM)		{	name = "Ogromny tasak";					visual = "ItMw_2h_BusterSword.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 200,DAM_EDGE, 200,ATR_STRENGTH, 180, 100, WEAPON_Default);		};
instance ItMw_ChainSaw (ItemPR_MeleeWeaponM)		{	name = "Pi³a ³añcuchowa";				visual = "ItMw_1h_Chainsaw.3ds";				SetItMwAttributes (self, ITEM_SWD, 200,DAM_EDGE, 100,ATR_STRENGTH, 100, 100, WEAPON_Default);			};

instance ItMw_LightSaber (ItemPR_MeleeWeaponM)		{	name = "Miecz œwietlny";				visual = "ItMw_Lightsaber.3ds";					SetItMwAttributes (self, ITEM_SWD, 300,DAM_INVALID, 150,ATR_DEXTERITY, 0, 100, WEAPON_Default);		};
instance ItMw_LightSaber_Red (ItemPR_MeleeWeaponM)	{	name = "Miecz œwietlny";				visual = "ItMw_Lightsaber_Red.3ds";				SetItMwAttributes (self, ITEM_2HD_SWD, 300,DAM_EDGE, 150,ATR_DEXTERITY, 120, 100, WEAPON_Default);	};
instance ItMw_LightSaber_Green (ItemPR_MeleeWeaponM){	name = "Miecz œwietlny";				visual = "ItMw_Lightsaber_Green.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 300,DAM_EDGE, 150,ATR_DEXTERITY, 120, 100, WEAPON_Default);	};
instance ItMw_LightSaber_Blue (ItemPR_MeleeWeaponM)	{	name = "Miecz œwietlny";				visual = "ItMw_Lightsaber_Blue.3ds";			SetItMwAttributes (self, ITEM_2HD_SWD, 300,DAM_EDGE, 150,ATR_DEXTERITY, 120, 100, WEAPON_Default);	};

///******************************************************************************************
/// Mission weapons
///******************************************************************************************
instance ItMw_AlriksSword (ItemPR_MeleeWeaponM)		{	name = "Miecz Alrika";					visual = "ItMw_025_1h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 20, WEAPON_Default);		};
instance ItMw_2h_Rod (ItemPR_MeleeWeaponM)			{	name = "Miecz dwurêczny Roda";			visual = "ItMw_035_2h_sld_sword_01.3ds";		SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 20, WEAPON_Default);	};
instance Holy_Hammer_MIS (ItemPR_MeleeWeaponM)		{	name = "Œwiêty m³ot"; owner = Nov_608_Garwig; visual = "ItMw_030_2h_kdf_hammer_01.3ds";	SetItMwAttributes (self, ITEM_AXE|ITEM_MISSION, 50,DAM_BLUNT, 0,ATR_STRENGTH, 100, 0, WEAPON_Default);		};
instance ItMw_1h_FerrosSword (ItemPR_MeleeWeaponM)	{	name = "Miecz Ferosa";					visual = "ItMw_060_1h_Sword_smith_03.3ds";		SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 20, WEAPON_Default);		};
instance ItMw_Addon_Betty (ItemPR_MeleeWeaponM)		{	name = "Betty"; 						visual = "ItMw_065_1h_sword_bastard_03.3ds";	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 115,ATR_DEXTERITY, 100, 50, WEAPON_Default);					};

///******************************************************************************************
/// Beliar weapon
///******************************************************************************************
func void SetBeliarWeaponAttributes (var C_Item itm, var int kap)
{
	itm.material				=	MAT_METAL;
	itm.damagetype				=	DAM_EDGE;
	itm.effect					=	"SPELLFX_FIRESWORDBLACK";
	
	if (hero.hitchance[NPC_TALENT_1H] >= hero.hitchance[NPC_TALENT_2H])
	{
		itm.flags				=	ITEM_SWD|ITEM_MISSION;
		itm.visual				=	"ItMw_BeliarWeapon_1H.3ds";
		itm.range				=	100;
		itm.damageTotal			=	20+kap;
		itm.TEXT[4]				=	NAME_OneHanded;
	}
	else
	{
		itm.flags				=	ITEM_2HD_SWD|ITEM_MISSION;
		itm.visual				=	"ItMw_BeliarWeapon_2H.3ds";
		itm.range				=	120;
		itm.damageTotal			=	30+kap;
		itm.TEXT[4]				=	NAME_TwoHanded;
	};
	
	itm.cond_atr[2]				=	COND_LEVEL;
	itm.cond_value[2]			=	kap;
	
	itm.TEXT[0]					=	NAME_Lev_needed;
	itm.COUNT[0]				=	itm.cond_value[2];
	itm.TEXT[2]					=	NAME_Damage;
	itm.COUNT[2]				=	itm.damageTotal;
	itm.TEXT[3]					=	"Szansa na dodatkowe obra¿enia:";
	itm.COUNT[3]				=	(kap/2);
};

var int BeliarWeapon_LastUpgradeLvl;

instance ItMw_BeliarWeapon (C_Item)
{
	name						=	"Szpon Beliara";
	mainflag					=	ITEM_KAT_NF;
	
	description					=	name;
	SetBeliarWeaponAttributes (self, BeliarWeapon_LastUpgradeLvl);
};
instance ItMw_BeliarWeapon_Raven (ItemPR_MeleeWeaponM)
{
	name						=	"Szpon Beliara";
	visual						=	"ItMw_BeliarWeapon_2H.3ds";
	
	effect						=	"SPELLFX_FIRESWORDBLACK";
	cond_atr[2]					=	ATR_MANA_MAX;
	cond_value[2]				=	666666;
	
	TEXT[2]						=	"";
	TEXT[3]						=	"";
	TEXT[5]						=	"";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 50,DAM_BLUNT, 0,ATR_STRENGTH, 120, 0, WEAPON_Default);
};
