///******************************************************************************************
prototype ItemPR_Food (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					=	NAME_Value;
};
prototype ItemPR_iFood (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
///	Inedible food
///******************************************************************************************
instance ItFo_Coconut (ItemPR_iFood)
{
	name 			=	"Kokos";
	visual 			=	"ItFo_Coconut.3DS";
	value 			=	4;
	
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItFo_Egg (ItemPR_iFood)
{
	name 			=	"Jajko";
	visual 			=	"ItFo_Egg.3DS";
	value 			=	2;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItFo_Fish (ItemPR_iFood)
{
	name 			=	"Ryba";
	visual 			=	"ItFo_Fish.3DS";
	value 			=	6;
	
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItFoMuttonRaw (ItemPR_iFood)
{
	name 			=	"Miêso";
	visual 			=	"ItFoMuttonRaw.3DS";
	value 			=	10;
	
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItFo_Onion (ItemPR_iFood)
{
	name 			=	"Cebula";
	visual 			=	"ItFo_Onion.3DS";
	value 			=	2;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItFo_Addon_Pfeffer_01 (ItemPR_iFood)
{
	name 			=	"Torebka przypraw";
	visual 			=	"ITMI_POCKET_RED.3DS";
	value 			=	100;
	
	description		=	"Ziarna czerwonego pieprzu";
	COUNT[5]		= 	value;
};
instance ItFo_PineApple (ItemPR_iFood)
{
	name 			=	"Ananas";
	visual 			=	"ItFo_PineApple.3DS";
	value 			=	4;
	
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItFo_Potato (ItemPR_iFood)
{
	name 			=	"Ziemniak";
	visual 			=	"ItFo_Potato.3DS";
	value 			=	2;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItFo_Rice (ItemPR_iFood)
{
	name 			=	"Ry¿";
	visual 			=	"ItFo_Rice.3ds";
	value 			=	2;
	
	material 		=	MAT_WOOD;
	description		=	name;
	COUNT[5]		=	value;
};
instance ItFo_Sugar (ItemPR_iFood)
{
	name 			=	"Cukier";
	visual 			=	"ItFo_Sugar.3ds";
	value 			=	2;
	
	description		=	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Fruits & vegetables
///******************************************************************************************
prototype ItemPR_LightFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	4;
	on_state[0]				=	Use_ItFo_Fruit;
	scemeName				=	"FOOD";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	10;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Fruit()
{
	if (Npc_IsPlayer(self))
	{
		foodTime += 10;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 10);
	};
};
///******************************************************************************************
instance ItFo_Apple (ItemPR_LightFood)
{
	name 			=	"Jab³ko";
	visual 			=	"ItFo_Apple.3DS";
	description		=	name;
};
instance ItFo_Banana (ItemPR_LightFood)
{
	name 			=	"Banan";
	visual 			=	"ItFo_Banana.3DS";
	description		=	name;
};
instance ItFo_Carrot (ItemPR_LightFood)
{
	name 			=	"Marchew";
	visual 			=	"ItFo_Carrot.3DS";
	description		=	name;
};
instance ItFo_Pear (ItemPR_LightFood)
{
	name 			=	"Gruszka";
	visual 			=	"ItFo_Pear.3DS";
	description		=	name;
};
instance ItFo_MeatbugFlesh (ItemPR_LightFood)
{
	name 			=	"Miêso chrz¹szcza";
	visual 			=	"ITAT_MEATBUGFLESH.3DS";
	description		=	name;
};
///******************************************************************************************
///	Standard food
///******************************************************************************************
prototype ItemPR_StandardFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	12;
	on_state[0]				=	Use_ItFo_Normal;
	scemeName				=	"FOODHUGE";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	30;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Normal()
{
	if (Npc_IsPlayer(self))
	{
		foodTime += 30;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 30);
	};
};
///******************************************************************************************
instance ItFo_Bread (ItemPR_StandardFood)
{
	name 			=	"Chleb";
	visual 			=	"ItFo_Bread.3DS";
	description		=	name;
};
instance ItFo_Cheese (ItemPR_StandardFood)
{
	name 			=	"Ser";
	visual 			=	"ItFo_Cheese.3DS";
	description		=	name;
};
instance ItFo_WhiteCheese (ItemPR_StandardFood)
{
	name 			=	"Ser";
	visual 			=	"ItFo_WhiteCheese.3DS";
	description		=	name;
};
instance ItFo_FriedFish (ItemPR_StandardFood)
{
	name 			=	"Sma¿ona ryba";
	visual 			=	"ItFo_FriedFish.3DS";
	description		=	name;
};
///******************************************************************************************
///	Meat
///******************************************************************************************
prototype ItemPR_MeatFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_Meat;
	scemeName				=	"MEAT";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	50;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Meat()
{
	if (Npc_IsPlayer(self))
	{
		foodTime += 50;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 50);
	};
};
///******************************************************************************************
instance ItFoMutton (ItemPR_MeatFood)
{
	name 			=	"Sma¿one miêso";
	visual 			=	"ItFoMutton.3DS";
	description		=	name;
};
instance ItFo_Bacon (ItemPR_MeatFood)
{
	name 			=	"Szynka";
	visual 			=	"ItFo_Bacon.3ds";
	description		=	name;
};
instance ItFo_Sausage (ItemPR_MeatFood)
{
	name 			=	"Kie³basa";
	visual 			=	"ItFo_Sausage.3DS";
	description		=	name;
};
///******************************************************************************************
///	Sweets
///******************************************************************************************
prototype ItemPR_SweetFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_STONE;
	
	value 					=	12;
	on_state[0]				=	Use_ItFo_Sweet;
	scemeName				=	"FOODHUGE";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	8;
	TEXT[2]					= 	NAME_Bonus_Mana;
	COUNT[2]				= 	4;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Sweet()
{
	if (Npc_IsPlayer(self))
	{
		foodTime += 8;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 8);
	};
	Npc_ChangeAttribute	(self, ATR_MANA, 4);
};
///******************************************************************************************
instance ItFo_Honey (ItemPR_SweetFood)
{
	name 			=	"Miód";
	visual 			=	"ItFo_Honey.3DS";
	description		=	name;
};
instance ItFo_Chocolate (ItemPR_SweetFood)
{
	name 			=	"Czekolada";
	visual 			=	"ItFo_Chocolate.3DS";
	description		=	name;
};
instance ItFo_Jam (ItemPR_SweetFood)
{
	name 			=	"D¿em";
	visual 			=	"ItFo_Jam.3DS";
	description		=	name;
};
instance ItFo_Cake (ItemPR_SweetFood)
{
	name 			=	"Ciasto";
	visual 			=	"ItFo_Cake.3DS";
	description		=	name;
};
///******************************************************************************************
///	Stews
///******************************************************************************************
prototype ItemPR_StewFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_Stew;
	scemeName				=	"RICE";
	
	description				=	name;
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	50;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Stew()
{
	if (Npc_IsPlayer(self))
	{
		foodTime += 50;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 50);
	};
};
///******************************************************************************************
instance ItFo_Stew (ItemPR_StewFood)
{
	name 			=	"Gulasz";
	visual 			=	"ItFo_Stew.3ds";
	description		=	name;
};
instance ItFo_Addon_FireStew (ItemPR_StewFood)
{
	name 			=	"Ognisty gulasz";
	visual 			=	"ItFo_Stew.3ds";
	on_state[0]		=	Use_XPStew;
	description		= 	name;
};
instance ItFo_Addon_MeatSoup (ItemPR_StewFood)
{
	name 			=	"Gulasz miêsny";
	visual 			=	"ItFo_Stew.3ds";
	on_state[0]		=	Use_XPStew;
	description		= 	name;
};
instance ItFo_XPStew (ItemPR_StewFood)
{
	name 			=	"Gulasz Thekli";
	visual 			=	"ItFo_Stew.3ds";
	on_state[0]		=	Use_XPStew;
	description		= 	name;
};
func void Use_XPStew()
{
	Use_ItFo_Stew();
	B_GivePlayerXP(200);
};
///******************************************************************************************
///	Soups
///******************************************************************************************
prototype ItemPR_SoupFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	12;
	on_state[0]				=	Use_ItFo_Soup;
	scemeName				=	"RICE";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	30;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Soup()
{
	if (Npc_IsPlayer(self))
	{
		foodTime += 30;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 30);
	};
};
///******************************************************************************************
instance ItFo_FishSoup (ItemPR_SoupFood)
{
	name 			=	"Zupa rybna";
	visual 			=	"ItFo_FishSoup.3ds";
	description		=	name;
};
instance ItFo_MushroomSoup (ItemPR_SoupFood)
{
	name 			=	"Zupa grzybowa";
	visual 			=	"ItFo_MushroomSoup.3ds";
	description		=	name;
};
instance ItFo_RiceSoup (ItemPR_SoupFood)
{
	name 			=	"Zupa mleczna z ry¿em";
	visual 			=	"ItFo_RiceSoup.3ds";
	description		=	name;
};
///******************************************************************************************
///	Water & milk
///******************************************************************************************
instance ItFo_Water (ItemPR_Food)
{
	name 			=	"Woda";
	value 			=	3;
	visual 			=	"ItFo_Water.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTION";
	on_state[0]		=	Use_ItFo_Water;
	
	description		=	name;
	TEXT[1]			= 	NAME_Bonus_Energy;
	COUNT[1]		=	100;
	COUNT[5]		=	value;
};
func void Use_ItFo_Water()
{
	self.aivar[AIV_Energy] += 100;
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
instance ItFo_Milk (ItemPR_Food)
{
	name 			=	"Mleko";
	value 			=	6;
	visual 			=	"ItFo_Milk.3DS";
	material 		=	MAT_GLAS;
	scemeName		=	"POTION";
	on_state[0]		=	Use_ItFo_Milk;
	
	description		=	name;
	TEXT[1]			= 	NAME_Bonus_Energy;
	COUNT[1]		=	90;
	TEXT[2]			= 	NAME_HealTime;
	COUNT[2]		=	3;
	COUNT[5]		=	value;
};
func void Use_ItFo_Milk()
{
	self.aivar[AIV_Energy] += 90;
	if (Npc_IsPlayer(self))
	{
		foodTime += 3;
	}
	else
	{
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, 3);
	};
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
///	Beer
///******************************************************************************************
prototype ItemPR_BeerFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	12;
	on_state[0]				=	Use_ItFo_Beer;
	scemeName				=	"POTIONFAST";
	
	TEXT[1]					= 	NAME_Bonus_Energy;
	COUNT[1]				=	60;
	TEXT[2]					= 	NAME_Bonus_Mana;
	COUNT[2]				= 	2;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_ItFo_Beer()
{
	self.aivar[AIV_Energy] += 60;
	Npc_ChangeAttribute (self, ATR_MANA, 2);
};
///******************************************************************************************
instance ItFo_Beer (ItemPR_BeerFood)
{
	name 			=	"Piwo";
	visual 			=	"ItFo_Beer.3DS";
	description		=	name;
};
instance ItFo_CoragonsBeer (ItemPR_BeerFood)
{
	name 			=	"Piwo Coragona";
	visual 			=	"ItFo_Beer.3DS";
	on_state[0]		=	Use_ItFo_CoragonsBeer;
	description		=	name;
};
func void Use_ItFo_CoragonsBeer()
{
	Use_ItFo_Beer();
	B_GivePlayerXP(200);
};
///******************************************************************************************
///	Booze & Wine
///******************************************************************************************
prototype ItemPR_AlcoholFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_GLAS;
	
	value 					=	15;
	on_state[0]				=	Use_ItFo_Alcohol;
	scemeName				=	"POTION";
	
	TEXT[1]					= 	NAME_Bonus_Energy;
	COUNT[1]				=	50;
	TEXT[2]					= 	NAME_Bonus_Mana;
	COUNT[2]				= 	5;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_ItFo_Alcohol()
{
	self.aivar[AIV_Energy] += 50;
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
instance ItFo_Booze (ItemPR_AlcoholFood)
{
	name 			=	"Gorza³a";
	visual 			=	"ItFo_Booze.3DS";
	description		=	name;
};
instance ItFo_Wine (ItemPR_AlcoholFood)
{
	name 			=	"Wino";
	visual 			=	"ItFo_Wine.3DS";
	description		=	name;
};
instance ItFo_SouthWine (ItemPR_AlcoholFood)
{
	name 			=	"Wino";
	visual 			=	"ItFo_Wine.3DS";
	on_state[0]		=	Use_ItFo_SouthWine;
	description		=	name;
	TEXT[2]			= 	"Wino z Wysp Po³udniowych";
};
func void Use_ItFo_SouthWine()
{
	Use_ItFo_Alcohol();
	B_GivePlayerXP(200);
};
///******************************************************************************************
///	Grog & hooch & rum
///******************************************************************************************
instance ItFo_Addon_Grog (ItemPR_Food)
{
	name			=	"Grog";
	value 			=	10;
	visual 			=	"ItMi_Rum_02.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";
	on_state[0]		=	Use_ItFo_Addon_Grog;
	
	description 	=	name;
	TEXT[1]			= 	NAME_Bonus_Energy;
	COUNT[1]		=	20;
	TEXT[2]			= 	NAME_Bonus_Mana;
	COUNT[2]		= 	2;
	COUNT[5]		= 	value;
};
func void Use_ItFo_Addon_Grog()
{
	self.aivar[AIV_Energy] += 20;
	Npc_ChangeAttribute (self, ATR_MANA, 2);
};
instance ItFo_Addon_Hooch (ItemPR_Food)
{
	name			=	"Bimber";
	value 			=	20;
	visual 			=	"ItMi_Rum_02.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";
	on_state[0]		=	Use_ItFo_Addon_Hooch;
	
	description 	=	name;
	TEXT[1]			= 	NAME_Bonus_Energy;
	COUNT[1]		=	20;
	TEXT[2]			= 	NAME_Bonus_Mana;
	COUNT[2]		= 	6;
	COUNT[5]		= 	value;
};
func void Use_ItFo_Addon_Hooch()
{
	self.aivar[AIV_Energy] += 20;
	Npc_ChangeAttribute (self, ATR_MANA, 6);
};
instance ItFo_Addon_Rum (ItemPR_Food)
{
	name			=	"Rum";
	value 			=	30;
	visual 			=	"ItMi_Rum_01.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";
	on_state[0]		=	Use_ItFo_Addon_Rum;
	
	description 	=	name;
	TEXT[1]			= 	NAME_Bonus_Energy;
	COUNT[1]		=	20;
	TEXT[2]			= 	NAME_Bonus_Mana;
	COUNT[2]		= 	10;
	COUNT[5]		= 	value;
};
func void Use_ItFo_Addon_Rum()
{
	self.aivar[AIV_Energy] += 20;
	Npc_ChangeAttribute (self, ATR_MANA, 10);
};
///******************************************************************************************
var int Hammer_Bonus;
var int Hering_Time;

instance ItFo_Addon_LousHammer (ItemPR_Food)
{
	name			=	"M³ot Lou";
	value 			=	40;
	visual 			=	"ItMi_Rum_04.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";
	on_state[0]		=	Use_ItFo_Addon_LousHammer;
	
	description 	=	name;
	COUNT[5]		= 	value;
};
func void Use_ItFo_Addon_LousHammer()
{
	if (Npc_IsPlayer(self) && Hammer_Bonus < 400)
	{
		//B_RaiseAttribute (self, 0, 2-Hammer_Bonus);
		//Hammer_Bonus = 2;
		B_GivePlayerXP(400-Hammer_Bonus);
		Hammer_Bonus = 400;
	};
};
instance ItFo_Addon_SchnellerHering (ItemPR_Food)
{
	name			=	"Szybki ŒledŸ";
	value 			=	50;
	visual 			=	"ItMi_Rum_03.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";
	on_state[0]		=	Use_ItFo_Addon_SchnellerHering;
	
	description 	=	name;
	TEXT[1]			= 	NAME_Duration;
	COUNT[1]		=	10;
	COUNT[5]		= 	value;
};
func void Use_ItFo_Addon_SchnellerHering()
{
	if (Npc_IsPlayer(self))
	{
		Hering_Time = 50;
	};
};
instance ItFo_Addon_SchlafHammer (ItemPR_Food)
{
	name			=	"Podwójny M³ot";
	value 			=	60;
	visual 			=	"ItMi_Rum_04.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTIONFAST";
	on_state[0]		=	Use_ItFo_Addon_SchlafHammer;
	
	description 	=	name;
	COUNT[5]		= 	value;
};
func void Use_ItFo_Addon_SchlafHammer()
{
	if (Npc_IsPlayer(self) && Hammer_Bonus < 600)
	{
		//B_RaiseAttribute (self, 0, 3-Hammer_Bonus);
		//Hammer_Bonus = 3;
		B_GivePlayerXP(600-Hammer_Bonus);
		Hammer_Bonus = 600;
	};
};
