///******************************************************************************************

var int muntype_bow;
var int muntype_cbow;
var int muntype_gun;
var int muntype_hgun;

///******************************************************************************************
prototype ItemPR_Arrow (C_Item)
{
	name 					=	"Strza³a";
	mainflag 				=	ITEM_KAT_MUN;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_WOOD;
	scemename				=	"FASTUSE";
	
	TEXT[5]					=	NAME_Value;
};
prototype ItemPR_Bolt (C_Item)
{
	name 					=	"Be³t";
	mainflag 				=	ITEM_KAT_MUN;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_WOOD;
	scemename				=	"FASTUSE";
	
	TEXT[5]					=	NAME_Value;
};
prototype ItemPR_Ammo (C_Item)
{
	name 					=	"Nabój";
	mainflag 				=	ITEM_KAT_MUN;
	flags					=	ITEM_MULTI;
	
	material 				=	MAT_METAL;
	scemename				=	"FASTUSE";
	
	TEXT[5]					=	NAME_Value;
};
prototype ItemPR_HAmmo (C_Item)
{
	name 					=	"Pocisk";
	mainflag 				=	ITEM_KAT_MUN;
	flags					=	ITEM_MULTI;
	
	material 				=	MAT_METAL;
	scemename				=	"FASTUSE";
	
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
func void SetItRwAttributes_Arrow (var C_ITEM itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_bow)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
func void SetItRwAttributes_Bolt (var C_ITEM itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_cbow)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
func void SetItRwAttributes_Ammo (var C_ITEM itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_gun)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
func void SetItRwAttributes_HAmmo (var C_ITEM itm)
{
	if (Hlp_GetinstanceID(itm) != muntype_hgun)	{	itm.flags = ITEM_MULTI;				}
	else										{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
};
///******************************************************************************************
///	Arrows
///******************************************************************************************
instance ItRw_Arrow (ItemPR_Arrow)
{
	value 					=	2;
	visual 					=	"ItRw_Arrow.3ds";
	on_state[0]				=	Use_ItRw_Arrow;
	
	description				=	name;
	COUNT[5]				=	value;
	SetItRwAttributes_Arrow(self);
};
instance ItRw_sArrow (ItemPR_Arrow)
{
	value 					=	3;
	visual 					=	"ItRw_Arrow.3ds";
	on_state[0]				=	Use_ItRw_sArrow;
	
	description				=	"Ostra strza³a";
	TEXT[1]					=	NAME_Damage;
	COUNT[1]				=	20;
	COUNT[5]				=	value;
	SetItRwAttributes_Arrow(self);
};
instance ItRw_fArrow (ItemPR_Arrow)
{
	value 					=	4;
	visual 					=	"ItRw_Arrow.3ds";
	on_state[0]				=	Use_ItRw_fArrow;
	effect					=	"spellfx_firesword";
	
	description				=	"Ognista strza³a";
	COUNT[5]				=	value;
	SetItRwAttributes_Arrow(self);
};
instance ItRw_pArrow (ItemPR_Arrow)
{
	value 					=	4;
	visual 					=	"ItRw_Arrow.3ds";
	on_state[0]				=	Use_ItRw_pArrow;
	
	description				=	"Zatruta strza³a";
	COUNT[5]				=	value;
	SetItRwAttributes_Arrow(self);
};
///******************************************************************************************
func int Npc_IsEquippedItem_Bow (var C_NPC slf)
{
	var c_item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_Arrow)
	|| (itm.munition == ItRw_sArrow)
	|| (itm.munition == ItRw_fArrow)
	|| (itm.munition == ItRw_pArrow)
	{
		return true;
	};
	return false;
};
///******************************************************************************************
func void ARROW_CHECK()
{
	var int Arrows;
	
	Arrows = Npc_HasItems(self, ItRw_Arrow);
	if (Arrows > 0)
	{
		Npc_RemoveInvItems (self, ItRw_Arrow, Arrows);
		CreateInvItems (self, ItRw_Arrow, Arrows);
	};
	Arrows = Npc_HasItems(self, ItRw_sArrow);
	if (Arrows > 0)
	{
		Npc_RemoveInvItems (self, ItRw_sArrow, Arrows);
		CreateInvItems (self, ItRw_sArrow, Arrows);
	};
	Arrows = Npc_HasItems(self, ItRw_fArrow);
	if (Arrows > 0)
	{
		Npc_RemoveInvItems (self, ItRw_fArrow, Arrows);
		CreateInvItems (self, ItRw_fArrow, Arrows);
	};
	Arrows = Npc_HasItems(self, ItRw_pArrow);
	if (Arrows > 0)
	{
		Npc_RemoveInvItems (self, ItRw_pArrow, Arrows);
		CreateInvItems (self, ItRw_pArrow, Arrows);
	};
	
	if (Npc_IsEquippedItem_Bow(self))
	{
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_bow;
	};
};
///******************************************************************************************
func void Use_ItRw_Arrow()
{
	if (Npc_IsEquippedItem_Bow(self))
	{
		muntype_bow = ItRw_Arrow;
		self.damage[DAM_INDEX_POINT] = 0;
		ARROW_CHECK();
	};
};
func void Use_ItRw_sArrow()
{
	if (Npc_IsEquippedItem_Bow(self))
	{
		muntype_bow = ItRw_sArrow;
		self.damage[DAM_INDEX_POINT] = 20;
		ARROW_CHECK();
	};
};
func void Use_ItRw_fArrow()
{
	if (Npc_IsEquippedItem_Bow(self))
	{
		muntype_bow = ItRw_fArrow;
		self.damage[DAM_INDEX_POINT] = 0;
		ARROW_CHECK();
	};
};
func void Use_ItRw_pArrow()
{
	if (Npc_IsEquippedItem_Bow(self))
	{
		muntype_bow = ItRw_pArrow;
		self.damage[DAM_INDEX_POINT] = 0;
		ARROW_CHECK();
	};
};
///******************************************************************************************
///	Bolts
///******************************************************************************************
instance ItRw_Bolt (ItemPR_Bolt)
{
	value 					=	2;
	visual 					=	"ItRw_Bolt.3ds";
	on_state[0]				=	Use_ItRw_Bolt;
	
	description				=	name;
	COUNT[5]				=	value;
	SetItRwAttributes_Bolt(self);
};
instance ItRw_sBolt (ItemPR_Bolt)
{
	value 					=	2;
	visual 					=	"ItRw_Bolt.3ds";
	on_state[0]				=	Use_ItRw_sBolt;
	
	description				=	"Ostry be³t";
	TEXT[1]					=	NAME_Damage;
	COUNT[1]				=	20;
	COUNT[5]				=	value;
	SetItRwAttributes_Bolt(self);
};
///******************************************************************************************
func int Npc_IsEquippedItem_Crossbow (var C_NPC slf)
{
	var c_item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_Bolt)
	|| (itm.munition == ItRw_sBolt)
	{
		return true;
	};
	return false;
};
///******************************************************************************************
func void BOLT_CHECK()
{
	var int Bolts;
	
	Bolts = Npc_HasItems(self, ItRw_Bolt);
	if (Bolts > 0)
	{
		Npc_RemoveInvItems (self, ItRw_Bolt, Bolts);
		CreateInvItems (self, ItRw_Bolt, Bolts);
	};
	Bolts = Npc_HasItems(self, ItRw_sBolt);
	if (Bolts > 0)
	{
		Npc_RemoveInvItems (self, ItRw_sBolt, Bolts);
		CreateInvItems (self, ItRw_sBolt, Bolts);
	};
	
	if (Npc_IsEquippedItem_Crossbow(self))
	{
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_cbow;
	};
};
///******************************************************************************************
func void Use_ItRw_Bolt()
{
	if (Npc_IsEquippedItem_Crossbow(self))
	{
		muntype_cbow = ItRw_Bolt;
		self.damage[DAM_INDEX_POINT] = 0;
		BOLT_CHECK();
	};
};
func void Use_ItRw_sBolt()
{
	if (Npc_IsEquippedItem_Crossbow(self))
	{
		muntype_cbow = ItRw_sBolt;
		self.damage[DAM_INDEX_POINT] = 20;
		BOLT_CHECK();
	};
};
///******************************************************************************************
///	Ammo
///******************************************************************************************
instance ItRw_Ammo (ItemPR_Ammo)
{
	value 					=	5;
	visual 					=	"ItRw_Ammo.3ds";
	on_state[0]				=	Use_ItRw_Ammo;
	
	description				=	name;
	COUNT[5]				=	value;
	SetItRwAttributes_Ammo(self);
};
///******************************************************************************************
func int Npc_IsEquippedItem_Gun (var C_NPC slf)
{
	var c_item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
	if (itm.munition == ItRw_Ammo)
	{
		return true;
	};
	return false;
};
///******************************************************************************************
func void AMMO_CHECK()
{
	var int Ammo;
	
	Ammo = Npc_HasItems(self, ItRw_Ammo);
	if (Ammo > 0)
	{
		Npc_RemoveInvItems (self, ItRw_Ammo, Ammo);
		CreateInvItems (self, ItRw_Ammo, Ammo);
	};
	
	if (Npc_IsEquippedItem_Gun(self))
	{
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_gun;
	};
};
///******************************************************************************************
func void Use_ItRw_Ammo()
{
	if (Npc_IsEquippedItem_Gun(self))
	{
		muntype_gun = ItRw_Ammo;
		self.damage[DAM_INDEX_POINT] = 0;
		AMMO_CHECK();
	};
};
///******************************************************************************************
///	Heavy Ammo
///******************************************************************************************
instance ItRw_HAmmo (ItemPR_HAmmo)
{
	value 					=	50;
	visual 					=	"W_HAmmo.3ds";
	on_state[0]				=	Use_ItRw_HAmmo;
	
	description				=	"Ciê¿ki pocisk";
	SetItRwAttributes_HAmmo(self);
};
instance ItRw_BAmmo (ItemPR_HAmmo)
{
	value 					=	50;
	visual 					=	"W_HAmmo1.3ds";
	on_state[0]				=	Use_ItRw_BAmmo;
	effect					=	"SPELLFX_BIOAMMO";
	
	description				=	"Bio-pocisk";
	SetItRwAttributes_HAmmo(self);
};
///******************************************************************************************
func int Npc_IsEquippedItem_HeavyGun (var C_NPC slf)
{
	var c_item itm;	itm = Npc_GetEquippedRangedWeapon(slf);
	
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
	var int HAmmo;
	
	HAmmo = Npc_HasItems(self, ItRw_HAmmo);
	if (HAmmo > 0)
	{
		Npc_RemoveInvItems (self, ItRw_HAmmo, HAmmo);
		CreateInvItems (self, ItRw_HAmmo, HAmmo);
	};
	HAmmo = Npc_HasItems(self, ItRw_BAmmo);
	if (HAmmo > 0)
	{
		Npc_RemoveInvItems (self, ItRw_BAmmo, HAmmo);
		CreateInvItems (self, ItRw_BAmmo, HAmmo);
	};
	
	if (Npc_IsEquippedItem_HeavyGun(self))
	{
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = muntype_hgun;
	};
};
///******************************************************************************************
func void Use_ItRw_HAmmo()
{
	if (Npc_IsEquippedItem_HeavyGun(self))
	{
		muntype_hgun = ItRw_HAmmo;
		self.damage[DAM_INDEX_POINT] = 0;
		HEAVYAMMO_CHECK();
	};
};
func void Use_ItRw_BAmmo()
{
	if (Npc_IsEquippedItem_HeavyGun(self))
	{
		muntype_hgun = ItRw_BAmmo;
		self.damage[DAM_INDEX_POINT] = 0;
		HEAVYAMMO_CHECK();
	};
};
///******************************************************************************************
///	AmmoBox
///******************************************************************************************
instance ItSe_AmmoBox (C_Item)
{
	name 					=	"Pude³ko z nabojami";
	mainflag 				=	ITEM_KAT_MUN;
	flags 					=	ITEM_MULTI;
	
	value 					=	100;
	
	visual 					=	"W_AmmoBox1.3ds";
	material 				=	MAT_METAL;
	scemename				=	"MAPSEALED";
	on_state[0]				=	Use_AmmoBox;
	
	description				= 	name;
	TEXT[2]					= 	"W œrodku znajduj¹ siê 24 naboje.";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_AmmoBox()
{
	B_PlayerFindItem (ItRw_Ammo, 24);
};
///******************************************************************************************
instance ItSe_HAmmoBox (C_Item)
{
	name 					=	"Pud³o z amunicj¹";
	mainflag 				=	ITEM_KAT_MUN;
	flags 					=	ITEM_MULTI;
	
	value 					=	250;
	
	visual 					=	"W_AmmoBox3.3ds";
	material 				=	MAT_METAL;
	scemename				=	"MAPSEALED";
	on_state[0]				=	Use_HAmmoBox;
	
	description				= 	"Pud³o z ciê¿k¹ amunicj¹";
	TEXT[2]					= 	"W œrodku znajduje siê 6 pocisków.";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_HAmmoBox()
{
	B_PlayerFindItem (ItRw_HAmmo, 6);
};
