///******************************************************************************************

const int MUNTYPE_BOW			=	0;
const int MUNTYPE_CBOW			=	1;
const int MUNTYPE_GUN			=	2;
const int MUNTYPE_HGUN			=	3;

const int MUNTYPE_MAX			=	4;

var int SelectedMunition[MUNTYPE_MAX];

///******************************************************************************************
func void ChangeSelectedMunitionFlag (var int munType, var C_Item itm)
{
	if (Hlp_GetinstanceID(itm) == MEM_ReadStatArr(SelectedMunition, munType))
	{
		itm.flags = ITEM_MULTI|ITEM_ACTIVE;
	}
	else
	{
		itm.flags = ITEM_MULTI;
	};
};

func void RefreshMunitionInventory (var int munition)
{
	var int quantity; quantity = Npc_HasItems(self, munition);
	if (quantity > 0)
	{
		Npc_RemoveInvItems (self, munition, quantity);
		CreateInvItems (self, munition, quantity);
	};
};

///******************************************************************************************
/// Arrows
///******************************************************************************************
prototype ItemPR_Arrow (C_Item)
{
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_WOOD;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
	inv_rotx					=	60;
	inv_roty					=	-45;
	inv_rotz					=	-135;
};

///******************************************************************************************
instance ItRw_Arrow (ItemPR_Arrow)
{
	name						=	"Strza³a";
	value						=	5;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_Arrow;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_SharpArrow (ItemPR_Arrow)
{
	name						=	"Ostra strza³a";
	value						=	5;
	visual						=	"ItRw_SharpArrow.3ds";
	on_state[0]					=	Use_ItRw_SharpArrow;
	
	description					=	name;
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_HuntingArrow (ItemPR_Arrow)
{
	name						=	"Strza³a myœliwska";
	value						=	4;
	visual						=	"ItRw_HuntingArrow.3ds";
	on_state[0]					=	Use_ItRw_HuntingArrow;
	
	description					=	name;
	TEXT[1]						=	"Dodatkowe obra¿enia vs zwierzyna ³owna:";
	COUNT[1]					=	20;
	TEXT[2]						=	"Dodatkowe obra¿enia vs pozostali:";
	COUNT[2]					=	-20;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_QuartzArrow (ItemPR_Arrow)
{
	name						=	"Strza³a kwarcytowa";
	value						=	4;
	visual						=	"ItRw_QuartzArrow.3ds";
	on_state[0]					=	Use_ItRw_QuartzArrow;
	
	description					=	name;
	TEXT[1]						=	"Dodatkowe obra¿enia gdy cel < 100 ochrony:";
	COUNT[1]					=	20;
	TEXT[2]						=	"Dodatkowe obra¿enia gdy cel > 100 ochrony:";
	COUNT[2]					=	-20;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_BangArrow (ItemPR_Arrow)
{
	name						=	"Strza³a hukowa";
	value						=	7;
	visual						=	"ItRw_BangArrow.3ds";
	on_state[0]					=	Use_ItRw_BangArrow;
	
	description					=	name;
	TEXT[1]						=	"W miejscu trafienia tworzy huk";
	TEXT[2]						=	"odstraszaj¹cy zwierzêta i";
	TEXT[3]						=	"wabi¹cy ludzi i potwory.";
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_FireArrow (ItemPR_Arrow)
{
	name						=	"Ognista strza³a";
	value						=	7;
	visual						=	"ItRw_FireArrow.3ds";
	on_state[0]					=	Use_ItRw_FireArrow;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_PoisonArrow (ItemPR_Arrow)
{
	name						=	"Zatruta strza³a";
	value						=	7;
	visual						=	"ItRw_PoisonArrow.3ds";
	on_state[0]					=	Use_ItRw_PoisonArrow;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_ExplosiveArrow (ItemPR_Arrow)
{
	name						=	"Eksploduj¹ca strza³a";
	value						=	15;
	visual						=	"ItRw_ExplosiveArrow.3ds";
	on_state[0]					=	Use_ItRw_ExplosiveArrow;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_MagicArrow (ItemPR_Arrow)
{
	name						=	"Magiczna strza³a";
	value						=	15;
	visual						=	"ItRw_MagicArrow.3ds";
	on_state[0]					=	Use_ItRw_MagicArrow;
	
	description					=	name;
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

instance ItRw_DeadlyPoisonArrow (ItemPR_Arrow)
{
	name						=	"Silnie zatruta strza³a";
	value						=	15;
	visual						=	"ItRw_DeadlyPoisonArrow.3ds";
	on_state[0]					=	Use_ItRw_DeadlyPoisonArrow;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_BOW, self);
};

///******************************************************************************************
func int Npc_IsEquippedItem_Bow (var C_Npc slf)
{
	var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_Arrow)
	|| (itm.munition == ItRw_SharpArrow)
	|| (itm.munition == ItRw_HuntingArrow)
	|| (itm.munition == ItRw_QuartzArrow)
	|| (itm.munition == ItRw_BangArrow)
	|| (itm.munition == ItRw_FireArrow)
	|| (itm.munition == ItRw_PoisonArrow)
	|| (itm.munition == ItRw_ExplosiveArrow)
	|| (itm.munition == ItRw_MagicArrow)
	|| (itm.munition == ItRw_DeadlyPoisonArrow)
	{
		return true;
	};
	
	return false;
};

func void ARROW_CHECK()
{
	RefreshMunitionInventory(ItRw_Arrow);
	RefreshMunitionInventory(ItRw_SharpArrow);
	RefreshMunitionInventory(ItRw_HuntingArrow);
	RefreshMunitionInventory(ItRw_QuartzArrow);
	RefreshMunitionInventory(ItRw_BangArrow);
	RefreshMunitionInventory(ItRw_FireArrow);
	RefreshMunitionInventory(ItRw_PoisonArrow);
	RefreshMunitionInventory(ItRw_ExplosiveArrow);
	RefreshMunitionInventory(ItRw_MagicArrow);
	RefreshMunitionInventory(ItRw_DeadlyPoisonArrow);
	
	if (Npc_IsEquippedItem_Bow(self))
	{
		var C_Item itm; itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = SelectedMunition[MUNTYPE_BOW];
	};
};

func void SelectBowMunition(var int munition)
{
	if (Npc_IsEquippedItem_Bow(self))
	{
		SelectedMunition[MUNTYPE_BOW] = munition;
		ARROW_CHECK();
	};
};

func void Use_ItRw_Arrow()				{	SelectBowMunition(ItRw_Arrow);				};
func void Use_ItRw_SharpArrow()			{	SelectBowMunition(ItRw_SharpArrow);			};
func void Use_ItRw_HuntingArrow()		{	SelectBowMunition(ItRw_HuntingArrow);		};
func void Use_ItRw_QuartzArrow()		{	SelectBowMunition(ItRw_QuartzArrow);		};
func void Use_ItRw_BangArrow()			{	SelectBowMunition(ItRw_BangArrow);			};
func void Use_ItRw_FireArrow()			{	SelectBowMunition(ItRw_FireArrow);			};
func void Use_ItRw_PoisonArrow()		{	SelectBowMunition(ItRw_PoisonArrow);		};
func void Use_ItRw_ExplosiveArrow()		{	SelectBowMunition(ItRw_ExplosiveArrow);		};
func void Use_ItRw_MagicArrow()			{	SelectBowMunition(ItRw_MagicArrow);			};
func void Use_ItRw_DeadlyPoisonArrow()	{	SelectBowMunition(ItRw_DeadlyPoisonArrow);	};

///******************************************************************************************
/// Bolts
///******************************************************************************************
prototype ItemPR_Bolt (C_Item)
{
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_WOOD;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
instance ItRw_Bolt (ItemPR_Bolt)
{
	name						=	"Be³t";
	value						=	5;
	visual						=	"ItRw_Bolt.3ds";
	on_state[0]					=	Use_ItRw_Bolt;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_CBOW, self);
};

instance ItRw_SharpBolt (ItemPR_Bolt)
{
	name						=	"Ostry be³t";
	value						=	5;
	visual						=	"ItRw_SharpBolt.3ds";
	on_state[0]					=	Use_ItRw_SharpBolt;
	
	description					=	name;
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_CBOW, self);
};

instance ItRw_MagicBolt (ItemPR_Bolt)
{
	name						=	"Magiczny be³t";
	value						=	15;
	visual						=	"ItRw_MagicBolt.3ds";
	on_state[0]					=	Use_ItRw_MagicBolt;
	
	description					=	name;
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_CBOW, self);
};

///******************************************************************************************
func int Npc_IsEquippedItem_Crossbow (var C_Npc slf)
{
	var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_Bolt)
	|| (itm.munition == ItRw_SharpBolt)
	|| (itm.munition == ItRw_MagicBolt)
	{
		return true;
	};
	
	return false;
};

func void BOLT_CHECK()
{
	RefreshMunitionInventory(ItRw_Bolt);
	RefreshMunitionInventory(ItRw_SharpBolt);
	RefreshMunitionInventory(ItRw_MagicBolt);
	
	if (Npc_IsEquippedItem_Crossbow(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = SelectedMunition[MUNTYPE_CBOW];
	};
};

func void SelectCrossbowMunition(var int munition)
{
	if (Npc_IsEquippedItem_Crossbow(self))
	{
		SelectedMunition[MUNTYPE_CBOW] = munition;
		BOLT_CHECK();
	};
};

func void Use_ItRw_Bolt()		{	SelectCrossbowMunition(ItRw_Bolt);		};
func void Use_ItRw_SharpBolt()	{	SelectCrossbowMunition(ItRw_SharpBolt);	};
func void Use_ItRw_MagicBolt()	{	SelectCrossbowMunition(ItRw_MagicBolt);	};

///******************************************************************************************
/// Ammo
///******************************************************************************************
prototype ItemPR_Ammo (C_Item)
{
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_METAL;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
instance ItRw_Ammo (ItemPR_Ammo)
{
	name						=	"Nabój";
	value						=	5;
	visual						=	"ItRw_Ammo.3ds";
	on_state[0]					=	Use_ItRw_Ammo;
	
	description					=	name;
	COUNT[5]					=	value;
	ChangeSelectedMunitionFlag(MUNTYPE_GUN, self);
};

///******************************************************************************************
func int Npc_IsEquippedItem_Gun (var C_Npc slf)
{
	var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_Ammo)
	{
		return true;
	};
	
	return false;
};

func void AMMO_CHECK()
{
	RefreshMunitionInventory(ItRw_Ammo);
	
	if (Npc_IsEquippedItem_Gun(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = SelectedMunition[MUNTYPE_GUN];
	};
};

func void SelectGunMunition(var int munition)
{
	if (Npc_IsEquippedItem_Gun(self))
	{
		SelectedMunition[MUNTYPE_GUN] = munition;
		AMMO_CHECK();
	};
};

func void Use_ItRw_Ammo()	{	SelectGunMunition(ItRw_Ammo);	};

///******************************************************************************************
/// Heavy ammo
///******************************************************************************************
prototype ItemPR_HAmmo (C_Item)
{
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_METAL;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
instance ItRw_HAmmo (ItemPR_HAmmo)
{
	name						=	"Ciê¿ki pocisk";
	value						=	50;
	visual						=	"ItRw_HeavyAmmo.3ds";
	on_state[0]					=	Use_ItRw_HAmmo;
	
	description					=	name;
	ChangeSelectedMunitionFlag(MUNTYPE_HGUN, self);
};

instance ItRw_BAmmo (ItemPR_HAmmo)
{
	name						=	"Bio-pocisk";
	value						=	50;
	visual						=	"ItRw_BioAmmo.3ds";
	on_state[0]					=	Use_ItRw_BAmmo;
	effect						=	"SPELLFX_BIOAMMO";
	
	description					=	name;
	ChangeSelectedMunitionFlag(MUNTYPE_HGUN, self);
};

///******************************************************************************************
func int Npc_IsEquippedItem_HeavyGun (var C_Npc slf)
{
	var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_HAmmo)
	|| (itm.munition == ItRw_BAmmo)
	{
		return true;
	};
	
	return false;
};

func void HEAVYAMMO_CHECK()
{
	RefreshMunitionInventory(ItRw_HAmmo);
	RefreshMunitionInventory(ItRw_BAmmo);
	
	if (Npc_IsEquippedItem_HeavyGun(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = SelectedMunition[MUNTYPE_HGUN];
	};
};

func void SelectHeavyGunMunition(var int munition)
{
	if (Npc_IsEquippedItem_HeavyGun(self))
	{
		SelectedMunition[MUNTYPE_HGUN] = munition;
		HEAVYAMMO_CHECK();
	};
};

func void Use_ItRw_HAmmo()	{	SelectBowMunition(ItRw_HAmmo);	};
func void Use_ItRw_BAmmo()	{	SelectBowMunition(ItRw_BAmmo);	};

///******************************************************************************************
/// Ammo boxes
///******************************************************************************************
instance ItSe_AmmoBox_01 (C_Item)
{
	name						=	"Pud³o z amunicj¹";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	value						=	100;
	visual						=	"ItRw_AmmoBox_01.3ds";
	material					=	MAT_METAL;
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_AmmoBox_01;
	
	description					=	name;
	TEXT[2]						=	"W œrodku jest 24 nabojów.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};
func void Use_AmmoBox_01()
{
	var int items; items = Npc_HasItems(self, ItSe_AmmoBox_01);
	Npc_RemoveInvItems (self, ItSe_AmmoBox_01, items);
	B_PlayerFindItem (ItRw_Ammo, items*24 + 24);
};

instance ItSe_AmmoBox_02 (C_Item)
{
	name						=	"Pud³o z amunicj¹";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	value						=	150;
	visual						=	"ItRw_AmmoBox_02.3ds";
	material					=	MAT_METAL;
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_AmmoBox_02;
	
	description					=	name;
	TEXT[2]						=	"W œrodku jest 36 nabojów.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};
func void Use_AmmoBox_02()
{
	var int items; items = Npc_HasItems(self, ItSe_AmmoBox_02);
	Npc_RemoveInvItems (self, ItSe_AmmoBox_02, items);
	B_PlayerFindItem (ItRw_Ammo, items*36 + 36);
};

instance ItSe_AmmoBox_03 (C_Item)
{
	name						=	"Pud³o z amunicj¹";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	value						=	200;
	visual						=	"ItRw_AmmoBox_03.3ds";
	material					=	MAT_METAL;
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_AmmoBox_03;
	
	description					=	name;
	TEXT[2]						=	"W œrodku jest 48 nabojów.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};
func void Use_AmmoBox_03()
{
	var int items; items = Npc_HasItems(self, ItSe_AmmoBox_03);
	Npc_RemoveInvItems (self, ItSe_AmmoBox_03, items);
	B_PlayerFindItem (ItRw_Ammo, items*48 + 48);
};
