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
	TEXT[0]						=	"U¿ywane w staro¿ytnej cywilizacji.";
	TEXT[1]						=	"Chêtnie skupowane przez kolekcjonerów.";
};

instance ItMi_FortuneCoin (ItemPR_Coin)
{
	name						=	"Moneta staro¿ytnych";
	visual						=	"ItMi_Coin_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"U¿ywane w staro¿ytnej cywilizacji.";
	TEXT[1]						=	"Chêtnie skupowane przez kolekcjonerów.";
};

instance ItMi_OrcCoin (ItemPR_Coin)
{
	name						=	"Moneta orków";
	visual						=	"ItMi_Coin_03.3ds";
	
	description					=	name;
	TEXT[0]						=	"U¿ywane przez orków do handlu.";
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
instance ItSe_GoldPocket10 (ItemPR_GoldPocket)
{
	value						=	10;
	visual						=	"ItMi_Pocket.3ds";
	on_state[0]					=	Use_ItSe_GoldPocket10;
	COUNT[5]					=	value;
};
func void Use_ItSe_GoldPocket10()
{
	var int items; items = Npc_HasItems(self, ItSe_GoldPocket10);
	Npc_RemoveInvItems (self, ItSe_GoldPocket10, items);
	B_PlayerFindItem (ItMi_Gold, items*10 + 10);
};

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
	TEXT[0]						=	"Sk³adnik wyrobów ze srebra.";
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
	TEXT[0]						=	"Sk³adnik wyrobów ze z³ota.";
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
/// Valuables
///******************************************************************************************
instance ItMi_InnosStatue (ItemPR_Misc)
{
	name						=	"Pos¹¿ek Innosa";
	value						=	100;
	visual						=	"ItMi_InnosStatue.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	COUNT[5]					=	value;
};

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
	TEXT[0]						=	"Sk³adnik niektórych broni,";
	TEXT[1]						=	"artefaktów, run i zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_Emerald (ItemPR_Misc)
{
	name						=	"Szmaragd";
	value						=	300;
	visual						=	"ItMi_Emerald.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik niektórych broni,";
	TEXT[1]						=	"artefaktów, run i zwojów.";
	COUNT[5]					=	value;
	INV_ROTX					=	75;
	INV_ROTY					=	180;
	INV_ROTZ					=	180;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_Ruby (ItemPR_Misc)
{
	name						=	"Rubin";
	value						=	300;
	visual						=	"ItMi_Ruby.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik niektórych broni,";
	TEXT[1]						=	"artefaktów, run i zwojów.";
	COUNT[5]					=	value;
	INV_ROTX					=	75;
	INV_ROTY					=	180;
	INV_ROTZ					=	180;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_Diamond (ItemPR_Misc)
{
	name						=	"Diament";
	value						=	500;
	visual						=	"ItMi_Diamond.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik niektórych broni,";
	TEXT[1]						=	"artefaktów, run i zwojów.";
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
	TEXT[0]						=	"Sk³adnik niektórych broni,";
	TEXT[1]						=	"artefaktów, run i zwojów.";
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
	TEXT[0]						=	"Sk³adnik niektórych broni,";
	TEXT[1]						=	"artefaktów, run i zwojów.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
/// Containers
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
	TEXT[0]						=	"Mo¿e zawieraæ per³ê lub";
	TEXT[1]						=	"rzadziej czarn¹ per³ê.";
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
instance ItSe_BigFish (ItemPR_Misc)
{
	name						=	"Ciê¿ka ryba";
	value						=	25;
	visual						=	"ItFo_Fish.3ds";
	material					=	MAT_LEATHER;
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_BigFish;
	
	description					=	name;
	TEXT[0]						=	"W tej rybie coœ schowano.";
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
instance ItSe_OldChest (ItemPR_Misc)
{
	name						=	"Stara skrzynka";
	value						=	20;
	visual						=	"ItMi_OldChest.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_OldChest;
	
	description					=	name;
	TEXT[0]						=	"W tej skrzynce coœ schowano.";
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
	//var int lockpicks; lockpicks = Npc_HasItems(self, ItKe_Lockpick);
	//if (items > lockpicks)
	//{
	//	items = lockpicks;
	//};
	Npc_RemoveInvItems (self, ItSe_OldChest, items);
	//Npc_RemoveInvItems (self, ItKe_Lockpick, items);
	
	var int i;
	repeat(i, items + 1);
	OldChest_Opener += 1;
	
	if (OldChest_Opener == 1)		/// 60 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 2)	/// 70 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 3)	/// 80 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 4)	/// 90 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 5)	/// 100 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 6)	/// 110 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 7)	/// 120 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 8)	/// 130 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 9)	/// 140 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 10)	/// 150 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 11)	/// 160 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 12)	/// 170 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 13)	/// 180 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 14)	/// 190 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 15)	/// 200 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 16)	/// 210 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 17)	/// 220 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 18)	/// 230 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 19)	/// 240 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 20)	/// 250 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 21)	/// 260 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 22)	/// 270 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 23)	/// 280 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 24)	/// 290 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 25)	/// 300 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 26)	/// 310 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 27)	/// 320 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 28)	/// 330 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 29)	/// 340 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 30)	/// 350 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 31)	/// 360 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 32)	/// 370 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 33)	/// 380 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 34)	/// 390 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 35)	/// 400 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 36)	/// 410 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 37)	/// 420 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 38)	/// 430 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 39)	/// 440 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 40)	/// 450 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 41)	/// 460 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 42)	/// 470 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 43)	/// 480 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 44)	/// 490 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 45)	/// 500 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 46)	/// 510 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 47)	/// 520 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 48)	/// 530 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 49)	/// 540 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	}
	else if (OldChest_Opener == 50)	/// 550 gold
	{
		B_PlayerFindItem (ItPo_Health_01, 1);
		B_PlayerFindItem (ItPo_Mana_01, 1);
	};
	end;
};
