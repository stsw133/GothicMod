///******************************************************************************************

var int muntype_bow;
var int muntype_cbow;
var int muntype_gun;
var int muntype_hgun;

///******************************************************************************************
prototype ItemPR_Arrow (C_Item)
{
	name						=	"Strza³a";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_WOOD;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

prototype ItemPR_Bolt (C_Item)
{
	name						=	"Be³t";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_WOOD;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

prototype ItemPR_Ammo (C_Item)
{
	name						=	"Nabój";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_METAL;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

prototype ItemPR_HAmmo (C_Item)
{
	name						=	"Pocisk";
	mainflag					=	ITEM_KAT_MUN;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_METAL;
	scemename					=	"FASTUSE";
	
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
func void SetItRwAttributes_Arrow (var C_Item itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_bow)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
func void SetItRwAttributes_Bolt (var C_Item itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_cbow)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
func void SetItRwAttributes_Ammo (var C_Item itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_gun)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
func void SetItRwAttributes_HAmmo (var C_Item itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_hgun)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};

///******************************************************************************************
/// Arrows
///******************************************************************************************
instance ItRw_Arrow (ItemPR_Arrow)
{
	value						=	5;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_Arrow;
	
	description					=	name;
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_SharpArrow (ItemPR_Arrow)
{
	value						=	5;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_SharpArrow;
	
	description					=	"Ostra strza³a";
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_HuntingArrow (ItemPR_Arrow)
{
	name						=	"Strza³a myœliwska";
	value						=	4;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_HuntingArrow;
	
	description					=	name;
	TEXT[1]						=	"Dodatkowe obra¿enia vs zwierzyna ³owna:";
	COUNT[1]					=	20;
	TEXT[2]						=	"Dodatkowe obra¿enia vs pozostali:";
	COUNT[2]					=	-20;
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_QuartzArrow (ItemPR_Arrow)
{
	name						=	"Strza³a kwarcytowa";
	value						=	4;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_QuartzArrow;
	
	description					=	name;
	TEXT[1]						=	"Dodatkowe obra¿enia gdy cel < 100 ochrony:";
	COUNT[1]					=	20;
	TEXT[2]						=	"Dodatkowe obra¿enia gdy cel > 100 ochrony:";
	COUNT[2]					=	-20;
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_BangArrow (ItemPR_Arrow)
{
	name						=	"Strza³a hukowa";
	value						=	7;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_BangArrow;
	
	description					=	name;
	TEXT[1]						=	"W miejscu trafienia tworzy huk";
	TEXT[2]						=	"odstraszaj¹cy zwierzêta i";
	TEXT[3]						=	"wabi¹cy ludzi i potwory.";
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_FireArrow (ItemPR_Arrow)
{
	value						=	7;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_FireArrow;
	effect						=	"spellfx_firesword";
	
	description					=	"Ognista strza³a";
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_PoisonArrow (ItemPR_Arrow)
{
	value						=	7;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_PoisonArrow;
	
	description					=	"Zatruta strza³a";
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_ExplosiveArrow (ItemPR_Arrow)
{
	value						=	15;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_ExplosiveArrow;
	
	description					=	"Eksploduj¹ca strza³a";
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
};

instance ItRw_MagicArrow (ItemPR_Arrow)
{
	value						=	15;
	visual						=	"ItRw_Arrow.3ds";
	on_state[0]					=	Use_ItRw_MagicArrow;
	effect						=	"SPELLFX_ARROW";
	
	description					=	"Magiczna strza³a";
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
	SetItRwAttributes_Arrow(self);
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
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func void ARROW_CHECK()
{
	var int Quantity;
	
	/// normal
	Quantity = Npc_HasItems(self, ItRw_Arrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_Arrow, Quantity);
		CreateInvItems (self, ItRw_Arrow, Quantity);
	};
	/// sharpened
	Quantity = Npc_HasItems(self, ItRw_SharpArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_SharpArrow, Quantity);
		CreateInvItems (self, ItRw_SharpArrow, Quantity);
	};
	/// hunting
	Quantity = Npc_HasItems(self, ItRw_HuntingArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_HuntingArrow, Quantity);
		CreateInvItems (self, ItRw_HuntingArrow, Quantity);
	};
	/// quartz
	Quantity = Npc_HasItems(self, ItRw_QuartzArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_QuartzArrow, Quantity);
		CreateInvItems (self, ItRw_QuartzArrow, Quantity);
	};
	/// bang
	Quantity = Npc_HasItems(self, ItRw_BangArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_BangArrow, Quantity);
		CreateInvItems (self, ItRw_BangArrow, Quantity);
	};
	/// fire
	Quantity = Npc_HasItems(self, ItRw_FireArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_FireArrow, Quantity);
		CreateInvItems (self, ItRw_FireArrow, Quantity);
	};
	/// poison
	Quantity = Npc_HasItems(self, ItRw_PoisonArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_PoisonArrow, Quantity);
		CreateInvItems (self, ItRw_PoisonArrow, Quantity);
	};
	/// explosive
	Quantity = Npc_HasItems(self, ItRw_ExplosiveArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_ExplosiveArrow, Quantity);
		CreateInvItems (self, ItRw_ExplosiveArrow, Quantity);
	};
	/// magic
	Quantity = Npc_HasItems(self, ItRw_MagicArrow);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_MagicArrow, Quantity);
		CreateInvItems (self, ItRw_MagicArrow, Quantity);
	};
	
	if (Npc_IsEquippedItem_Bow(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_bow;
	};
};

///******************************************************************************************
func void Use_ItRw_Arrow()			{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_Arrow; ARROW_CHECK(); };				};
func void Use_ItRw_SharpArrow()		{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_SharpArrow; ARROW_CHECK(); };		};
func void Use_ItRw_HuntingArrow()	{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_HuntingArrow; ARROW_CHECK(); };		};
func void Use_ItRw_QuartzArrow()	{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_QuartzArrow; ARROW_CHECK(); };		};
func void Use_ItRw_BangArrow()		{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_BangArrow; ARROW_CHECK(); };			};
func void Use_ItRw_FireArrow()		{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_FireArrow; ARROW_CHECK(); };			};
func void Use_ItRw_PoisonArrow()	{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_PoisonArrow; ARROW_CHECK(); };		};
func void Use_ItRw_ExplosiveArrow()	{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_ExplosiveArrow; ARROW_CHECK(); };	};
func void Use_ItRw_MagicArrow()		{	if (Npc_IsEquippedItem_Bow(self)) { muntype_bow = ItRw_MagicArrow; ARROW_CHECK(); };		};

