///******************************************************************************************
prototype ItemPR_Mesh (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	
	TEXT[0]						=	"ID:";
	TEXT[1]						=	"Visual:";
	INV_ROTY					=	330;
	INV_ANIMATE					=	true;
};

///******************************************************************************************
/// Bodies
///******************************************************************************************
instance ItMe_Orc (ItemPR_Mesh)
{
	name						=	"ItMe_Orc";
	visual						=	"ORC_BODY.asc";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Sheep (ItemPR_Mesh)
{
	name						=	"ItMe_Sheep";
	visual						=	"SHEEP_BODY.asc";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
/// Manmade
///******************************************************************************************
instance ItMe_Altar (ItemPR_Mesh)
{
	name						=	"ItMe_Altar";
	visual						=	"NW_MONASTERY_ALTAR_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cannon (ItemPR_Mesh)
{
	name						=	"ItMe_Cannon";
	visual						=	"NW_HARBOUR_CANON_01.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_CannonBalls (ItemPR_Mesh)
{
	name						=	"ItMe_CannonBalls";
	visual						=	"NW_HARBOUR_CANONBALLS_01.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Car (ItemPR_Mesh)
{
	name						=	"ItMe_Car";
	visual						=	"Addon_CanyonObject_Car_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cart_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Cart_01";
	visual						=	"NW_CITY_CART_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Coffin (ItemPR_Mesh)
{
	name						=	"ItMe_Coffin";
	visual						=	"NW_EVT_CEMENTARYCOFFIN_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Furnace (ItemPR_Mesh)
{
	name						=	"ItMe_Furnace";
	visual						=	"BSFIRE_OC.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Gallows (ItemPR_Mesh)
{
	name						=	"ItMe_Gallows";
	visual						=	"NW_CITY_GALLOWS_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_PalArmor (ItemPR_Mesh)
{
	name						=	"ItMe_PalArmor";
	visual						=	"NW_CITY_KNIGHT_ARMOR_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Rope (ItemPR_Mesh)
{
	name						=	"ItMe_Rope";
	visual						=	"NW_HARBOUR_ROPE_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Barrel_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Barrel_01";
	visual						=	"NW_HARBOUR_BARREL_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Barrel_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Barrel_02";
	visual						=	"NW_HARBOUR_BARRELGROUP_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Barrel_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Barrel_03";
	visual						=	"NW_HARBOUR_BARRELGROUP_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Barrel_Weapon (ItemPR_Mesh)
{
	name						=	"ItMe_Barrel_Weapon";
	visual						=	"NW_CITY_WEAPON_BARREL_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Boat_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Boat_01";
	visual						=	"NW_HARBOUR_SMALL_BOAT_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Boat_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Boat_02";
	visual						=	"NW_HARBOUR_SMALL_BOAT_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Boat_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Boat_03";
	visual						=	"NW_HARBOUR_SMALL_BOAT_03.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Ship_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Ship_01";
	visual						=	"NW_CITY_SHIP_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_ShipWreck_01 (ItemPR_Mesh)
{
	name						=	"ItMe_ShipWreck_01";
	visual						=	"OW_SHIPWRECK_TAIL.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_ShipWreck_02 (ItemPR_Mesh)
{
	name						=	"ItMe_ShipWreck_02";
	visual						=	"OW_SHIPWRECK_BUG.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_BookShelf_01 (ItemPR_Mesh)
{
	name						=	"ItMe_BookShelf_01";
	visual						=	"NW_CITY_BOOKSHELF_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_BookStand_01 (ItemPR_Mesh)
{
	name						=	"ItMe_BookStand_01";
	visual						=	"BOOK_BLUE.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_BookStand_02 (ItemPR_Mesh)
{
	name						=	"ItMe_BookStand_02";
	visual						=	"BOOK_NW_CITY_CUPBOARD_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_BookStand_03 (ItemPR_Mesh)
{
	name						=	"ItMe_BookStand_03";
	visual						=	"BOOK_ADDON_STONEPLATE_01.asc";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cupboard_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Cupboard_01";
	visual						=	"NW_CITY_CUPBOARD_POOR_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cupboard_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Cupboard_02";
	visual						=	"NW_CITY_CUPBOARD_POOR_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cupboard_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Cupboard_03";
	visual						=	"NW_CITY_CUPBOARD_RICH_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cupboard_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Cupboard_04";
	visual						=	"NW_CITY_CUPBOARD_RICH_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Crate_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Crate_01";
	visual						=	"AW_CRATE_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Crate_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Crate_02";
	visual						=	"OM_OREBOX_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Crate_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Crate_03";
	visual						=	"NW_HARBOUR_CRATEPILE_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_FirePlace_01 (ItemPR_Mesh)
{
	name						=	"ItMe_FirePlace_01";
	visual						=	"NW_MISC_FIREPLACE_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_FirePlace_02 (ItemPR_Mesh)
{
	name						=	"ItMe_FirePlace_02";
	visual						=	"OC_FIREPLACE_V5.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_FishingNet_01 (ItemPR_Mesh)
{
	name						=	"ItMe_FishingNet_01";
	visual						=	"NW_HARBOUR_FISHINGNETSMALL.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_FishingNet_02 (ItemPR_Mesh)
{
	name						=	"ItMe_FishingNet_02";
	visual						=	"NW_HARBOUR_FISHINGNETBIG.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_FishingNet_03 (ItemPR_Mesh)
{
	name						=	"ItMe_FishingNet_03";
	visual						=	"NW_HARBOUR_FISHINGNET_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Grave_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Grave_01";
	visual						=	"NW_MISC_GRAVESTONE_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Grave_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Grave_02";
	visual						=	"NW_MISC_GRAVESTONE_02.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Grave_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Grave_03";
	visual						=	"NW_MISC_FIELDGRAVE_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_GoldHeap (ItemPR_Mesh)
{
	name						=	"ItMe_GoldHeap";
	visual						=	"ITME_GOLDHEAP.3ds";
	material					=	MAT_STONE;

	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_OreHeap (ItemPR_Mesh)
{
	name						=	"ItMe_OreHeap";
	visual						=	"OM_OREHEAP_SMALL_01.3ds";
	material					=	MAT_STONE;

	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Treasure (ItemPR_Mesh)
{
	name						=	"ItMe_Treasure";
	visual						=	"TREASURE2.3ds";
	material					=	MAT_STONE;

	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Hut_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Hut_01";
	visual						=	"NW_MISC_POOR_HUT_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Hut_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Hut_02";
	visual						=	"OW_LONEHUT.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Hut_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Hut_03";
	visual						=	"OW_MISC_BURNEDHUT_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Market_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Market_01";
	visual						=	"NW_CITY_MARKETSTALL_JUNKSHOP_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Market_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Market_02";
	visual						=	"NW_CITY_MARKETSTALL_WEAPONS_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Market_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Market_03";
	visual						=	"NW_CITY_MARKETSTALL_ALCHEMY_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Market_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Market_04";
	visual						=	"NW_CITY_MARKETSTALL_FOOD_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_OrcStatue (ItemPR_Mesh)
{
	name						=	"ItMe_OrcStatue";
	visual						=	"OSTA_AXE2.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_PalStatue (ItemPR_Mesh)
{
	name						=	"ItMe_PalStatue";
	visual						=	"NW_CITY_KNIGHT_STATUE_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_StoneGuardian (ItemPR_Mesh)
{
	name						=	"ItMe_StoneGuardian";
	visual						=	"ADDON_LSTTEMP_STONEGUARDIAN_LARGE_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Platform_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Platform_01";
	visual						=	"OW_FOCUS_V01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Platform_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Platform_02";
	visual						=	"OW_FOCUS_V02.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Platform_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Platform_02";
	visual						=	"OW_FOCUSPLATTFORM.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Skeleton_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Skeleton_01";
	visual						=	"ORC_SKELETON_V1.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Skeleton_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Skeleton_02";
	visual						=	"ORC_SKELETON_V2.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Skeleton_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Skeleton_03";
	visual						=	"ORC_SKELETON_V3.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Skeleton_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Skeleton_04";
	visual						=	"ORC_SKELETON_V4.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Table_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Table_01";
	visual						=	"NW_CITY_TABLE_PEASANT_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Table_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Table_02";
	visual						=	"NW_CITY_TABLE_PEASANT_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Table_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Table_03";
	visual						=	"NW_CITY_TABLE_RICH_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Table_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Table_04";
	visual						=	"NW_CITY_TABLE_RICH_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Table_05 (ItemPR_Mesh)
{
	name						=	"ItMe_Table_05";
	visual						=	"NW_CITY_TABLE_WAR_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Torture_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Torture_01";
	visual						=	"NW_DRAGONISLE_TORTURE_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Torture_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Torture_02";
	visual						=	"NW_DRAGONISLE_TORTURE_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Torture_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Torture_03";
	visual						=	"NW_DRAGONISLE_TORTURE_03.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Torture_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Torture_04";
	visual						=	"NW_DRAGONISLE_TORTURE_04.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Torture_05 (ItemPR_Mesh)
{
	name						=	"ItMe_Torture_05";
	visual						=	"NW_DRAGONISLE_TORTURE_05.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Books_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Books_01";
	visual						=	"DT_BOOKS_01.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Map_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Map_01";
	visual						=	"NW_CITY_MAP_WAR_CLOSED_01.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Map_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Map_02";
	visual						=	"NW_CITY_MAP_WAR_OPEN_01.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Scrolls_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Scrolls_01";
	visual						=	"ADDON_DUNGEON_SCROLLS_01.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Scrolls_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Scrolls_02";
	visual						=	"ADDON_DUNGEON_SCROLLS_02.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Penta (ItemPR_Mesh)
{
	name						=	"ItMe_Penta";
	visual						=	"DT_2ND_FLOOR_BANNKREIS_02.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
/// MOBs
///******************************************************************************************
instance ItMe_Anvil (ItemPR_Mesh)
{
	name						=	"ItMe_Anvil";
	visual						=	"BSANVIL_OC.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Cauldron (ItemPR_Mesh)
{
	name						=	"ItMe_Cauldron";
	visual						=	"CAULDRON_OC.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Lab (ItemPR_Mesh)
{
	name						=	"ItMe_Lab";
	visual						=	"LAB_PSI.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_RuneMaker (ItemPR_Mesh)
{
	name						=	"ItMe_RuneMaker";
	visual						=	"RMAKER_1.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Sharp (ItemPR_Mesh)
{
	name						=	"ItMe_Sharp";
	visual						=	"BSSHARP_OC.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Stove (ItemPR_Mesh)
{
	name						=	"ItMe_Stove";
	visual						=	"STOVE_NW_CITY_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_WaterBucket (ItemPR_Mesh)
{
	name						=	"ItMe_WaterBucket";
	visual						=	"BSCOOL_OC.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_WaterPipe (ItemPR_Mesh)
{
	name						=	"ItMe_WaterPipe";
	visual						=	"SMOKE_WATERPIPE.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_AdanosStatue_01 (ItemPR_Mesh)
{
	name						=	"ItMe_AdanosStatue_01";
	visual						=	"INNOS_BELIAR_ADDON_01.asc";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_BeliarStatue_01 (ItemPR_Mesh)
{
	name						=	"ItMe_BeliarStatue_01";
	visual						=	"INNOS_BELIAR_ADDON_01.asc";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_InnosStatue_01 (ItemPR_Mesh)
{
	name						=	"ItMe_InnosStatue_01";
	visual						=	"INNOS_NW_MISC_01.asc";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Bed_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Bed_01";
	visual						=	"BEDHIGH_2_OC.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Bed_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Bed_02";
	visual						=	"BEDHIGH_NW_EDEL_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Bed_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Bed_03";
	visual						=	"BEDHIGH_NW_NORMAL_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Bed_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Bed_04";
	visual						=	"BEDHIGH_NW_MASTER_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Bench_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Bench_01";
	visual						=	"BENCH_NW_OW_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Bench_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Bench_02";
	visual						=	"BENCH_NW_CITY_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Bench_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Bench_03";
	visual						=	"BENCH_NW_CITY_02.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Chair_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Chair_01";
	visual						=	"CHAIR_NW_NORMAL_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Chair_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Chair_02";
	visual						=	"CHAIR_NW_EDEL_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Chest_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Chest_01";
	visual						=	"CHESTSMALL_OCCHESTSMALLLOCKED.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Chest_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Chest_02";
	visual						=	"CHESTBIG_OCCHESTLARGELOCKED.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Chest_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Chest_03";
	visual						=	"CHESTSMALL_NW_POOR_LOCKED.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Chest_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Chest_04";
	visual						=	"CHESTBIG_NW_RICH_LOCKED.mds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Throne_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Throne_01";
	visual						=	"THRONE_NW_CITY_01.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Throne_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Throne_02";
	visual						=	"THRONE_BIG.asc";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
/// Nature
///******************************************************************************************
instance ItMe_Bush_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Bush_01";
	visual						=	"NW_NATURE_BUSH_120P.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Bush_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Bush_02";
	visual						=	"NW_NATURE_BUSH_25P.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Crystal_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Crystal_01";
	visual						=	"ADDON_STONES_CRYSTAL_01_228P.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Crystal_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Crystal_02";
	visual						=	"ADDON_STONES_CRYSTAL_02_228P.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Crystal_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Crystal_03";
	visual						=	"ADDON_STONES_CRYSTAL_ROSE_01_228P.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Crystal_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Crystal_04";
	visual						=	"ADDON_STONES_CRYSTAL_ROSE_02_228P.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_BigStone (ItemPR_Mesh)
{
	name						=	"ItMe_BigStone";
	visual						=	"MIN_LOB_STONE_V3_20.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_OldTree_01 (ItemPR_Mesh)
{
	name						=	"ItMe_OldTree_01";
	visual						=	"OW_NATURE_OLDTREE_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_OldTree_02 (ItemPR_Mesh)
{
	name						=	"ItMe_OldTree_02";
	visual						=	"OW_NATURE_OLDTREE_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Straw_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Straw_01";
	visual						=	"NW_MISC_STRAW_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Straw_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Straw_02";
	visual						=	"NW_MISC_STRAW_02.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Straw_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Straw_03";
	visual						=	"NW_MISC_STRAW_GROUP_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Tree_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Tree_01";
	visual						=	"ADDON_PLANTS_TREE_01_353P.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Tree_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Tree_02";
	visual						=	"ADDON_VALLEYPLANT_TREE_04_XL_304P.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Tree_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Tree_03";
	visual						=	"BEREZA.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
/// Orcmade
///******************************************************************************************
instance ItMe_Palissade (ItemPR_Mesh)
{
	name						=	"ItMe_Palissade";
	visual						=	"OW_PALISSADE.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Tower (ItemPR_Mesh)
{
	name						=	"ItMe_Tower";
	visual						=	"OW_Lookout.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

///******************************************************************************************
instance ItMe_Tent_01 (ItemPR_Mesh)
{
	name						=	"ItMe_Tent_01";
	visual						=	"OW_MISC_TENT_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Tent_02 (ItemPR_Mesh)
{
	name						=	"ItMe_Tent_02";
	visual						=	"NW_MISC_BIG_TENT_430P.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Tent_03 (ItemPR_Mesh)
{
	name						=	"ItMe_Tent_03";
	visual						=	"OW_ORCTENT_SMALL_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};

instance ItMe_Tent_04 (ItemPR_Mesh)
{
	name						=	"ItMe_Tent_04";
	visual						=	"OW_ORCTENT_LARGE_01.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[0]					=	Hlp_GetInstanceID(self);
	TEXT[2]						=	visual;
};
