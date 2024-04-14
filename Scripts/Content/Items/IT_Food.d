///******************************************************************************************
/// IT_Food
///******************************************************************************************

var int foodBonusCounter;
var int foodCounter;
var int SchnellerHeringTime;

/// ------ FoodCounter ------
func void Npc_AddFoodCounter()
{
	if (Npc_IsPlayer(self))
	{
		foodCounter += 1;
		if (foodCounter >= (20 + foodBonusCounter))
		{
			foodBonusCounter += 1;
			foodCounter = 0;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, HP_PER_LP/2);
		}
		else
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(IntToString(20 + foodBonusCounter - foodCounter), " pozosta³o do otrzymania bonusowych pkt. ¿ycia!"), FONT_ScreenSmall, COL_White, TIME_Print);
		};
	};
};

/// ------ FoodTime ------
func void Npc_AddFoodTime (var C_Npc slf, var int points, var int percents)
{
	var int totalPoints; totalPoints = points + slf.attribute[ATR_HITPOINTS_MAX]*percents/100;
	if (digestionTime > 0)
	{
		totalPoints *= 2;
	};
	
	if (Npc_IsPlayer(slf) && digestionTime == 0)
	{
		foodTime += totalPoints;
	}
	else
	{
		Npc_ChangeAttribute (slf, ATR_HITPOINTS, totalPoints);
	};
};

/// ------ DrinkTime ------
func void Npc_AddDrinkTime (var C_Npc slf, var int points)
{
	if (Npc_IsPlayer(slf))
	{
		drinkTime += points;
	};
	//else
	//{
	//	slf.aivar[AIV_Stamina] += points;
	//};
};