///******************************************************************************************
/// Bolts
///******************************************************************************************
instance ItRw_Bolt (ItemPR_Bolt)
{
	value						=	5;
	visual						=	"ItRw_Bolt.3ds";
	on_state[0]					=	Use_ItRw_Bolt;
	
	description					=	name;
	COUNT[5]					=	value;
	SetItRwAttributes_Bolt(self);
};

instance ItRw_SharpBolt (ItemPR_Bolt)
{
	value						=	5;
	visual						=	"ItRw_Bolt.3ds";
	on_state[0]					=	Use_ItRw_SharpBolt;
	
	description					=	"Ostry be³t";
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
	SetItRwAttributes_Bolt(self);
};

instance ItRw_MagicBolt (ItemPR_Bolt)
{
	value						=	15;
	visual						=	"ItRw_Bolt.3ds";
	on_state[0]					=	Use_ItRw_MagicBolt;
	
	description					=	"Magiczny be³t";
	TEXT[1]						=	NAME_Dam_Point;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
	SetItRwAttributes_Bolt(self);
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

///******************************************************************************************
func void BOLT_CHECK()
{
	var int Quantity;
	
	/// normal
	Quantity = Npc_HasItems(self, ItRw_Bolt);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_Bolt, Quantity);
		CreateInvItems (self, ItRw_Bolt, Quantity);
	};
	/// sharpened
	Quantity = Npc_HasItems(self, ItRw_SharpBolt);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_SharpBolt, Quantity);
		CreateInvItems (self, ItRw_SharpBolt, Quantity);
	};
	/// magic
	Quantity = Npc_HasItems(self, ItRw_MagicBolt);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_MagicBolt, Quantity);
		CreateInvItems (self, ItRw_MagicBolt, Quantity);
	};
	
	if (Npc_IsEquippedItem_Crossbow(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_cbow;
	};
};

