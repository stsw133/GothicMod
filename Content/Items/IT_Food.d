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
///	Fruit Food
///******************************************************************************************
prototype ItemPR_LightFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	2;
	on_state[0]				=	Use_ItFo_Fruit;
	scemeName				=	"FOOD";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	5;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
FUNC VOID Use_ItFo_Fruit()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 5;
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
///******************************************************************************************
///	Normal Food
///******************************************************************************************
prototype ItemPR_NormalFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	8;
	on_state[0]				=	Use_ItFo_Normal;
	scemeName				=	"FOODHUGE";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	20;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
FUNC VOID Use_ItFo_Normal()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 20;
	};
};
///******************************************************************************************
instance ItFo_Bread (ItemPR_NormalFood)
{
	name 			=	"Chleb";
	visual 			=	"ItFo_Bread.3DS";
	description		=	name;
};
instance ItFo_Cheese (ItemPR_NormalFood)
{
	name 			=	"Ser";
	visual 			=	"ItFo_Cheese.3DS";
	description		=	name;
};
instance ItFo_WhiteCheese (ItemPR_NormalFood)
{
	name 			=	"Ser";
	visual 			=	"ItFo_WhiteCheese.3DS";
	description		=	name;
};
instance ItFo_FriedFish (ItemPR_NormalFood)
{
	name 			=	"Sma¿ona ryba";
	visual 			=	"ItFo_FriedFish.3DS";
	description		=	name;
};
///******************************************************************************************
///	Meat Food
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
FUNC VOID Use_ItFo_Meat()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 50;
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
///	Sweet Food
///******************************************************************************************
prototype ItemPR_SweetFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_STONE;
	
	value 					=	10;
	on_state[0]				=	Use_ItFo_Sweet;
	scemeName				=	"FOODHUGE";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	10;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
FUNC VOID Use_ItFo_Sweet()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 10;
	};
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
///	Stew Food
///******************************************************************************************
prototype ItemPR_StewFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	40;
	on_state[0]				=	Use_ItFo_Stew;
	scemeName				=	"RICE";
	
	description				=	name;
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	100;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
FUNC VOID Use_ItFo_Stew()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 100;
	};
};
///******************************************************************************************
instance ItFo_Stew (ItemPR_StewFood)
{
	name 			=	"Gulasz";
	visual 			=	"ItFo_Stew.3ds";
	description		=	name;
};
///******************************************************************************************
///	Soup Food
///******************************************************************************************
prototype ItemPR_SoupFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_Soup;
	scemeName				=	"RICE";
	
	TEXT[1]					= 	NAME_HealTime;
	COUNT[1]				=	50;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
FUNC VOID Use_ItFo_Soup()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 50;
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
///	Inedible Food
///******************************************************************************************
instance ItFo_Potato (ItemPR_iFood)
{
	name 			=	"Ziemniak";
	visual 			=	"ItFo_Potato.3DS";
	value 			=	1;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItFo_Onion (ItemPR_iFood)
{
	name 			=	"Cebula";
	visual 			=	"ItFo_Onion.3DS";
	value 			=	2;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItFo_Egg (ItemPR_iFood)
{
	name 			=	"Jajko";
	visual 			=	"ItFo_Egg.3DS";
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
instance ItFo_Coconut (ItemPR_iFood)
{
	name 			=	"Kokos";
	visual 			=	"ItFo_Coconut.3DS";
	value 			=	4;
	
	description		=	name;
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
instance ItFo_Fish (ItemPR_iFood)
{
	name 			=	"Ryba";
	visual 			=	"ItFo_Fish.3DS";
	value 			=	4;
	
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
///******************************************************************************************
///	Water & Milk
///******************************************************************************************
instance ItFo_Water (ItemPR_Food)
{
	name 			=	"Woda";
	
	value 			=	4;
	
	visual 			=	"ItFo_Water.3ds";
	material 		=	MAT_GLAS;
	scemeName		=	"POTION";
	on_state[0]		=	Use_ItFo_Water;
	
	description		=	name;
	TEXT[1]			= 	NAME_Bonus_Energy;
	COUNT[1]		=	100;
	COUNT[5]		=	value;
};
FUNC VOID Use_ItFo_Water()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 100;
	};
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
	COUNT[1]		=	80;
	TEXT[2]			= 	NAME_HealTime;
	COUNT[2]		=	2;
	COUNT[5]		=	value;
};
FUNC VOID Use_ItFo_Milk()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 80;
		sattribute[ATR_FoodTime] += 2;
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
	
	value 					=	8;
	on_state[0]				=	Use_ItFo_Beer;
	scemeName				=	"POTIONFAST";
	
	TEXT[1]					= 	NAME_Bonus_Energy;
	COUNT[1]				=	60;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
FUNC VOID Use_ItFo_Beer()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 60;
	};
};
///******************************************************************************************
instance ItFo_Beer (ItemPR_BeerFood)
{
	name 			=	"Piwo";
	visual 			=	"ItFo_Beer.3DS";
	description		=	name;
};
///******************************************************************************************
///	Booze & Wine
///******************************************************************************************
prototype ItemPR_AlcoholFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_GLAS;
	
	value 					=	10;
	on_state[0]				=	Use_ItFo_Alcohol;
	scemeName				=	"POTION";
	
	TEXT[1]					= 	NAME_Bonus_Energy;
	COUNT[1]				=	50;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
FUNC VOID Use_ItFo_Alcohol()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 50;
	};
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
///******************************************************************************************
///	Rum & Hooch
///******************************************************************************************
prototype ItemPR_AlcoholFastFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_GLAS;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_AlcoholFast;
	scemeName				=	"POTIONFAST";
	
	TEXT[1]					= 	NAME_Bonus_Energy;
	COUNT[1]				=	40;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
FUNC VOID Use_ItFo_AlcoholFast()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 40;
	};
};
///******************************************************************************************
instance ItFo_Rum (ItemPR_AlcoholFastFood)
{
	name			=	"Rum";
	visual 			=	"ItMi_Rum_01.3ds";
	description 	=	name;
};
instance ItFo_Hooch (ItemPR_AlcoholFastFood)
{
	name			=	"Bimber";
	visual 			=	"ItMi_Rum_01.3ds";
	description 	=	name;
};
