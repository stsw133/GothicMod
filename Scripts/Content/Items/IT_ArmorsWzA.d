///******************************************************************************************
/// Farmer armors
///******************************************************************************************
instance ITAR_ACRONA_BAU_00 (ItemPR_Armor)
{
	name						=	"Akroñski strój farmera";
	visual						=	"ItAr_Acrona_Bau_00.3ds";
	visual_change				=	"Armor_Acrona_Bau.asc";
	SetItArAttributes (self, 5,5,0,0,   0);	/// 1 level
};

instance ITAR_ACRONA_BAU_01 (ItemPR_Armor)
{
	name						=	"Akroñski strój farmera";
	visual						=	"ItAr_Acrona_Bau_01.3ds";
	visual_change				=	"Armor_Acrona_Bau.asc";
	SetItArAttributes (self, 5,5,0,0,   1);	/// 1 level
};

instance ITAR_ACRONA_WORKER (ItemPR_Armor)
{
	name						=	"Akroñski strój robotnika";
	visual						=	"ItAr_Acrona_Bau_02.3ds";
	visual_change				=	"Armor_Acrona_Bau.asc";
	SetItArAttributes (self, 5,5,0,0,   2);	/// 1 level
};

///******************************************************************************************
/// Pirate armors
///******************************************************************************************
instance ITAR_ACRONA_PIR_L (ItemPR_Armor)
{
	name						=	"Akroñskie ubranie pirata";
	visual						=	"ItAr_Acrona_PIR_L.3ds";
	visual_change				=	"Armor_Acrona_PIR_L.ASC";
	SetItArAttributes (self, 30,30,0,0,   0);	/// 6 level
};

