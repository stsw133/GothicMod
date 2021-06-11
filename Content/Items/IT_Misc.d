
const int	Value_Alarmhorn			= 10;

const int	Value_Quartz			= 20;
const int	Value_Pitch				= 10;
const int	Value_Coal				= 15;
const int	Value_DarkPearl			= 1000;

const int 	Value_GoldPlate			=  200;
const int	Value_GoldRing			=  250;
const int	Value_GoldNecklace		=  300;
const int	Value_GoldCandleHolder	=  120;
const int	Value_GoldCup			=  350;
const int	Value_BloodCup			=  200;
const int   Value_GoldChalice		=  500;
const int   Value_GoldChest			=  750;
const int	Value_JeweleryChest		= 1000;

const int	Value_Sextant			= 1500;

///******************************************************************************************
prototype ItemPR_Misc (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
///	Tools
///******************************************************************************************
instance ItMi_Pan (ItemPR_Misc)
{
	name 			=	"Patelnia";
	
	value 			=	20;
	visual 			=	"ItMi_Pan.3DS";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_PanFull (ItemPR_Misc)
{
	name 			=	"Patelnia";
	
	value 			=	20;
	visual 			=	"ItMi_PanFull.3DS";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Saw (ItemPR_Misc)
{
	name 			=	"Pi³a";
	
	value 			=	20;
	visual 			=	"ItMi_Saw.3DS";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Pliers (ItemPR_Misc)
{
	name 			=	"¯uwaczka";
	
	value 			=	10;
	visual 			=	"ItMi_Pliers.3DS";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5] 		= 	value;
};
instance ItMi_Brush (ItemPR_Misc)
{
	name 			=	"Szczotka";
	
	value 			=	3;
	visual			=	"ItMi_Brush.3ds";
	material 		=	MAT_WOOD;
	scemeName		=	"BRUSH";
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Stomper (ItemPR_Misc)
{
	name 			=	"Rozdrabniacz";
	
	value 			=	3;
	visual 			=	"ItMi_Stomper.3DS";
	material 		=	MAT_WOOD;
	
	description		= 	name;
	COUNT[5] 		= 	value;
};
instance ItMi_Broom (ItemPR_Misc)
{
	name 			=	"Miot³a";
	
	value 			=	10;
	visual 			=	"ItMi_Broom.3DS";
	material 		=	MAT_WOOD;
	scemeName		=	"BROOM";
	on_state[0]		=	Use_Broom;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
func void Use_Broom()
{
	if (Npc_IsPlayer(self))
	&& (Wld_GetPlayerPortalGuild() == GIL_NOV)
	&& (MIS_ParlanFegen == LOG_RUNNING)
	{
		B_Say (self, self, "$NOSWEEPING");
		Print("Posprz¹tanie wszystkich komnat zajmie ca³e wieki!");
	};
};
instance ItMi_Rake (ItemPR_Misc)
{
	name 			=	"Grabie";
	
	value 			=	15;
	visual 			=	"ItMi_Rake.3DS";
	material 		=	MAT_WOOD;
	scemeName		=	"RAKE";
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Sickle (ItemPR_Misc)
{
	name 			=	"Sierp";
	
	value 			=	10;
	visual 			=	"Itmw_007_1h_sickle_01.3DS";
	material 		=	MAT_METAL;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItMi_Hammer (ItemPR_Misc)
{
	name 			=	"M³otek";
	
	value 			=	10;
	visual 			=	"ItMi_Hammer.3DS";
	material 		=	MAT_WOOD;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Scoop (ItemPR_Misc)
{
	name 			=	"Chochla";
	
	value 			=	3;
	visual 			=	"ItMi_Scoop.3DS";
	material 		=	MAT_WOOD;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Lute (ItemPR_Misc)
{
	name 			=	"Lutnia";
	
	value 			=	15;
	visual 			=	"ItMi_Lute.3DS";
	material 		=	MAT_WOOD;
	scemeName		=	"LUTE";
	
	description		= 	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Misc
///******************************************************************************************
instance ItMi_MagicStone (ItemPR_Misc)
{
	name 			=	"Kamieñ zaklinania";
	
	value 			=	30;
	visual 			=	"ItMi_MagicStone.3ds";
	material 		=	MAT_STONE;
//	scemeName		=	"FASTUSE";
//	on_state[0]		=	MOBSI_MAGICSTONE_S1;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_RuneBlank (ItemPR_Misc)
{
	name 			=	"Runa";
	
	value 			=	100;
	visual 			=	"ItMi_RuneBlank.3DS";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5] 		= 	value;
};
instance ItMi_Flask (ItemPR_Misc)
{
	name 			=	"Menzurka";
	
	value 			=	3;
	visual 			=	"ItMi_Flask.3ds";
	material 		=	MAT_GLAS;
	
	description		= 	name;
	COUNT[5] 		= 	value;
};
instance ItMi_EmptyBottle (ItemPR_Misc)
{
	name 			=	"Butelka";
	
	value 			=	3;
	visual 			=	"ItMi_EmptyBottle.3ds";
	material 		=	MAT_GLAS;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItMi_HolyWater (ItemPR_Misc)
{
	name 			=	"Woda œwiêcona";
	
	value 			=	15;
	visual 			=	"ItMi_HolyWater.3ds";
	material 		=	MAT_GLAS;
//	scemeName		=	"FASTUSE";
//	on_state[0]		=	MOBSI_BLESSWEAPON_S1;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItKe_LockPick (ItemPR_Misc)
{
	name 			=	"Wytrych";
	
	value 			=	10;
	visual 			=	"ItKe_Lockpick.3ds";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItMi_Shell (ItemPR_Misc)
{
	name 			=	"Muszla";
	
	value 			=	2;
	visual			=	"ItMi_Shell_01.3ds";
	material		=	MAT_STONE;
	
	description		=	name;
	COUNT[5]		=	value;
	INV_ZBIAS		=	INVCAM_ENTF_MISC2_STANDARD;
};
instance ItMi_Wood (ItemPR_Misc)
{
	name 			=	"Drewno";
	
	value 			=	2;
	visual 			=	"ITMI_WOOD.3DS";
	material		=	MAT_WOOD;
//	scemeName		=	"FASTUSE";
//	on_state[0]		=	MOBSI_WOOD_S1;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItMi_Paper (ItemPR_Misc)
{
	name 			=	"Papier";
	
	value 			=	2;
	visual 			=	"ADDON_DUNGEON_SCROLLS_01.3DS";
	material		=	MAT_LEATHER;
//	scemeName		=	"FASTUSE";
//	on_state[0]		=	MOBSI_PAPER_S1;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItMi_Chest (ItemPR_Misc)
{
	name 			=	"Skrzynka";
	
	value 			=	30;
	visual 			=	"CHESTSMALL_OCCHESTSMALLLOCKED.3DS";
	material 		=	MAT_WOOD;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Torches
///******************************************************************************************
prototype ItemPR_Torch (C_Item)
{
	name 					=	"Pochodnia";
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_TORCH|ITEM_MULTI;
	material 				=	MAT_WOOD;
	value 					=	4;
	
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};
///******************************************************************************************
instance ItLsTorch (ItemPR_Torch)
{
	visual = "ItLs_Torch_01.3ds";
};
instance ItLsTorchburning (ItemPR_Torch)
{
	visual = "ITLSTORCHBURNING.ZEN";
};
instance ItLsTorchburned (ItemPR_Torch)
{
	visual = "ItLs_Torchburned_01.3ds";
};
///******************************************************************************************
///	Swordraw & Swordblade
///******************************************************************************************
prototype ItemPR_Swordraw (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	material 				=	MAT_METAL;
	value 					=	10;
	
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};
///******************************************************************************************
instance ItMiSwordraw (ItemPR_Swordraw)
{
	name 			=	"Surowa stal";
	visual 			=	"ItMiSwordraw.3DS";
	description		= 	name;
};
instance ItMiSwordrawhot (ItemPR_Swordraw)
{
	name 			=	"Gor¹ca stal";
	visual 			=	"ItMiSwordrawhot.3DS";
	description		= 	name;
};
instance ItMiSwordbladehot (ItemPR_Swordraw)
{
	name 			=	"Gor¹ce ostrze";
	visual 			=	"ItMiSwordbladehot.3DS";
	description		= 	name;
};
instance ItMiSwordblade	(ItemPR_Swordraw)
{
	name 			=	"Ostrze";
	visual 			=	"ItMiSwordblade.3DS";
	description		= 	name;
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
	name 			=	"Z³oto";
	visual 			=	"ItMi_Gold.3DS";
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_FortuneCoin (ItemPR_Coin)
{
	value 			=	3;
	visual 			=	"ItMi_Coin_01.3DS";
	description		= 	"Moneta fortuny";
	COUNT[5]		= 	value;
};
instance ItMi_AncientCoin (ItemPR_Coin)
{
	value 			=	3;
	visual 			=	"ItMi_Coin_02.3DS";
	description		= 	"Moneta staro¿ytnych";
	COUNT[5]		= 	value;
};
instance ItMi_OrcCoin (ItemPR_Coin)
{
	value 			=	3;
	visual 			=	"ItMi_Coin_03.3DS";
	description		= 	"Moneta orków";
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	GoldPockets
///******************************************************************************************
prototype ItemPR_GoldPocket (C_Item)
{
	name 			=	"Skórzany mieszek";
	mainflag 		=	ITEM_KAT_NONE;
	flags 			=	ITEM_MULTI;
	
	visual 			=	"ItMi_Pocket_Gold.3ds";
	scemename		=	"MAPSEALED";
	material		=	MAT_LEATHER;
	
	description		= 	name;
	TEXT[5]			= 	NAME_Value;
};
///******************************************************************************************
instance ItSe_GoldPocket25 (ItemPR_GoldPocket)
{
	value 			=	25;
	on_state[0]		=   GoldPocket25;
	COUNT[5]		=	value;
};
func void GoldPocket25()
{
	B_PlayerFindItem (ItMi_Gold, 25);
};

instance ItSe_GoldPocket50 (ItemPR_GoldPocket)
{
	value 			=	50;
	on_state[0]		=   GoldPocket50;
	COUNT[5]		=	value;
};
func void GoldPocket50()
{
	B_PlayerFindItem (ItMi_Gold, 50);
};

instance ItSe_GoldPocket100	(ItemPR_GoldPocket)
{
	value 			=	100;
	on_state[0]		=   GoldPocket100;
	COUNT[5]		=	value;
};
func void GoldPocket100()
{
	B_PlayerFindItem (ItMi_Gold, 100);
};

instance ItSe_GoldPocket250	(ItemPR_GoldPocket)
{
	value 			=	250;
	on_state[0]		=   GoldPocket250;
	COUNT[5]		=	value;
};
func void GoldPocket250()
{
	B_PlayerFindItem (ItMi_Gold, 250);
};
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
instance ItMi_SilverRing (ItemPR_SilverMisc)
{
	visual 			=	"ItMi_SilverRing.3DS";
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ		=	INVCAM_Z_RING_STANDARD;
	INV_ROTX		=	INVCAM_X_RING_STANDARD;
};
instance ItMi_SilverCup (ItemPR_SilverMisc)
{
	visual = "ItMi_SilverCup.3DS";
};
instance ItMi_SilverPlate (ItemPR_SilverMisc)
{
	visual = "ItMi_SilverPlate.3DS";
};
instance ItMi_SilverChalice (ItemPR_SilverMisc)
{
	visual = "ItMi_SilverChalice.3DS";
};
instance ItMi_SilverCandleHolder (ItemPR_SilverMisc)
{
	visual = "ItMi_SilverCandleHolder.3DS";
};
instance ItMi_SilverNecklace (ItemPR_SilverMisc)
{
	visual 			=	"ItMi_SilverNecklace.3DS";
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
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
instance ItMi_GoldRing (ItemPR_GoldMisc)
{
	visual 			=	"ItMi_GoldRing.3DS";
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ		=	INVCAM_Z_RING_STANDARD;
	INV_ROTX		=	INVCAM_X_RING_STANDARD;
};
instance ItMi_GoldCup (ItemPR_GoldMisc)
{
	visual = "ItMi_GoldCup.3DS";
};
instance ItMi_GoldPlate (ItemPR_GoldMisc)
{
	visual = "ItMi_GoldPlate.3DS";
};
instance ItMi_GoldChalice (ItemPR_GoldMisc)
{
	visual = "ItMi_GoldChalice.3DS";
};
instance ItMi_GoldCandleHolder (ItemPR_GoldMisc)
{
	visual = "ItMi_GoldCandleHolder.3DS";
};
instance ItMi_GoldNecklace (ItemPR_GoldMisc)
{
	visual 			=	"ItMi_GoldNecklace.3DS";
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
};
///******************************************************************************************
instance ItMi_WhitePearl (ItemPR_Misc)
{
	name 			=	"Per³a";
	
	value 			=	100;
	visual 			=	"ItMi_WhitePearl_01.3ds";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Aquamarine (ItemPR_Misc)
{
	name 			=	"Akwamaryn";
	
	value 			=	100;
	visual 			=	"ItMi_Aquamarine.3ds";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Ruby (ItemPR_Misc)
{
	name 			=	"Rubin";
	
	value 			=	300;
	visual 			=	"ItMi_Ruby.3ds";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Diamond (ItemPR_Misc)
{
	name 			=	"Diament";
	
	value 			=	500;
	visual 			=	"ItMi_Diamond.3ds";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_InnosStatue (ItemPR_Misc)
{
	name 			=	"Pos¹¿ek Innosa";
	
	value 			=	100;
	visual 			=	"ItMi_InnosStatue.3DS";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_GoldChest (ItemPR_Misc)
{
	name 			=	"Z³ota skrzyneczka";
	
	value 			=	300;
	visual 			=	"ItMi_GoldChest.3DS";
	material 		=	MAT_METAL;
	
	description		= 	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Nuggets
///******************************************************************************************
prototype ItemPR_Nugget (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	material 				=	MAT_STONE;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
instance ItMi_Nugget (ItemPR_Nugget)
{
	name 			=	"Magiczna bry³ka";
	value 			=	100;
	visual 			=	"ItMi_Nugget.3ds";
	effect			=	"SPELLFX_MANAPOTION";
	
	description		= 	"Niebieska magiczna ruda";
	COUNT[5]		=	value;
};
instance ItMi_RedNugget (ItemPR_Nugget)
{
	name 			=	"Magiczna bry³ka";
	value 			=	100;
	visual 			=	"ItMi_RedNugget.3ds";
	effect			=	"SPELLFX_HEALTHPOTION";
	
	description		= 	"Czerwona magiczna ruda";
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItMi_GoldNugget (ItemPR_Nugget)
{
	name 			=	"Bry³ka z³ota";
	value 			=	20;
	visual 			=	"ItMi_GoldNugget.3ds";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItMi_IronNugget (ItemPR_Nugget)
{
	name 			=	"Bry³ka ¿elaza";
	value 			=	15;
	visual 			=	"ItMi_IronNugget.3ds";
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_Sulfur (ItemPR_Nugget)
{
	name 			=	"Siarka";
	value 			=	20;
	visual 			=	"ItMi_SulfurNugget.3DS";
	
	description		= 	name;
	COUNT[5]		= 	value;
};
instance ItMi_RockCrystal (ItemPR_Nugget)
{
	name 			=	"Kryszta³";
	value 			=	30;
	visual 			=	"ItMi_ShiningCrystal.3ds";
	effect			=	"SPELLFX_CRYSTALGLOW";
	
	description		= 	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Tabak
///******************************************************************************************
prototype ItemPR_Tabak (C_Item)
{
	name 					=	"Tytoñ";
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	
	value 					=	20;
	visual 					=	"ItMi_Pocket_Green.3ds";
	material 				=	MAT_LEATHER;
	
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItMi_Tabak (ItemPR_Tabak)
{
	value 			=	10;
//	scemeName		=	"FASTUSE";
//	on_state[0]		=	MOBSI_TABAK_S1;
	
	description		=	name;
	TEXT[1]			= 	"Baza do tworzenia";
	TEXT[2]			=	"tytoniów smakowych.";
	COUNT[5]		=	value;
};
instance ItMi_FruitTabak (ItemPR_Tabak)
{
	description = "Tytoñ owocowy";
};
instance ItMi_CoconutTabak (ItemPR_Tabak)
{
	description = "Tytoñ kokosowy";
};
instance ItMi_MushroomTabak (ItemPR_Tabak)
{
	description = "Tytoñ grzybowy";
};
instance ItMi_SwampTabak (ItemPR_Tabak)
{
	description = "Tytoñ zio³owy";
};
instance ItMi_HoneyTabak (ItemPR_Tabak)
{
	description = "Tytoñ miodowy";
};
instance ItMi_ChocolateTabak (ItemPR_Tabak)
{
	description = "Tytoñ czekoladowy";
};
///******************************************************************************************
///	Joint
///******************************************************************************************
prototype ItemPR_Joint (C_Item)
{
	name 			=	"Skrêt";
	mainflag 		=	ITEM_KAT_NONE;
	flags 			=	ITEM_MULTI;
	
	visual 			=	"ItMi_Joint_US.3ds";
	scemename		=	"JOINT";
	material		=	MAT_LEATHER;
	
	description		= 	name;
	TEXT[5]			= 	NAME_Value;
};
///******************************************************************************************
instance ItMi_Joint (ItemPR_Joint)
{
	value 			=	20;
	on_state[0]		= 	Use_ItMi_Joint;
	
	description		= 	"Skrêt bagiennego ziela";
	TEXT[1]			= 	"Uzupe³nia manê w wysokoœci";
	TEXT[2]			=	"50% twojej aktualnej many.";
	COUNT[5]		= 	value;
};
func void Use_ItMi_Joint()
{
	Npc_ChangeAttribute	(self, ATR_MANA, self.attribute[ATR_MANA]/2);
};

instance ItMi_SleJoint (ItemPR_Joint)
{
	value 			=	40;
	on_state[0]		= 	Use_ItMi_SleJoint;
	
	description		= 	"Skrêt 'Zielonego Nowicjusza'";
	TEXT[1]			= 	"Uzupe³nia manê w wysokoœci";
	TEXT[2]			=	"100% twojej aktualnej many.";
	COUNT[5]		= 	value;
};
func void Use_ItMi_SleJoint()
{
	Npc_ChangeAttribute	(self, ATR_MANA, self.attribute[ATR_MANA]);
};









/******************************************************************************************/
/*
INSTANCE ItMi_Alarmhorn (C_Item)
{
	name 				=	"Róg";

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MULTI;

	value 				=	Value_Alarmhorn;

	visual 				=	"ItMi_Alarmhorn.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"HORN";
	on_state[0]			= 	Use_Alarmhorn;
	description			= 	name;
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};
func void Use_Alarmhorn()
{
	
};

*/
//*******************************
//Päckchen
//*******************************
INSTANCE ItMi_Packet(C_Item)
{
	name 				=	"Paczka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UsePacket;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//in dieser Funktio steht der inhalt, die use Funkt dann bitte einkommentiren.
FUNC VOID UsePacket ()
{
	
};

INSTANCE ItMi_Pocket(C_Item)//steht drin, weil auch in Welt verteilt!!
{
	name 				=	"Skórzany mieszek";

	mainflag 			=	ITEM_KAT_NONE|ITEM_MULTI;
	flags 				=	0;

	value 				=	10;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePocket;
	description			= 	name;
	TEXT[2]				= 	"Ein schmaler Beutel,";
	TEXT[3]				=   "wiegt nicht viel";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//in dieser Funktio steht der inhalt, die use Funkt dann bitte einkommentiren.
FUNC VOID UsePocket ()
{
		CreateInvItems (hero, ItMi_Gold ,10);
		Print 	(PRINT_FoundGold10);
		Snd_Play ("Geldbeutel");
};

/******************************************************************************************/
INSTANCE ItMi_JeweleryChest (C_Item)
{
	name 				=	"Szkatu³ka z klejnotami";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_JeweleryChest;

	visual 				=	"ItMi_JeweleryChest.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};
/******************************************************************************************/
INSTANCE ItMi_Sextant (C_Item)
{
	name 				=	"Sekstans";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sextant;

	visual 				=	"ItMi_Sextant.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

//*****************************************************************************************
//	Alchemy Ingredienzien
//*****************************************************************************************

INSTANCE ItMi_Quartz (C_Item)
{
	name 				=	"Kwarcyt";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Quartz;

	visual 				=	"ItMi_Quartz.3ds";
	material 			=	MAT_STONE ;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
};

INSTANCE ItMi_Pitch (C_Item)
{
	name 				=	"Smo³a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Pitch;

	visual 				=	"ItMi_Pitch.3DS";
	material 			=	MAT_GLAS ;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

INSTANCE ItMi_Coal (C_Item)
{
	name 				=	"Wêgiel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Coal;

	visual 				=	"ItMi_Coal.3ds";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};


INSTANCE ItMi_DarkPearl (C_Item)
{
	name 				=	"Czarna per³a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DarkPearl;

	visual 				=	"ItMi_DarkPearl.3ds";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};
