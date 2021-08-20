///******************************************************************************************
prototype ItemPR_Misc (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
///	Coins
///******************************************************************************************
prototype ItemPR_Coin (C_Item)
{
	name 					=	"Moneta";
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	
	value 					=	1;
	material 				=	MAT_STONE;
	
	TEXT[5]					= 	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC2_STANDARD;
};
///******************************************************************************************
instance ItMi_Gold (ItemPR_Coin)
{
	name 					=	"Z³oto";
	visual 					=	"ItMi_Gold.3DS";
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_FortuneCoin (ItemPR_Coin)
{
	value 					=	2;
	visual 					=	"ItMi_Coin_01.3DS";
	description				= 	"Moneta fortuny";
	COUNT[5]				= 	value;
};
instance ItMi_AncientCoin (ItemPR_Coin)
{
	value 					=	0;
	visual 					=	"ItMi_Coin_02.3DS";
	description				= 	"Moneta staro¿ytnych";
	COUNT[5]				= 	value;
};
instance ItMi_OrcCoin (ItemPR_Coin)
{
	value 					=	0;
	visual 					=	"ItMi_Coin_03.3DS";
	description				= 	"Z³oto orków";
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	GoldPockets
///******************************************************************************************
prototype ItemPR_GoldPocket (C_Item)
{
	name 					=	"Skórzany mieszek";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	
	visual 					=	"ItMi_Pocket_Yellow.3ds";
	scemename				=	"MAPSEALED";
	material				=	MAT_LEATHER;
	
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
instance ItSe_GoldPocket25 (ItemPR_GoldPocket)
{
	value 					=	25;
	on_state[0]				=   GoldPocket25;
	COUNT[5]				=	value;
};
func void GoldPocket25() { B_PlayerFindItem (ItMi_Gold, 25); };

instance ItSe_GoldPocket50 (ItemPR_GoldPocket)
{
	value 					=	50;
	on_state[0]				=   GoldPocket50;
	COUNT[5]				=	value;
};
func void GoldPocket50() { B_PlayerFindItem (ItMi_Gold, 50); };

instance ItSe_GoldPocket100	(ItemPR_GoldPocket)
{
	value 					=	100;
	on_state[0]				=   GoldPocket100;
	COUNT[5]				=	value;
};
func void GoldPocket100() { B_PlayerFindItem (ItMi_Gold, 100); };

instance ItSe_GoldPocket250	(ItemPR_GoldPocket)
{
	value 					=	250;
	on_state[0]				=   GoldPocket250;
	COUNT[5]				=	value;
};
func void GoldPocket250() { B_PlayerFindItem (ItMi_Gold, 250); };

///******************************************************************************************
///	Silver & Gold
///******************************************************************************************
prototype ItemPR_SilverMisc (C_Item)
{
	name 					=	"Srebrne kosztownoœci";
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	
	material 				=	MAT_METAL;
	value 					=	100;
	
	description				=	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};
///******************************************************************************************
instance ItMi_SilverCandleHolder (ItemPR_SilverMisc)
{
	visual					=	"ItMi_SilverCandleHolder.3DS";
	description				=	"Srebrny œwiecznik";
};
instance ItMi_SilverChalice (ItemPR_SilverMisc)
{
	visual					=	"ItMi_SilverChalice.3DS";
	description				=	"Srebrne naczynie";
};
instance ItMi_SilverCup (ItemPR_SilverMisc)
{
	visual					=	"ItMi_SilverCup.3DS";
	description				=	"Srebrny puchar";
};
instance ItMi_SilverNecklace (ItemPR_SilverMisc)
{
	visual					=	"ItMi_SilverNecklace.3DS";
	description				=	"Srebrny naszyjnik";
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
};
instance ItMi_SilverPlate (ItemPR_SilverMisc)
{
	visual					=	"ItMi_SilverPlate.3DS";
	description				=	"Srebrny talerz";
};
instance ItMi_SilverRing (ItemPR_SilverMisc)
{
	visual 					=	"ItMi_SilverRing.3DS";
	description				=	"Srebrny pierœcieñ";
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
	INV_ROTX				=	INVCAM_X_RING_STANDARD;
};
///******************************************************************************************
prototype ItemPR_GoldMisc (C_Item)
{
	name 					=	"Z³ote kosztownoœci";
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	
	material 				=	MAT_METAL;
	value 					=	200;
	
	description				=	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};
///******************************************************************************************
instance ItMi_GoldCandleHolder (ItemPR_GoldMisc)
{
	visual					=	"ItMi_GoldCandleHolder.3DS";
	description				=	"Z³oty œwiecznik";
};
instance ItMi_GoldChalice (ItemPR_GoldMisc)
{
	visual					=	"ItMi_GoldChalice.3DS";
	description				=	"Z³ote naczynie";
};
instance ItMi_GoldCompass (ItemPR_GoldMisc)
{
	visual					=	"ItMi_Compass_01.3DS";
	description				=	"Z³oty kompas";
};
instance ItMi_GoldCup (ItemPR_GoldMisc)
{
	visual					=	"ItMi_GoldCup.3DS";
	description				=	"Z³oty puchar";
};
instance ItMi_GoldNecklace (ItemPR_GoldMisc)
{
	visual					=	"ItMi_GoldNecklace.3DS";
	description				=	"Z³oty naszyjnik";
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
};
instance ItMi_GoldPlate (ItemPR_GoldMisc)
{
	visual					=	"ItMi_GoldPlate.3DS";
	description				=	"Z³oty talerz";
};
instance ItMi_GoldRing (ItemPR_GoldMisc)
{
	visual 					=	"ItMi_GoldRing.3DS";
	description				=	"Z³oty pierœcieñ";
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
	INV_ROTX				=	INVCAM_X_RING_STANDARD;
};
///******************************************************************************************
///	Chests
///******************************************************************************************
instance ItMi_Chest (ItemPR_Misc)
{
	name 					=	"Skrzynka";
	value 					=	30;
	visual 					=	"CHESTSMALL_OCCHESTSMALLLOCKED.3DS";
	material 				=	MAT_WOOD;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_GoldChest (ItemPR_Misc)
{
	name 					=	"Z³ota skrzyneczka";
	value 					=	600;
	visual 					=	"ItMi_GoldChest.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_JeweleryChest (ItemPR_Misc)
{
	name 					=	"Szkatu³ka z klejnotami";
	value 					=	1200;
	visual 					=	"ItMi_JeweleryChest.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	Gems
///******************************************************************************************
instance ItMi_Aquamarine (ItemPR_Misc)
{
	name 					=	"Akwamaryn";
	value 					=	100;
	visual 					=	"ItMi_Aquamarine.3ds";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Emerald (ItemPR_Misc)
{
	name 					=	"Szmaragd";
	value 					=	300;
	visual 					=	"ItMi_Emerald.3ds";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Ruby (ItemPR_Misc)
{
	name 					=	"Rubin";
	value 					=	300;
	visual 					=	"ItMi_Ruby.3ds";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Diamond (ItemPR_Misc)
{
	name 					=	"Diament";
	value 					=	500;
	visual 					=	"ItMi_Diamond.3ds";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	SecretFish
///******************************************************************************************
prototype ItemPR_SecretFish (C_Item)
{
	name 					=	"Dziwna ryba";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION;
	
	value 					=	25;
	visual 					=	"ItFo_Fish.3ds";
	scemename				=	"MAPSEALED";
	material				=	MAT_LEATHER;
	
	TEXT[2]					= 	"W tej rybie coœ schowano.";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItSe_ErzFisch (ItemPR_SecretFish)
{
	on_state[0]				=   Use_ErzFisch;
	description				= 	"Kulista ryba";
};
func void Use_ErzFisch() { B_PlayerFindItem (ItMi_Nugget, 1); };

instance ItSe_GoldFisch (ItemPR_SecretFish)
{
	on_state[0]				=   Use_GoldFisch;
	description				= 	"Ciê¿ka ryba";
};
func void Use_GoldFisch() { B_PlayerFindItem (ItMi_Gold, 50); };

instance ItSe_RingFisch (ItemPR_SecretFish)
{
	on_state[0]				=   Use_RingFisch;
	description				= 	"Ma³a ryba";
};
func void Use_RingFisch() { B_PlayerFindItem (ItRi_ProtFire_01, 1); };

instance ItSe_LockpickFisch (ItemPR_SecretFish)
{
	on_state[0]				=   Use_LockpickFisch;
	description				= 	"Lekka ryba";
};
func void Use_LockpickFisch() { B_PlayerFindItem (ItKe_Lockpick, 3); };