/// ------ AlcoholTime ------
func void Npc_AddAlcoholTime (var C_Npc slf, var int points)
{
	if (Npc_IsPlayer(slf))
	{
		alcoholTime += points;
		//B_GivePlayerExp(points/5);
		
		if (alcoholTime >= 100)
		{
			Mdl_ApplyOverlayMDS (self, "HUMANS_DRUNKEN.MDS");
		};
		if (alcoholTime >= 300)
		{
			MOD_SetPoison(bsPoison + 1);
		};
	}
	else if (points >= 100)
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_DRUNKEN.MDS", points*1000);
	};
};

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
/// Inedible food
///******************************************************************************************
instance ItFo_Coconut (ItemPR_iFood)
{
	name 					=	"Kokos";
	visual 					=	"ItFo_Coconut.3DS";
	value 					=	4;
	
	description				=	name;
	COUNT[5]				= 	value;
};
instance ItFo_Egg (ItemPR_iFood)
{
	name 					=	"Jajko";
	visual 					=	"ItFo_Egg.3DS";
	value 					=	2;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItFo_Fish (ItemPR_iFood)
{
	name 					=	"Ryba";
	visual 					=	"ItFo_Fish.3DS";
	value 					=	6;
	
	description				=	name;
	COUNT[5]				= 	value;
};
instance ItFoMuttonRaw (ItemPR_iFood)
{
	name 					=	"Miêso";
	visual 					=	"ItFoMuttonRaw.3DS";
	value 					=	10;
	
	description				=	name;
	COUNT[5]				= 	value;
};
instance ItFo_Addon_Pfeffer_01 (ItemPR_iFood)
{
	name 					=	"Torebka przypraw";
	visual 					=	"ITMI_POCKET_RED.3DS";
	value 					=	100;
	
	description				=	"Ziarna czerwonego pieprzu";
	COUNT[5]				= 	value;
};
instance ItFo_PineApple (ItemPR_iFood)
{
	name 					=	"Ananas";
	visual 					=	"ItFo_PineApple.3DS";
	value 					=	4;
	
	description				=	name;
	COUNT[5]				= 	value;
};
instance ItFo_Potato (ItemPR_iFood)
{
	name 					=	"Ziemniak";
	visual 					=	"ItFo_Potato.3DS";
	value 					=	2;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItFo_RottenMeat (ItemPR_iFood)
{
	name 					=	"Zgni³e miêso";
	visual 					=	"ItFo_RottenMeat.3DS";
	value 					=	1;
	
	description				=	name;
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Sugar
///******************************************************************************************
instance ItFo_Sugar (ItemPR_Food)
{
	name 					=	"Cukier";
	value 					=	2;
	visual 					=	"ItFo_Sugar.3ds";
	material 				=	MAT_CLAY;
	scemeName				=	"FOOD";
	on_state[0]				=	Use_ItFo_Sugar;
	
	description				=	name;
	TEXT[1]					= 	NAME_Bonus_Mana;
	COUNT[1]				=	1;
	COUNT[5]				=	value;
};
func void Use_ItFo_Sugar()
{
	Npc_ChangeAttribute (self, ATR_MANA, 1);
};
///******************************************************************************************
/// Fruits & vegetables
///******************************************************************************************
prototype ItemPR_LightFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	4;
	on_state[0]				=	Use_ItFo_Fruit;
	scemeName				=	"FOOD";
	
	TEXT[1]					= 	NAME_Bonus_FoodTime;
	COUNT[1]				=	2;
	TEXT[1]					= 	NAME_Percent_FoodTime;
	COUNT[1]				=	4;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Fruit()
{
	Npc_AddFoodTime (self, 2, 4);
	Npc_AddFoodCounter();
};
///******************************************************************************************
instance ItFo_Apple (ItemPR_LightFood)
{
	name 					=	"Jab³ko";
	visual 					=	"ItFo_Apple.3DS";
	description				=	name;
};
instance ItFo_BakedPotato (ItemPR_LightFood)
{
	name 					=	"Pieczony ziemniak";
	visual 					=	"ItFo_BakedPotato.3DS";
	description				=	name;
};
instance ItFo_Banana (ItemPR_LightFood)
{
	name 					=	"Banan";
	visual 					=	"ItFo_Banana.3DS";
	description				=	name;
};
instance ItFo_Carrot (ItemPR_LightFood)
{
	name 					=	"Marchew";
	visual 					=	"ItFo_Carrot.3DS";
	description				=	name;
};
instance ItFo_MeatbugFlesh (ItemPR_LightFood)
{
	name 					=	"Miêso chrz¹szcza";
	visual 					=	"ITAT_MEATBUGFLESH.3DS";
	description				=	name;
};
instance ItFo_Onion (ItemPR_LightFood)
{
	name 					=	"Cebula";
	visual 					=	"ItFo_Onion.3DS";
	description				=	name;
};
instance ItFo_Pear (ItemPR_LightFood)
{
	name 					=	"Gruszka";
	visual 					=	"ItFo_Pear.3DS";
	description				=	name;
};
instance ItFo_Rice (ItemPR_LightFood)
{
	name 					=	"Ry¿";
	
	material 				=	MAT_WOOD;
	scemeName				=	"FOODHUGE";
	
	visual 					=	"ItFo_Rice.3ds";
	description				=	name;
};
///******************************************************************************************
/// Standard food
///******************************************************************************************
prototype ItemPR_StandardFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	12;
	on_state[0]				=	Use_ItFo_Standard;
	scemeName				=	"FOODHUGE";
	
	TEXT[1]					= 	NAME_Bonus_FoodTime;
	COUNT[1]				=	6;
	TEXT[2]					= 	NAME_Percent_FoodTime;
	COUNT[2]				=	15;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Standard()
{
	Npc_AddFoodTime (self, 6, 15);
	Npc_AddFoodCounter();
};
///******************************************************************************************
instance ItFo_Bread (ItemPR_StandardFood)
{
	name 					=	"Chleb";
	visual 					=	"ItFo_Bread.3DS";
	description				=	name;
};
instance ItFo_Cheese (ItemPR_StandardFood)
{
	name 					=	"Ser";
	visual 					=	"ItFo_Cheese.3DS";
	description				=	name;
};
instance ItFo_WhiteCheese (ItemPR_StandardFood)
{
	name 					=	"Ser";
	visual 					=	"ItFo_WhiteCheese.3DS";
	description				=	name;
};
instance ItFo_FriedFish (ItemPR_StandardFood)
{
	name 					=	"Sma¿ona ryba";
	visual 					=	"ItFo_FriedFish.3DS";
	description				=	name;
};
///******************************************************************************************
/// Meat
///******************************************************************************************
prototype ItemPR_MeatFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_Meat;
	scemeName				=	"MEAT";
	
	TEXT[1]					= 	NAME_Bonus_FoodTime;
	COUNT[1]				=	10;
	TEXT[2]					= 	NAME_Percent_FoodTime;
	COUNT[2]				=	30;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Meat()
{
	Npc_AddFoodTime (self, 10, 30);
	Npc_AddFoodCounter();
};
///******************************************************************************************
instance ItFoMutton (ItemPR_MeatFood)
{
	name 					=	"Sma¿one miêso";
	visual 					=	"ItFoMutton.3DS";
	description				=	name;
};
instance ItFo_Bacon (ItemPR_MeatFood)
{
	name 					=	"Szynka";
	visual 					=	"ItFo_Bacon.3ds";
	description				=	name;
};
instance ItFo_Sausage (ItemPR_MeatFood)
{
	name 					=	"Kie³basa";
	visual 					=	"ItFo_Sausage.3DS";
	description				=	name;
};
///******************************************************************************************
/// Sweets
///******************************************************************************************
prototype ItemPR_SweetFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_STONE;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_Sweet;
	scemeName				=	"FOODHUGE";
	
	TEXT[1]					= 	NAME_Bonus_FoodTime;
	COUNT[1]				=	5;
	TEXT[2]					= 	NAME_Percent_FoodTime;
	COUNT[2]				=	5;
	TEXT[3]					= 	NAME_Bonus_Mana;
	COUNT[3]				= 	5;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Sweet()
{
	Npc_AddFoodTime (self, 5, 5);
	Npc_ChangeAttribute	(self, ATR_MANA, 5);
};
///******************************************************************************************
instance ItFo_Honey (ItemPR_SweetFood)
{
	name 					=	"Miód";
	visual 					=	"ItFo_Honey.3DS";
	description				=	name;
};
instance ItFo_Chocolate (ItemPR_SweetFood)
{
	name 					=	"Czekolada";
	visual 					=	"ItFo_Chocolate.3DS";
	description				=	name;
};
instance ItFo_Jam (ItemPR_SweetFood)
{
	name 					=	"D¿em";
	visual 					=	"ItFo_Jam.3DS";
	description				=	name;
};
instance ItFo_Cake (ItemPR_SweetFood)
{
	name 					=	"Ciasto";
	visual 					=	"ItFo_Cake.3DS";
	description				=	name;
};
///******************************************************************************************
/// Stews
///******************************************************************************************
prototype ItemPR_StewFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	10;
	on_state[0]				=	Use_ItFo_Stew;
	scemeName				=	"RICE";
	
	description				=	name;
	TEXT[1]					= 	NAME_Bonus_FoodTime;
	COUNT[1]				=	2;
	TEXT[2]					= 	NAME_Percent_FoodTime;
	COUNT[2]				=	20;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Stew()
{
	Npc_AddFoodTime (self, 2, 20);
	Npc_AddFoodCounter();
};
///******************************************************************************************
instance ItFo_Stew (ItemPR_StewFood)
{
	name 					=	"Gulasz";
	visual 					=	"ItFo_Stew.3ds";
	description				=	name;
};
instance ItFo_Addon_FireStew (ItemPR_StewFood)
{
	name 					=	"Ognisty gulasz";
	visual 					=	"ItFo_Stew.3ds";
	on_state[0]				=	Use_XPStew;
	description				= 	name;
};
instance ItFo_Addon_MeatSoup (ItemPR_StewFood)
{
	name 					=	"Gulasz miêsny";
	visual 					=	"ItFo_Stew.3ds";
	on_state[0]				=	Use_XPStew;
	description				= 	name;
};
instance ItFo_XPStew (ItemPR_StewFood)
{
	name 					=	"Gulasz Thekli";
	visual 					=	"ItFo_Stew.3ds";
	on_state[0]				=	Use_XPStew;
	description				= 	name;
};
func void Use_XPStew()
{
	Use_ItFo_Stew();
	B_GivePlayerExp(200);
};
///******************************************************************************************
/// Soups
///******************************************************************************************
prototype ItemPR_SoupFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	10;
	on_state[0]				=	Use_ItFo_Soup;
	scemeName				=	"RICE";
	
	TEXT[1]					= 	NAME_Bonus_FoodTime;
	COUNT[1]				=	6;
	TEXT[2]					= 	NAME_Percent_FoodTime;
	COUNT[2]				=	12;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Soup()
{
	Npc_AddFoodTime (self, 6, 12);
	Npc_AddFoodCounter();
};
///******************************************************************************************
instance ItFo_FishSoup (ItemPR_SoupFood)
{
	name 					=	"Zupa rybna";
	visual 					=	"ItFo_FishSoup.3ds";
	description				=	name;
};
instance ItFo_MushroomSoup (ItemPR_SoupFood)
{
	name 					=	"Zupa grzybowa";
	visual 					=	"ItFo_MushroomSoup.3ds";
	description				=	name;
};
instance ItFo_RiceSoup (ItemPR_SoupFood)
{
	name 					=	"Zupa mleczna z ry¿em";
	visual 					=	"ItFo_RiceSoup.3ds";
	description				=	name;
};
///******************************************************************************************
/// Water & milk
///******************************************************************************************
instance ItFo_Water (ItemPR_Food)
{
	name 					=	"Woda";
	value 					=	6;
	visual 					=	"ItFo_Water.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTION";
	on_state[0]				=	Use_ItFo_Water;
	
	description				=	name;
	TEXT[1]					= 	NAME_Bonus_DrinkTime;
	COUNT[1]				=	120;
	COUNT[5]				=	value;
};
func void Use_ItFo_Water()
{
	Npc_AddDrinkTime (self, 120);
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
instance ItFo_Milk (ItemPR_Food)
{
	name 					=	"Mleko";
	value 					=	9;
	visual 					=	"ItFo_Milk.3DS";
	material 				=	MAT_GLAS;
	scemeName				=	"POTION";
	on_state[0]				=	Use_ItFo_Milk;
	
	description				=	name;
	TEXT[1]					= 	NAME_Bonus_DrinkTime;
	COUNT[1]				=	60;
	TEXT[2]					= 	NAME_Bonus_FoodTime;
	COUNT[2]				=	6;
	COUNT[5]				=	value;
};
func void Use_ItFo_Milk()
{
	Npc_AddDrinkTime (self, 60);
	Npc_AddFoodTime (self, 6, 0);
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
/// Beer
///******************************************************************************************
prototype ItemPR_BeerFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_WOOD;
	
	value 					=	12;
	on_state[0]				=	Use_ItFo_Beer;
	scemeName				=	"POTIONFAST";
	
	TEXT[1]					= 	NAME_Bonus_DrinkTime;
	COUNT[1]				=	40;
	TEXT[2]					= 	NAME_Bonus_Mana;
	COUNT[2]				= 	4;
	TEXT[3]					=	NAME_Bonus_AlcoholTime;
	COUNT[3]				=	20;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_ItFo_Beer()
{
	Npc_AddDrinkTime (self, 40);
	Npc_ChangeAttribute (self, ATR_MANA, 4);
	Npc_AddAlcoholTime (self, 20);	/// 4 exp
};
///******************************************************************************************
instance ItFo_Beer (ItemPR_BeerFood)
{
	name 					=	"Piwo";
	visual 					=	"ItFo_Beer.3DS";
	description				=	name;
};
instance ItFo_CoragonsBeer (ItemPR_BeerFood)
{
	name 					=	"Piwo Coragona";
	visual 					=	"ItFo_Beer.3DS";
	on_state[0]				=	Use_ItFo_CoragonsBeer;
	description				=	name;
};
func void Use_ItFo_CoragonsBeer()
{
	Use_ItFo_Beer();
	B_GivePlayerExp(200);
};
///******************************************************************************************
/// Booze & Tequila & Wine
///******************************************************************************************
prototype ItemPR_BoozeFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_GLAS;
	
	value 					=	15;
	on_state[0]				=	Use_ItFo_Booze;
	scemeName				=	"POTION";
	
	TEXT[1]					=	NAME_Bonus_AlcoholTime;
	COUNT[1]				=	30;
	TEXT[2]					= 	NAME_Bonus_Mana;
	COUNT[2]				= 	5;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_ItFo_Booze()
{
	Npc_AddAlcoholTime (self, 30);	/// 6 exp
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
instance ItFo_Booze (ItemPR_BoozeFood)
{
	name 					=	"Gorza³a";
	visual 					=	"ItFo_Booze.3DS";
	description				=	name;
};
instance ItFo_Tequila (ItemPR_BoozeFood)
{
	name 					=	"Tequila";
	visual 					=	"ItFo_Tequila.3DS";
	description				=	name;
};
instance ItFo_Wine (ItemPR_BoozeFood)
{
	name 					=	"Wino";
	visual 					=	"ItFo_Wine.3DS";
	description				=	name;
};
instance ItFo_SouthWine (ItemPR_BoozeFood)
{
	name 					=	"Wino z Wysp Po³udniowych";
	visual 					=	"ItFo_Wine.3DS";
	on_state[0]				=	Use_ItFo_SouthWine;
	description				=	name;
};
func void Use_ItFo_SouthWine()
{
	Use_ItFo_Booze();
	B_GivePlayerExp(200);
};
///******************************************************************************************
/// Heavy alcohol
///******************************************************************************************
prototype ItemPR_GrogFood (C_Item)
{
	mainflag 				=	ITEM_KAT_FOOD;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_GLAS;
	
	value 					=	20;
	on_state[0]				=	Use_ItFo_Grog;
	scemeName				=	"POTIONFAST";
	
	TEXT[1]					=	NAME_Bonus_AlcoholTime;
	COUNT[1]				=	50;
	TEXT[2]					= 	NAME_Bonus_FoodTime;
	COUNT[2]				=	1;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
func void Use_ItFo_Grog()
{
	Npc_AddAlcoholTime (self, 50);	/// 10 exp
	Npc_AddFoodTime (self, 1, 0);
};
///******************************************************************************************
instance ItFo_Addon_Grog (ItemPR_GrogFood)
{
	name					=	"Grog";
	visual 					=	"ItMi_Rum_02.3ds";
	description 			=	name;
};
instance ItFo_Addon_Hooch (ItemPR_GrogFood)
{
	name					=	"Bimber";
	visual 					=	"ItMi_Rum_02.3ds";
	description 			=	name;
};
///******************************************************************************************
instance ItFo_Addon_Rum (ItemPR_Food)
{
	name					=	"Rum";
	value 					=	30;
	visual 					=	"ItMi_Rum_01.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTIONFAST";
	on_state[0]				=	Use_ItFo_Addon_Rum;
	
	description 			=	name;
	TEXT[1]					=	NAME_Bonus_AlcoholTime;
	COUNT[1]				=	80;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Addon_Rum()
{
	Npc_AddAlcoholTime (self, 80);	/// 16 exp
};
///******************************************************************************************
instance ItFo_Addon_LousHammer (ItemPR_Food)
{
	name					=	"M³ot Lou";
	value 					=	40;
	visual 					=	"ItMi_Rum_04.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTIONFAST";
	on_state[0]				=	Use_ItFo_Addon_LousHammer;
	
	description 			=	name;
	TEXT[1]					=	NAME_Bonus_AlcoholTime;
	COUNT[1]				=	120;
	COUNT[5]				= 	value;
};
func void Use_ItFo_Addon_LousHammer()
{
	Npc_AddAlcoholTime (self, 120);	/// 24 exp
	hero.aivar[AIV_Stamina] = 0;
};
///******************************************************************************************
instance ItFo_Addon_SchnellerHering (ItemPR_Food)
{
	name					=	"Szybki ŒledŸ";
	value 					=	50;
	visual 					=	"ItMi_Rum_03.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTIONFAST";
	on_state[0]				=	Use_ItFo_Addon_SchnellerHering;
	
	description 			=	name;
	TEXT[1]					= 	NAME_Duration;
	COUNT[1]				=	120;
	TEXT[2]					= 	NAME_Bonus_SpMax;
	COUNT[2]				= 	2;
	TEXT[3]					=	"Trwale zmniejsza regeneracjê energii o 0.1";
	COUNT[5]				= 	value;
};
func void Use_ItFo_Addon_SchnellerHering()
{
	if (Npc_IsPlayer(self))
	{
		SchnellerHeringTime = 120;
		B_RaiseAttribute (self, AIV_Stamina_MAX, 2);
		spRegenPoints -= 1;
	};
	//self.aivar[AIV_Stamina] = 0;
};
func void End_ItFo_Addon_SchnellerHering()
{
	Npc_AddAlcoholTime (hero, 120);	/// 24 exp
	hero.aivar[AIV_Stamina] = 0;
};
///******************************************************************************************
instance ItFo_Addon_SchlafHammer (ItemPR_Food)
{
	name					=	"Podwójny M³ot";
	value 					=	60;
	visual 					=	"ItMi_Rum_04.3ds";
	material 				=	MAT_GLAS;
	scemeName				=	"POTIONFAST";
	on_state[0]				=	Use_ItFo_Addon_SchlafHammer;
	
	description 			=	name;
	TEXT[1]					=	NAME_Bonus_AlcoholTime;
	COUNT[1]				=	200;
	TEXT[2]					=	"Niebezpieczny dla ¿ycia!";
	COUNT[5]				= 	value;
};
func void Use_ItFo_Addon_SchlafHammer()
{
	Npc_AddAlcoholTime (self, 200);	/// 40 exp
	self.aivar[AIV_Stamina] = 0;
	
	if (Npc_IsPlayer(self) && bsPoison >= 0)
	{
		self.attribute[ATR_HITPOINTS] /= 2;
		AI_PlayAni(self, "T_STAND_2_WOUNDED");
		AI_PlayAni(self, "T_WOUNDED_2_STAND");
	};
};
