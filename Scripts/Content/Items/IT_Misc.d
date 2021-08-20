///******************************************************************************************
prototype ItemPR_Misc (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
///	Nuggets & Resources
///******************************************************************************************
prototype ItemPR_Nugget (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	material 				=	MAT_STONE;
	TEXT[5]					= 	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
///******************************************************************************************
instance ItMi_IronNugget (ItemPR_Nugget)
{
	name 					=	"Bry³ka ¿elaza";
	value 					=	10;
	visual 					=	"ItMi_IronNugget.3ds";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_IronBar (ItemPR_Nugget)
{
	name 					=	"Sztabka ¿elaza";
	value 					=	100;
	visual 					=	"ItMi_IronBar.3ds";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_SilverNugget (ItemPR_Nugget)
{
	name 					=	"Bry³ka srebra";
	value 					=	20;
	visual 					=	"ItMi_SilverNugget.3ds";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_GoldNugget_Addon (ItemPR_Nugget)
{
	name 					=	"Bry³ka z³ota";
	value 					=	30;
	visual 					=	"ItMi_GoldNugget.3ds";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItMi_Nugget (ItemPR_Nugget)
{
	name 					=	"Magiczna bry³ka";
	value 					=	100;
	visual 					=	"ItMi_Nugget.3ds";
	effect					=	"SPELLFX_MANAPOTION";
	
	description				= 	"Niebieska magiczna ruda";
	COUNT[5]				=	value;
};
instance ItMi_RedNugget (ItemPR_Nugget)
{
	name 					=	"Magiczna bry³ka";
	value 					=	100;
	visual 					=	"ItMi_RedNugget.3ds";
	effect					=	"SPELLFX_HEALTHPOTION";
	
	description				= 	"Czerwona magiczna ruda";
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItMi_Coal (ItemPR_Nugget)
{
	name 					=	"Wêgiel";
	value 					=	10;
	visual 					=	"ItMi_Coal.3ds";
	
	description				= 	name;
	COUNT[5]				= 	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
instance ItMi_Basalt (ItemPR_Nugget)
{
	name 					=	"Bazalt";
	value 					=	10;
	visual 					=	"ItMi_Basalt.3ds";
	
	description				= 	name;
	COUNT[5]				= 	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
instance ItMi_Quartz (ItemPR_Nugget)
{
	name 					=	"Kwarcyt";
	value 					=	20;
	visual 					=	"ItMi_Quartz.3ds";
	
	description				= 	name;
	COUNT[5]				= 	value;
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
};
instance ItMi_Sulfur (ItemPR_Nugget)
{
	name 					=	"Siarka";
	value 					=	20;
	visual 					=	"ItMi_SulfurNugget.3DS";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_RockCrystal (ItemPR_Nugget)
{
	name 					=	"Kryszta³";
	value 					=	25;
	visual 					=	"ItMi_ShiningCrystal.3ds";
	effect					=	"SPELLFX_CRYSTALGLOW";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_FireCrystal (ItemPR_Nugget)
{
	name 					=	"Kryszta³";
	value 					=	50;
	visual 					=	"ItMi_FireCrystal.3ds";
	effect					=	"SPELLFX_CRYSTALGLOW";
	
	description				= 	"Ognisty kryszta³";
	COUNT[5]				= 	value;
};
instance ItMi_BlackCrystal (ItemPR_Nugget)
{
	name 					=	"Kryszta³";
	value 					=	50;
	visual 					=	"ItMi_BlackCrystal.3ds";
	effect					=	"SPELLFX_CRYSTALGLOW";
	
	description				= 	"Czarny kryszta³";
	COUNT[5]				= 	value;
};
instance ItMi_Saltpeter (ItemPR_Nugget)
{
	name 					=	"Saletra";
	value 					=	60;
	visual 					=	"ItMi_Saltpeter.3DS";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	Pearls
///******************************************************************************************
instance ItMi_WhitePearl (ItemPR_Nugget)
{
	name 					=	"Per³a";
	value 					=	100;
	visual 					=	"ItMi_WhitePearl_01.3ds";
	
	description				= 	"Bia³a per³a";
	COUNT[5]				= 	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
instance ItMi_DarkPearl (ItemPR_Nugget)
{
	name					=	"Per³a";
	value 					=	500;
	visual 					=	"ItMi_DarkPearl.3ds";
	
	description				= 	"Czarna per³a";
	COUNT[5]				= 	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
///******************************************************************************************
var int Shell_Opener;

instance ItMi_Shell (ItemPR_Misc)
{
	name 					=	"Muszla";
	value 					=	2;
	visual					=	"ItMi_Shell_01.3ds";
	material				=	MAT_STONE;
	
	scemeName				=	"MAPSEALED";
	on_state[0]				=	Use_Shell;
	
	description				=	name;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC2_STANDARD;
};
func void Use_Shell()
{
	Shell_Opener += 1;
	if (Shell_Opener % 6 == 0 && Shell_Opener % 25 != 0)
	{
		B_PlayerFindItem (ItMi_WhitePearl, 1);
	}
	else if (Shell_Opener % 25 == 0)
	{
		B_PlayerFindItem (ItMi_DarkPearl,1);
	}
	else 
	{
		//B_Say_Overlay (self, self, "$NOTHINGTOGET02");
		AI_PrintScreen (PRINT_NOTHINGTOGET02, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
	};
};
///******************************************************************************************
///	Alchemy
///******************************************************************************************
instance ItMi_Blood (ItemPR_Misc)
{
	name 					=	"Krew";
	value 					=	15;
	visual 					=	"ItAt_DragonBlood.3DS";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItMi_HolyWater (ItemPR_Misc)
{
	name 					=	"Woda œwiêcona";
	value 					=	15;
	visual 					=	"ItMi_HolyWater.3ds";
	material 				=	MAT_GLAS;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItMi_Pitch (ItemPR_Misc)
{
	name 					=	"Smo³a";
	value 					=	15;
	visual 					=	"ItMi_Pitch.3DS";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Resin (ItemPR_Misc)
{
	name 					=	"¯ywica";
	value 					=	15;
	visual 					=	"ItMi_Resin.3DS";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Quicksilver (ItemPR_Misc)
{
	name 					=	"Rtêæ";
	value 					=	30;
	visual 					=	"ItMi_Quicksilver.3DS";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	Joint
///******************************************************************************************
prototype ItemPR_Joint (C_Item)
{
	name 					=	"Skrêt";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	
	visual 					=	"ItMi_Joint_US.3ds";
	scemename				=	"JOINT";
	material				=	MAT_LEATHER;
	
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
instance ItMi_Joint (ItemPR_Joint)
{
	value 					=	25;
	on_state[0]				= 	Use_ItMi_Joint;
	
	description				= 	"Skrêt bagiennego ziela";
	TEXT[1]					= 	"Podwaja poziom obecnej many.";
	COUNT[5]				= 	value;
};
func void Use_ItMi_Joint() { Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA]/2); };

instance ItMi_SleJoint (ItemPR_Joint)
{
	value 					=	100;
	on_state[0]				= 	Use_ItMi_SleJoint;
	
	description				= 	"Skrêt 'Zielonego Nowicjusza'";
	TEXT[1]					= 	"Uzupe³nia ca³¹ manê.";
	COUNT[5]				= 	value;
};
func void Use_ItMi_SleJoint() { Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]); };

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
	name 					=	"Surowa stal";
	visual 					=	"ItMiSwordraw.3DS";
	description				= 	name;
};
instance ItMiSwordrawhot (ItemPR_Swordraw)
{
	name 					=	"Gor¹ca stal";
	visual 					=	"ItMiSwordrawhot.3DS";
	description				= 	name;
};
instance ItMiSwordbladehot (ItemPR_Swordraw)
{
	name 					=	"Gor¹ce ostrze";
	visual 					=	"ItMiSwordbladehot.3DS";
	description				= 	name;
};
instance ItMiSwordblade	(ItemPR_Swordraw)
{
	name 					=	"Ostrze";
	visual 					=	"ItMiSwordblade.3DS";
	description				= 	name;
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
	value 					=	10;
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_TABAK_S1;
	
	description				=	name;
	TEXT[1]					= 	"Baza do tworzenia";
	TEXT[2]					=	"tytoniów smakowych.";
	COUNT[5]				=	value;
};
instance ItMi_ChocolateTabak (ItemPR_Tabak)
{
	description = "Tytoñ czekoladowy";
};
instance ItMi_CoconutTabak (ItemPR_Tabak)
{
	description = "Tytoñ kokosowy";
};
instance ItMi_FruitTabak (ItemPR_Tabak)
{
	description = "Tytoñ owocowy";
};
instance ItMi_HoneyTabak (ItemPR_Tabak)
{
	description = "Tytoñ miodowy";
};
instance ItMi_MushroomTabak (ItemPR_Tabak)
{
	description = "Tytoñ grzybowy";
};
instance ItMi_SwampTabak (ItemPR_Tabak)
{
	description = "Tytoñ zio³owy";
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
///	Mobsis
///******************************************************************************************
instance ItMi_EmptyBottle (ItemPR_Misc)
{
	name 					=	"Butelka";
	value 					=	2;
	visual 					=	"ItMi_EmptyBottle.3ds";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItMi_Flask (ItemPR_Misc)
{
	name 					=	"Menzurka";
	value 					=	3;
	visual 					=	"ItMi_Flask.3ds";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5] 				= 	value;
};
instance ItMi_Ink (ItemPR_Misc)
{
	name 					=	"Atrament";
	value 					=	10;
	visual 					=	"ItMi_Ink.3DS";
	material 				=	MAT_GLAS;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_InkPen (ItemPR_Misc)
{
	name 					=	"Pióro atramentowe";
	value 					=	10;
	visual 					=	"ItMi_InkPen.3DS";
	material 				=	MAT_LEATHER;
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_MAKESCROLL_S1;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_InnosStatue (ItemPR_Misc)
{
	name 					=	"Pos¹¿ek Innosa";
	value 					=	100;
	visual 					=	"ItMi_InnosStatue.3DS";
	material 				=	MAT_METAL;
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_LearnAttributes_S1;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItKe_LockPick (ItemPR_Misc)
{
	name 					=	"Wytrych";
	value 					=	10;
	visual 					=	"ItKe_Lockpick.3ds";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				=	value;
};
/*
instance ItMi_MagicStone (ItemPR_Misc)
{
	name 					=	"Kamieñ zaklinania";
	value 					=	30;
	visual 					=	"ItMi_MagicStone.3ds";
	material 				=	MAT_STONE;
	
//	scemeName				=	"FASTUSE";
//	on_state[0]				=	MOBSI_MAGICSTONE_S1;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
*/
instance ItMi_Scroll (ItemPR_Misc)
{
	name 					=	"Pergamin";
	value 					=	2;
	visual 					=	"ITWR_SCROLL_02.3DS";
	material				=	MAT_LEATHER;
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItMi_RuneBlank (ItemPR_Misc)
{
	name 					=	"Kamieñ runiczny";
	value 					=	100;
	visual 					=	"ItMi_RuneBlank.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5] 				= 	value;
};
instance ItMi_Wood (ItemPR_Misc)
{
	name 					=	"Drewno";
	value 					=	10;
	visual 					=	"ITMI_WOOD.3DS";
	material				=	MAT_WOOD;
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_WOOD_S1;
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Tools
///******************************************************************************************
instance ItMi_Alarmhorn (ItemPR_Misc)
{
	name 					=	"Róg";
	value 					=	10;
	visual 					=	"ItMi_Alarmhorn.3DS";
	material 				=	MAT_WOOD;
	
	scemeName				=	"HORN";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Broom (ItemPR_Misc)
{
	name 					=	"Miot³a";
	value 					=	10;
	visual 					=	"ItMi_Broom.3DS";
	material 				=	MAT_WOOD;
	
	scemeName				=	"BROOM";
	on_state[0]				=	Use_Broom;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
func void Use_Broom()
{
	if (Npc_IsPlayer(self))
	&& (Wld_GetPlayerPortalGuild() == GIL_NOV)
	&& (MIS_ParlanFegen == LOG_RUNNING)
	{
		B_Say (self, self, "$NOSWEEPING");
		Print ("Posprz¹tanie wszystkich komnat zajmie ca³e wieki!");
	};
};
instance ItMi_Brush (ItemPR_Misc)
{
	name 					=	"Szczotka";
	value 					=	3;
	visual					=	"ItMi_Brush.3ds";
	material 				=	MAT_WOOD;
	
	scemeName				=	"BRUSH";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_FishingRod (ItemPR_Misc)
{
	name 					=	"Wêdka";
	value 					=	15;
	visual 					=	"ItMi_FishingRod.3DS";
	material 				=	MAT_WOOD;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Hammer (ItemPR_Misc)
{
	name 					=	"M³otek";
	value 					=	10;
	visual 					=	"ItMi_Hammer.3DS";
	material 				=	MAT_WOOD;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Lute (ItemPR_Misc)
{
	name 					=	"Lutnia";
	value 					=	25;
	visual 					=	"ItMi_Lute.3DS";
	material 				=	MAT_WOOD;
	
	scemeName				=	"LUTE";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Pan (ItemPR_Misc)
{
	name 					=	"Patelnia";
	value 					=	20;
	visual 					=	"ItMi_Pan.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_PanFull (ItemPR_Misc)
{
	name 					=	"Patelnia";
	value 					=	20;
	visual 					=	"ItMi_PanFull.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Pliers (ItemPR_Misc)
{
	name 					=	"¯uwaczka";
	value 					=	10;
	visual 					=	"ItMi_Pliers.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5] 				= 	value;
};
instance ItMi_Rake (ItemPR_Misc)
{
	name 					=	"Grabie";
	value 					=	15;
	visual 					=	"ItMi_Rake.3DS";
	material 				=	MAT_WOOD;
	
	scemeName				=	"RAKE";
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Saw (ItemPR_Misc)
{
	name 					=	"Pi³a";
	value 					=	20;
	visual 					=	"ItMi_Saw.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Sextant (ItemPR_Misc)
{
	name 					=	"Sekstans";
	value 					=	1500;
	visual 					=	"ItMi_Sextant.3DS";
	material 				=	MAT_METAL;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Scoop (ItemPR_Misc)
{
	name 					=	"Chochla";
	value 					=	3;
	visual 					=	"ItMi_Scoop.3DS";
	material 				=	MAT_WOOD;
	
	description				= 	name;
	COUNT[5]				= 	value;
};
instance ItMi_Stomper (ItemPR_Misc)
{
	name 					=	"Rozdrabniacz";
	value 					=	3;
	visual 					=	"ItMi_Stomper.3DS";
	material 				=	MAT_WOOD;
	
	description				= 	name;
	COUNT[5] 				= 	value;
};