///******************************************************************************************
func void Use_ItRw_Bolt()			{	if (Npc_IsEquippedItem_Crossbow(self)) { muntype_cbow = ItRw_Bolt; BOLT_CHECK(); };			};
func void Use_ItRw_SharpBolt()		{	if (Npc_IsEquippedItem_Crossbow(self)) { muntype_cbow = ItRw_SharpBolt; BOLT_CHECK(); };	};
func void Use_ItRw_MagicBolt()		{	if (Npc_IsEquippedItem_Crossbow(self)) { muntype_cbow = ItRw_MagicBolt; BOLT_CHECK(); };	};

///******************************************************************************************
/// Ammo
///******************************************************************************************
instance ItRw_Ammo (ItemPR_Ammo)
{
	value						=	5;
	visual						=	"ItRw_Ammo.3ds";
	on_state[0]					=	Use_ItRw_Ammo;
	
	description					=	name;
	COUNT[5]					=	value;
	SetItRwAttributes_Ammo(self);
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

///******************************************************************************************
func void AMMO_CHECK()
{
	var int Quantity;
	
	/// normal
	Quantity = Npc_HasItems(self, ItRw_Ammo);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_Ammo, Quantity);
		CreateInvItems (self, ItRw_Ammo, Quantity);
	};
	
	if (Npc_IsEquippedItem_Gun(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_gun;
	};
};

///******************************************************************************************
func void Use_ItRw_Ammo()			{	if (Npc_IsEquippedItem_Gun(self)) { muntype_gun = ItRw_Ammo; AMMO_CHECK(); };				};

///******************************************************************************************
/// Heavy ammo
///******************************************************************************************
instance ItRw_HAmmo (ItemPR_HAmmo)
{
	value						=	50;
	visual						=	"ItRw_HeavyAmmo.3ds";
	on_state[0]					=	Use_ItRw_HAmmo;
	
	description					=	"Ciê¿ki pocisk";
	SetItRwAttributes_HAmmo(self);
};

instance ItRw_BAmmo (ItemPR_HAmmo)
{
	value						=	50;
	visual						=	"ItRw_BioAmmo.3ds";
	on_state[0]					=	Use_ItRw_BAmmo;
	effect						=	"SPELLFX_BIOAMMO";
	
	description					=	"Bio-pocisk";
	SetItRwAttributes_HAmmo(self);
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

///******************************************************************************************
func void HEAVYAMMO_CHECK()
{
	var int Quantity;
	
	/// normal
	Quantity = Npc_HasItems(self, ItRw_HAmmo);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_HAmmo, Quantity);
		CreateInvItems (self, ItRw_HAmmo, Quantity);
	};
	/// bio
	Quantity = Npc_HasItems(self, ItRw_BAmmo);
	if (Quantity > 0)
	{
		Npc_RemoveInvItems (self, ItRw_BAmmo, Quantity);
		CreateInvItems (self, ItRw_BAmmo, Quantity);
	};
	
	if (Npc_IsEquippedItem_HeavyGun(self))
	{
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_hgun;
	};
};

///******************************************************************************************
func void Use_ItRw_HAmmo()			{	if (Npc_IsEquippedItem_HeavyGun(self)) { muntype_hgun = ItRw_HAmmo; HEAVYAMMO_CHECK(); };	};
func void Use_ItRw_BAmmo()			{	if (Npc_IsEquippedItem_HeavyGun(self)) { muntype_hgun = ItRw_BAmmo; HEAVYAMMO_CHECK(); };	};

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
	TEXT[2]						=	"W œrodku znajduj¹ siê 24 naboje.";
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
	TEXT[2]						=	"W œrodku znajduj¹ siê 36 naboje.";
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
	
	description					=	"Pud³o z ciê¿k¹ amunicj¹";
	TEXT[2]						=	"W œrodku znajduje siê 48 pocisków.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};
func void Use_AmmoBox_03()
{
	var int items; items = Npc_HasItems(self, ItSe_AmmoBox_03);
	Npc_RemoveInvItems (self, ItSe_AmmoBox_03, items);
	B_PlayerFindItem (ItRw_Ammo, items*48 + 48);
};
