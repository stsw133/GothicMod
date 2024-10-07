///******************************************************************************************

var int BigFish_Opener;
var int OldChest_Opener;
var int Shell_Opener;

///******************************************************************************************
/// Coins
///******************************************************************************************
prototype ItemPR_Coin (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	material					=	MAT_STONE;
	
	INV_ROTX					=	75;
	INV_ROTY					=	180;
	INV_ROTZ					=	180;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
instance ItMi_Gold (ItemPR_Coin)
{
	name						=	"Z³oto";
	flags 						=	ITEM_MULTI | ITEM_MISSION;
	
	value						=	1;
	visual						=	"ItMi_Gold.3ds";
	
	description					=	name;
};

instance ItMi_AncientCoin (ItemPR_Coin)
{
	name						=	"Moneta staro¿ytnych";
	visual						=	"ItMi_Coin_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywane w staro¿ytnej cywilizacji.";
	TEXT[1]						=	"Chêtnie skupowane przez kolekcjonerów.";
};

instance ItMi_FortuneCoin (ItemPR_Coin)
{
	name						=	"Moneta staro¿ytnych";
	visual						=	"ItMi_Coin_02.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywane w staro¿ytnej cywilizacji.";
	TEXT[1]						=	"Chêtnie skupowane przez kolekcjonerów.";
};

instance ItMi_OrcCoin (ItemPR_Coin)
{
	name						=	"Moneta orków";
	visual						=	"ItMi_Coin_03.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywane przez orków do handlu.";
};

///******************************************************************************************
/// Gold pockets
///******************************************************************************************
prototype ItemPR_GoldPocket (C_Item)
{
	name						=	"Skórzany mieszek";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_LEATHER;
	scemename					=	"MAPSEALED";
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
instance ItSe_GoldPocket25 (ItemPR_GoldPocket)
{
	value						=	25;
	visual						=	"ItMi_Pocket.3ds";
	on_state[0]					=	Use_ItSe_GoldPocket25;
	COUNT[5]					=	value;
};
func void Use_ItSe_GoldPocket25()
{
	var int items; items = Npc_HasItems(self, ItSe_GoldPocket25);
	Npc_RemoveInvItems (self, ItSe_GoldPocket25, items);
	B_PlayerFindItem (ItMi_Gold, items*25 + 25);
};

instance ItSe_GoldPocket50 (ItemPR_GoldPocket)
{
	value						=	50;
	visual						=	"ItMi_Pocket.3ds";
	on_state[0]					=	Use_ItSe_GoldPocket50;
	COUNT[5]					=	value;
};
func void Use_ItSe_GoldPocket50()
{
	var int items; items = Npc_HasItems(self, ItSe_GoldPocket50);
	Npc_RemoveInvItems (self, ItSe_GoldPocket50, items);
	B_PlayerFindItem (ItMi_Gold, items*50 + 50);
};

instance ItSe_GoldPocket100	(ItemPR_GoldPocket)
{
	value						=	100;
	visual						=	"ItMi_Pocket.3ds";
	on_state[0]					=	Use_ItSe_GoldPocket100;
	COUNT[5]					=	value;
};
func void Use_ItSe_GoldPocket100()
{
	var int items; items = Npc_HasItems(self, ItSe_GoldPocket100);
	Npc_RemoveInvItems (self, ItSe_GoldPocket100, items);
	B_PlayerFindItem (ItMi_Gold, items*100 + 100);
};

instance ItSe_GoldPocket200	(ItemPR_GoldPocket)
{
	value						=	200;
	visual						=	"ItMi_Pocket.3ds";
	on_state[0]					=	Use_ItSe_GoldPocket200;
	COUNT[5]					=	value;
};
func void Use_ItSe_GoldPocket200()
{
	var int items; items = Npc_HasItems(self, ItSe_GoldPocket200);
	Npc_RemoveInvItems (self, ItSe_GoldPocket200, items);
	B_PlayerFindItem (ItMi_Gold, items*200 + 200);
};

///******************************************************************************************
/// Silver
///******************************************************************************************
prototype ItemPR_SilverMisc (C_Item)
{
	name						=	"Srebrne kosztownoœci";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	125;
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_SilverNugget (ItemPR_Nugget)
{
	name						=	"Bry³ka srebra";
	value						=	24;
	visual						=	"ItMi_SilverNugget.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia wyrobów ze srebra.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_SilverCandleHolder (ItemPR_SilverMisc)
{
	visual						=	"ItMi_SilverCandleHolder.3ds";
	description					=	"Srebrny œwiecznik";
};

instance ItMi_SilverChalice (ItemPR_SilverMisc)
{
	visual						=	"ItMi_SilverChalice.3ds";
	description					=	"Srebrne naczynie";
};

instance ItMi_SilverCup (ItemPR_SilverMisc)
{
	visual						=	"ItMi_SilverCup.3ds";
	description					=	"Srebrny puchar";
};

instance ItMi_SilverNecklace (ItemPR_SilverMisc)
{
	visual						=	"ItMi_SilverNecklace.3ds";
	description					=	"Srebrny naszyjnik";
};

instance ItMi_SilverPlate (ItemPR_SilverMisc)
{
	visual						=	"ItMi_SilverPlate.3ds";
	description					=	"Srebrny talerz";
};

instance ItMi_SilverRing (ItemPR_SilverMisc)
{
	visual						=	"ItMi_SilverRing.3ds";
	description					=	"Srebrny pierœcieñ";
	INV_ROTX					=	INVCAM_X_RING_STANDARD;
	INV_ROTZ					=	INVCAM_Z_RING_STANDARD;
	INV_ZBIAS					=	INVCAM_ENTF_RING_STANDARD;
};

///******************************************************************************************
/// Gold
///******************************************************************************************
prototype ItemPR_GoldMisc (C_Item)
{
	name						=	"Z³ote kosztownoœci";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	250;
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_GoldNugget_Addon (ItemPR_Nugget)
{
	name						=	"Bry³ka z³ota";
	value						=	48;
	visual						=	"ItMi_GoldNugget.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia wyrobów ze z³ota.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_GoldCandleHolder (ItemPR_GoldMisc)
{
	visual						=	"ItMi_GoldCandleHolder.3ds";
	description					=	"Z³oty œwiecznik";
};

instance ItMi_GoldChalice (ItemPR_GoldMisc)
{
	visual						=	"ItMi_GoldChalice.3ds";
	description					=	"Z³ote naczynie";
};

instance ItMi_GoldCompass (ItemPR_GoldMisc)
{
	visual						=	"ItMi_Compass_01.3ds";
	description					=	"Z³oty kompas";
};

instance ItMi_GoldCup (ItemPR_GoldMisc)
{
	visual						=	"ItMi_GoldCup.3ds";
	description					=	"Z³oty puchar";
};

instance ItMi_GoldNecklace (ItemPR_GoldMisc)
{
	visual						=	"ItMi_GoldNecklace.3ds";
	description					=	"Z³oty naszyjnik";
};

instance ItMi_GoldPlate (ItemPR_GoldMisc)
{
	visual						=	"ItMi_GoldPlate.3ds";
	description					=	"Z³oty talerz";
};

instance ItMi_GoldRing (ItemPR_GoldMisc)
{
	visual						=	"ItMi_GoldRing.3ds";
	description					=	"Z³oty pierœcieñ";
	INV_ROTX					=	INVCAM_X_RING_STANDARD;
	INV_ROTZ					=	INVCAM_Z_RING_STANDARD;
	INV_ZBIAS					=	INVCAM_ENTF_RING_STANDARD;
};

///******************************************************************************************
/// Chests
///******************************************************************************************
instance ItMi_GoldChest (ItemPR_Misc)
{
	name						=	"Z³ota skrzyneczka";
	value						=	500;
	visual						=	"ItMi_GoldChest.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_JeweleryChest (ItemPR_Misc)
{
	name						=	"Szkatu³ka z klejnotami";
	value						=	1000;
	visual						=	"ItMi_JeweleryChest.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Gems
///******************************************************************************************
instance ItMi_Aquamarine (ItemPR_Misc)
{
	name						=	"Akwamaryn";
	value						=	100;
	visual						=	"ItMi_Aquamarine.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"tworzenia niektórych run.";
	COUNT[5]					=	value;
};

instance ItMi_Emerald (ItemPR_Misc)
{
	name						=	"Szmaragd";
	value						=	300;
	visual						=	"ItMi_Emerald.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"tworzenia niektórych run.";
	COUNT[5]					=	value;
};

instance ItMi_Ruby (ItemPR_Misc)
{
	name						=	"Rubin";
	value						=	300;
	visual						=	"ItMi_Ruby.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"tworzenia niektórych run.";
	COUNT[5]					=	value;
};

instance ItMi_Diamond (ItemPR_Misc)
{
	name						=	"Diament";
	value						=	500;
	visual						=	"ItMi_Diamond.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"tworzenia niektórych run.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Pearls
///******************************************************************************************
instance ItMi_WhitePearl (ItemPR_Misc)
{
	name						=	"Per³a";
	value						=	100;
	visual						=	"ItMi_WhitePearl_01.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia niektórych run.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_DarkPearl (ItemPR_Misc)
{
	name						=	"Czarna per³a";
	value						=	500;
	visual						=	"ItMi_DarkPearl.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia niektórych run.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
/// Shells
///******************************************************************************************
instance ItMi_Shell (ItemPR_Misc)
{
	name						=	"Muszla";
	value						=	15;
	visual						=	"ItMi_Shell_01.3ds";
	material					=	MAT_STONE;
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItMi_Shell;
	
	description					=	name;
	TEXT[1]						=	"Mo¿e zawieraæ per³ê lub";
	TEXT[2]						=	"rzadziej czarn¹ per³ê.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC2_STANDARD;
};
func void Use_ItMi_Shell()
{
	var int items; items = Npc_HasItems(self, ItMi_Shell);
	Npc_RemoveInvItems (self, ItMi_Shell, items);
	
	var int i;
	repeat(i, items + 1);
	Shell_Opener += 1;
	
	if (Shell_Opener % 50 == 0)
	{
		B_PlayerFindItem (ItMi_DarkPearl, 1);
	}
	else if (Shell_Opener % 10 == 1)
	{
		B_PlayerFindItem (ItMi_WhitePearl, 1);
	}
	else if (Shell_Opener % 7 == 0)
	{
		B_PlayerFindItem (ItMi_Quartz, 1);
	}
	else if (Shell_Opener % 5 == 0)
	{
		B_PlayerFindItem (ItMi_Calcium, 1);
	}
	else if (Shell_Opener % 2 == 0)
	{
		B_PlayerFindItem (ItFo_Oyster, 1);
	}
	else if (items == 0)
	{
		//B_Say_Overlay (self, self, "$NOTHINGTOGET02");
		Print (PRINT_NOTHINGTOGET02);
	};
	end;
};

///******************************************************************************************
/// Secret fish
///******************************************************************************************
instance ItSe_BigFish (ItemPR_Misc)
{
	name						=	"Ciê¿ka ryba";
	value						=	25;
	visual						=	"ItFo_Fish.3ds";
	material					=	MAT_LEATHER;
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_BigFish;
	
	description					=	name;
	TEXT[2]						=	"W tej rybie coœ schowano.";
	COUNT[5]					=	value;
};
func void Use_ItSe_BigFish()
{
	var int items; items = Npc_HasItems(self, ItSe_BigFish);
	Npc_RemoveInvItems (self, ItSe_BigFish, items);
	
	var int i;
	repeat(i, items + 1);
	BigFish_Opener += 1;
	
	if (BigFish_Opener % 50 == 0)
	{
		B_PlayerFindItem (ItMi_Diamond, 1);
	}
	else if (BigFish_Opener % 30 == 0)
	{
		B_PlayerFindItem (ItSc_Stealth, 1);
	}
	else if (BigFish_Opener % 25 == 0)
	{
		B_PlayerFindItem (ItRi_Prot_Fire_01, 1);
	}
	else if (BigFish_Opener % 15 == 0)
	{
		B_PlayerFindItem (ItMi_Nugget, 1);
	}
	else if (BigFish_Opener % 9 == 1)
	{
		B_PlayerFindItem (ItKe_Lockpick, 3);
	}
	else if (BigFish_Opener % 7 == 3)
	{
		B_PlayerFindItem (ItMi_Gold, 25);
	}
	else if (BigFish_Opener % 5 == 1)
	{
		B_PlayerFindItem (ItRw_Arrow, 10);
	}
	else if (BigFish_Opener % 5 == 3)
	{
		B_PlayerFindItem (ItRw_Bolt, 10);
	}
	else if (BigFish_Opener % 4 == 1)
	{
		B_PlayerFindItem (ItMi_GoldNugget_Addon, 1);
	}
	else if (BigFish_Opener % 4 == 3)
	{
		B_PlayerFindItem (ItAt_Poison, 1);
	}
	else if (BigFish_Opener % 3 == 0)
	{
		B_PlayerFindItem (ItMi_SilverNugget, 1);
	}
	else if (items == 0)
	{
		//B_Say_Overlay (self, self, "$NOTHINGTOGET02");
		Print (PRINT_NOTHINGTOGET02);
	};
	end;
};

///******************************************************************************************
/// Old chests
///******************************************************************************************
instance ItSe_OldChest (ItemPR_Misc)
{
	name						=	"Stara skrzynka";
	value						=	20;
	visual						=	"ItMi_OldChest.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_OldChest;
	
	description					=	name;
	TEXT[2]						=	"W tej skrzynce coœ schowano.";
	COUNT[5]					=	value;
};
func void Use_ItSe_OldChest()
{
	if (!Npc_GetTalentSkill(self, NPC_TALENT_PICKLOCK) || !Npc_HasItems(self, ItKe_Lockpick))
	{
		if (!Npc_GetTalentSkill(self, NPC_TALENT_PICKLOCK))
		{
			Print(PRINT_NoPicklockTalent);
			B_Say_Overlay (self, self, "$NOPICKLOCKTALENT");
		}
		else
		{
			Print(PRINT_PicklockMissing);
			B_Say_Overlay (self, self, "$PICKLOCKMISSING");
		};
		
		CreateInvItem (self, ItSe_OldChest);
		return;
	};
	
	var int items; items = Npc_HasItems(self, ItSe_OldChest);
	Npc_RemoveInvItems (self, ItSe_OldChest, items);
	
	var int i;
	repeat(i, items + 1);
	OldChest_Opener += 1;
	
	if (OldChest_Opener == 1)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 2)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 3)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 4)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 5)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 6)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 7)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 8)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 9)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 10)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 11)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 12)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 13)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 14)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 15)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 16)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 17)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 18)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 19)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 20)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 21)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 22)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 23)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 24)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 25)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 26)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 27)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 28)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 29)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 30)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 31)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 32)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 33)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 34)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 35)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 36)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 37)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 38)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 39)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 40)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 41)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 42)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 43)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 44)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 45)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 46)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 47)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 48)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 49)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 50)
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	};
	end;
};