instance ITAR_ACRONA_PIR_M (ItemPR_Armor)
{
	name						=	"Akroñska zbroja pirata";
	visual						=	"ItAr_Acrona_PIR_M.3ds";
	visual_change				=	"Armor_Acrona_PIR_M.asc";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_ACRONA_PIR_H (ItemPR_Armor)
{
	name						=	"Akroñskie ubranie kapitana";
	visual						=	"ItAr_Acrona_PIR_H.3ds";
	visual_change				=	"Armor_Acrona_PIR_H.asc";
	SetItArAttributes (self, 60,60,15,15,   0);	/// 15 level
};

///******************************************************************************************
/// Soldier armors
///******************************************************************************************
instance ITAR_ACRONA_SOLDIER_M (ItemPR_Armor)
{
	name						=	"Akroñski pancerz ¿o³nierza";
	visual						=	"ItAr_Acrona_Soldier.3ds";
	visual_change				=	"Armor_Acrona_Soldier.asc";
	SetItArAttributes (self, 60,60,15,15,   0);	/// 15 level
};

instance ITAR_ACRONA_SOLDIER_H (ItemPR_Armor)
{
	name						=	"Akroñski pancerz ¿o³nierza";
	visual						=	"ItAr_Acrona_Soldier.3DS";
	visual_change				=	"Armor_Acrona_Soldier.asc";
	SetItArAttributes (self, 90,90,30,30,   1);	/// 24 level
};

instance ITAR_ACRONA_KNIGHT (ItemPR_Armor)
{
	name						=	"Akroñski pancerz rycerza";
	visual						=	"ItAr_Acrona_Knight.3ds";
	visual_change				=	"Armor_Acrona_Knight.asc";
	SetItArAttributes (self, 120,120,60,60,   0);	/// 36 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
/// Templer armors
///******************************************************************************************
instance ITAR_ACRONA_TEMPLER_M (ItemPR_Armor)
{
	name						=	"Akroñski pancerz œwi¹tynny";
	visual						=	"ItAr_Acrona_Templer.3ds";
	visual_change				=	"Armor_Acrona_Templer.asc";
	SetItArAttributes (self, 60,60,15,15,   0);	/// 15 level
};

instance ITAR_ACRONA_TEMPLER_H (ItemPR_Armor)
{
	name						=	"Akroñski pancerz œwi¹tynny";
	visual						=	"ItAr_Acrona_Templer.3ds";
	visual_change				=	"Armor_Acrona_Templer.asc";
	SetItArAttributes (self, 90,90,30,30,   1);	/// 24 level
};

instance ITAR_ACRONA_MAGE (ItemPR_Armor)
{
	name						=	"Akroñska szata arcymaga";
	visual						=	"ItAr_Acrona_Mage.3ds";
	visual_change				=	"Armor_Acrona_Mage.asc";
	SetItArAttributes (self, 135,135,105,105,   0);	/// 48 level
};

///******************************************************************************************
/// Baron armors
///******************************************************************************************
instance ITAR_ACRONA_EBR_M (ItemPR_Armor)
{
	name						=	"Akroñski pancerz bojowy";
	visual						=	"ItAr_Acrona_EBR.3ds";
	visual_change				=	"ARMOR_ACRONA_EBR.asc";
	SetItArAttributes (self, 120,120,60,60,   0);	/// 36 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

instance ITAR_ACRONA_EBR_H (ItemPR_Armor)
{
	name						=	"Akroñska zbroja genera³a";
	visual						=	"ItAr_Acrona_EBR.3ds";
	visual_change				=	"ARMOR_ACRONA_EBR.asc";
	SetItArAttributes (self, 135,135,75,75,   1);	/// 48 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

instance ITAR_ACRONA_EBR_K (ItemPR_Armor)
{
	name						=	"Akroñska zbroja królewska";
	visual						=	"ItAr_Acrona_King.3ds";
	visual_change				=	"ARMOR_ACRONA_EBR.asc";
	SetItArAttributes (self, 150,150,90,90,   2);	/// 48 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
instance ITAR_ACRONA_LORD (ItemPR_Armor)
{
	name						=	"Akroñski pancerz szlachecki";
	visual						=	"ItAr_Acrona_EBR.3ds";
	visual_change				=	"ARMOR_ACRONA_LORD.asc";
	SetItArAttributes (self, 105,105,45,45,   0);	/// 30 level
};

instance ITAR_ACRONA_KING (ItemPR_Armor)
{
	name						=	"Akroñska zbroja królewska";
	visual						=	"ItAr_Acrona_King.3ds";
	visual_change				=	"ARMOR_ACRONA_KING.asc";
	SetItArAttributes (self, 150,150,100,100,   0);	/// 50 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
/// NewAge armors
///******************************************************************************************
instance ITAR_NA_JaJ (ItemPR_Armor)
{
	name						=	"Kurtka i d¿insy";
	visual						=	"ItAr_NewAge_00.3ds";
	visual_change				=	"Armor_NewAge.asc";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_NA_JP (ItemPR_Armor)
{
	name						=	"Strój dresiarza";
	visual						=	"ItAr_NewAge_01.3ds";
	visual_change				=	"Armor_NewAge.asc";
	SetItArAttributes (self, 50,50,10,10,   1);	/// 12 level
};

instance ITAR_NA_Vest (ItemPR_Armor)
{
	name						=	"Kamizelka";
	visual						=	"ItAr_NewAge_02.3ds";
	visual_change				=	"Armor_NewAge.asc";
	SetItArAttributes (self, 50,50,10,10,   2);	/// 12 level
};

instance ITAR_NA_SaT (ItemPR_Armor)
{
	name						=	"Garnitur z krawatem";
	visual						=	"ItAr_Agent.3ds";
	visual_change				=	"Armor_Agent.asc";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

///******************************************************************************************
/// Hero armors
///******************************************************************************************
instance ITAR_NA_SuperHero (ItemPR_Armor)
{
	name						=	"Zbroja Supermana";
	visual						=	"ItAr_SuperHero.3ds";
	visual_change				=	"Armor_SuperHero.asc";
	SetItArAttributes (self, 150,150,90,90,   0);	/// 48 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

instance ITAR_NA_IronHero (ItemPR_Armor)
{
	name						=	"Zbroja Ironmana";
	visual						=	"ItAr_IronHero.3ds";
	visual_change				=	"Armor_SuperHero.asc";
	SetItArAttributes (self, 150,150,90,90,   1);	/// 48 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
/// StarWars armors
///******************************************************************************************
instance ITAR_SW_Jedi_L (ItemPR_Armor)
{
	name						=	"Lekka szata Jedi";
	visual						=	"ItAr_SW_Jedi_L.3ds";
	visual_change				=	"ARMOR_SW_Jedi_L.asc";
	SetItArAttributes (self, 50,50,25,25,   0);	/// 15 level
};

instance ITAR_SW_Jedi_M (ItemPR_Armor)
{
	name						=	"Œrednia szata Jedi";
	visual						=	"ItAr_SW_Jedi_M.3ds";
	visual_change				=	"ARMOR_SW_Jedi_M.asc";
	SetItArAttributes (self, 80,80,40,40,   1);	/// 24 level
};

instance ITAR_SW_Jedi_H (ItemPR_Armor)
{
	name						=	"Ciê¿ka szata Jedi";
	visual						=	"ItAr_SW_Jedi_H.3ds";
	visual_change				=	"ARMOR_SW_Jedi_H.asc";
	SetItArAttributes (self, 105,105,75,75,   2);	/// 36 level
};

instance ITAR_SW_Sith (ItemPR_Armor)
{
	name						=	"Szata Sitha";
	visual						=	"ItAr_SW_Sith.3ds";
	visual_change				=	"ARMOR_SW_Sith.asc";
	SetItArAttributes (self, 105,105,75,75,   0);	/// 36 level
};

instance ITAR_SW_Vader (ItemPR_Armor)
{
	name						=	"Pancerz Vadera";
	visual						=	"ItAr_SW_Vader.3ds";
	visual_change				=	"ARMOR_SW_Vader.asc";
	SetItArAttributes (self, 120,120,60,60,   0);	/// 36 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
/// Chaos armors
///******************************************************************************************
instance ITAR_iChaos_Blue (ItemPR_Armor)
{
	name						=	"P³aszcz Setrona";
	visual						=	"ItAr_iChaos_Blue.3ds";
	visual_change				=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 150,150,100,100,   0);	/// 50 level
};

instance ITAR_aChaos_Blue (ItemPR_Armor)
{
	name						=	"P³aszcz Setrona";
	visual						=	"ItAr_aChaos_Blue.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   0);	/// 60 level
	
//	wear						=	WEAR_TORSO | WEAR_EFFECT;
//	effect						=	"SPELLFX_ACHAOS_BLUE";
};

instance ITAR_iChaos_Red (ItemPR_Armor)
{
	name						=	"P³aszcz Azerotha";
	visual						=	"ItAr_iChaos_Red.3ds";
	visual_change				=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 150,150,100,100,   1);	/// 50 level
};

instance ITAR_aChaos_Red (ItemPR_Armor)
{
	name						=	"P³aszcz Azerotha";
	visual						=	"ItAr_aChaos_Red.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   1);	/// 60 level
	
//	wear						=	WEAR_TORSO | WEAR_EFFECT;
//	effect						=	"SPELLFX_ACHAOS_RED";
};

instance ITAR_iChaos_Green (ItemPR_Armor)
{
	name						=	"P³aszcz Methiona";
	visual						=	"ItAr_iChaos_Green.3ds";
	visual_change				=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 150,150,100,100,   2);	/// 50 level
};

instance ITAR_aChaos_Green (ItemPR_Armor)
{
	name						=	"P³aszcz Methiona";
	visual						=	"ItAr_aChaos_Green.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   2);	/// 60 level
	
//	wear						=	WEAR_TORSO | WEAR_EFFECT;
//	effect						=	"SPELLFX_ACHAOS_GREEN";
};

instance ITAR_iChaos_Yellow (ItemPR_Armor)
{
	name						=	"P³aszcz Yataru";
	visual						=	"ItAr_iChaos_Yellow.3ds";
	visual_change				=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 150,150,100,100,   3);	/// 50 level
};

instance ITAR_aChaos_Yellow (ItemPR_Armor)
{
	name						=	"P³aszcz Yataru";
	visual						=	"ItAr_aChaos_Yellow.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   3);	/// 60 level
	
//	wear						=	WEAR_TORSO | WEAR_EFFECT;
//	effect						=	"SPELLFX_ACHAOS_YELLOW";
};

instance ITAR_iChaos_Magenta (ItemPR_Armor)
{
	name						=	"P³aszcz Urhzena";
	visual						=	"ItAr_iChaos_Magenta.3ds";
	visual_change				=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 150,150,100,100,   4);	/// 50 level
};

instance ITAR_aChaos_Magenta (ItemPR_Armor)
{
	name						=	"P³aszcz Urhzena";
	visual						=	"ItAr_aChaos_Magenta.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   4);	/// 60 level
	
//	wear						=	WEAR_TORSO | WEAR_EFFECT;
//	effect						=	"SPELLFX_ACHAOS_MAGENTA";
};

instance ITAR_iChaos_Cyan (ItemPR_Armor)
{
	name						=	"P³aszcz Ishana";
	visual						=	"ItAr_iChaos_Cyan.3ds";
	visual_change				=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 150,150,100,100,   5);	/// 50 level
};
instance ITAR_aChaos_Cyan (ItemPR_Armor)
{
	name						=	"P³aszcz Ishana";
	visual						=	"ItAr_aChaos_Cyan.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   5);	/// 60 level
	
//	wear						=	WEAR_TORSO | WEAR_EFFECT;
//	effect						=	"SPELLFX_ACHAOS_CYAN";
};
instance ITAR_aChaos_Pink (ItemPR_Armor)
{
	name						=	"P³aszcz Pedofilesa";
	visual						=	"ItAr_aChaos_Pink.3ds";
	visual_change				=	"Armor_Chaos.asc";
	SetItArAttributes (self, 150,150,150,150,   6);	/// 60 level
};

///******************************************************************************************
/// Polish armors
///******************************************************************************************
instance ITAR_Polish (ItemPR_Armor)
{
	name						=	"Polska zbroja";
	visual						=	"ItAr_PAL_H.3ds";
	visual_change				=	"Armor_PAL_H.asc";
	SetItArAttributes (self, 150,150,90,90,   5);	/// 48 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
/// Red bandit armors
///******************************************************************************************
instance ITAR_ORG_Red_P (ItemPR_Armor)
{
	name						=	"Spodnie czerwonego bandyty";
	visual						=	"ItAr_Prisoner_L.3ds";
	visual_change				=	"Armor_Prisoner_L.asc";
	SetItArAttributes (self, 3,3,0,0,   2);	/// 1 level
};

instance ITAR_ORG_Red_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz czerwonego bandyty";
	visual						=	"ItAr_BDT_M.3ds";
	visual_change				=	"Armor_ORG_L.asc";
	SetItArAttributes (self, 20,20,0,0,   1);	/// 4 level
};

instance ITAR_ORG_Red_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz czerwonego bandyty";
	visual						=	"ItAr_BDT_H.3ds";
	visual_change				=	"Armor_ORG_H.asc";
	SetItArAttributes (self, 35,35,5,5,   1);	/// 8 level
};

instance ITAR_ORG_Red_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz czerwonego bandyty";
	visual						=	"ItAr_SLD_L.3ds";
	visual_change				=	"Armor_SLD_L.asc";
	SetItArAttributes (self, 50,50,10,10,   1);	/// 12 level
};

///******************************************************************************************
/// Orc armors
///******************************************************************************************
instance ITAR_Orc_Soldier (ItemPR_Armor)
{
	name						=	"Orkowy pancerz ¿o³nierza";
	visual						=	"ItAr_SLD_L.3ds";
	visual_change				=	"Orc_Soldier_Body.asc";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_Orc_Dark (ItemPR_Armor)
{
	name						=	"Mroczny orkowy pancerz";
	visual						=	"ItAr_RVN_M.3ds";
	visual_change				=	"Orc_Dark_Body.asc";
	SetItArAttributes (self, 45,45,15,15,   0);	/// 12 level
};

instance ITAR_Orc_Warrior (ItemPR_Armor)
{
	name						=	"Orkowy pancerz wojownika";
	visual						=	"ItAr_SLD_M.3ds";
	visual_change				=	"Orc_Warrior_Body.asc";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};

instance ITAR_Orc_Guardian (ItemPR_Armor)
{
	name						=	"Orkowy pancerz stra¿nika";
	visual						=	"ItAr_MIL_M.3ds";
	visual_change				=	"Orc_Guardian_Body.asc";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};

instance ITAR_Orc_Shaman (ItemPR_Armor)
{
	name						=	"Orkowy pancerz szamana";
	visual						=	"ItAr_MAG_L.3ds";
	visual_change				=	"Orc_Shaman_Body.asc";
	SetItArAttributes (self, 60,60,30,30,   0);	/// 18 level
};

instance ITAR_Orc_Templer (ItemPR_Armor)
{
	name						=	"Orkowy pancerz stra¿y œwi¹tynnej";
	visual						=	"ItAr_SLT_M.3ds";
	visual_change				=	"Orc_Templer_Body.asc";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};

instance ITAR_Orc_Elite (ItemPR_Armor)
{
	name						=	"Elitarny orkowy pancerz";
	visual						=	"ItAr_ORW_M.3ds";
	visual_change				=	"Orc_Elite_Body.asc";
	SetItArAttributes (self, 120,120,60,60,   0);	/// 36 level
};

instance ITAR_Orc_Champion (ItemPR_Armor)
{
	name						=	"Mistrzowski orkowy pancerz";
	visual						=	"ItAr_ORW_H.3ds";
	visual_change				=	"Orc_Champion_Body.asc";
	SetItArAttributes (self, 150,150,90,90,   0);	/// 48 level
};

instance ITAR_Orc_King (ItemPR_Armor)
{
	name						=	"Królewski orkowy pancerz";
	visual						=	"ItAr_EBR_G.3ds";
	visual_change				=	"Orc_King_Body.asc";
	SetItArAttributes (self, 180,180,120,120,   0);	/// 60 level
};

///******************************************************************************************
instance ITAR_Orc_Paladin (ItemPR_Armor)
{
	name						=	"Orkowy pancerz paladyna";
	visual						=	"ItAr_PAL_H.3ds";
	visual_change				=	"Orc_Paladin_Body.asc";
	SetItArAttributes (self, 150,150,80,100,   0);	/// 48 level
};
