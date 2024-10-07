///******************************************************************************************

var int foodBonus, foodBonusCounter;
var int schnellerHeringTime;

/// ------ FoodCounter ------
func void Npc_AddFoodCounter()
{
	if (Npc_IsPlayer(self))
	{
		foodBonusCounter += 1;
		if (foodBonusCounter >= (100 + foodBonus*5))
		{
			foodBonusCounter -= (100 + foodBonus*5);
			
			var int raisedAttribute; raisedAttribute = MEM_ReadStatArr(RandomizedAttributesOrder, foodBonusCounter % 5);
			if		(raisedAttribute == ATR_HITPOINTS_MAX)	{ B_RaiseAttribute(self, ATR_HITPOINTS_MAX, 1*HP_PER_LP); }
			else if	(raisedAttribute == ATR_MANA_MAX)		{ B_RaiseAttribute(self, ATR_MANA_MAX, 1*MP_PER_LP); }
			else											{ B_RaiseAttribute(self, raisedAttribute, 1); };
			
			foodBonus += 1;
		}
		else
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(IntToString(100 + foodBonus*5 - foodBonusCounter), " pozosta³o do bonusu!"), FONT_ScreenSmall, COL_White, TIME_Print);
		};
	};
};

/// ------ FoodTime ------
func void Npc_AddFoodTime (var C_Npc slf, var int type, var int value)
{
	if (type == BarOrderHP)
	{
		if (slf.attribute[ATR_HITPOINTS_MAX] > 100) { value = slf.attribute[ATR_HITPOINTS_MAX]*value/100; };
		if (Npc_IsPlayer(slf)) { foodTime[BarOrderHP] += value; } else { Npc_ChangeAttribute (slf, ATR_HITPOINTS, value); };
	}
	else if (type == BarOrderMP)
	{
		if (slf.attribute[ATR_MANA_MAX] > 100) { value = slf.attribute[ATR_MANA_MAX]*value/100; };
		if (Npc_IsPlayer(slf)) { foodTime[BarOrderMP] += value; } else { Npc_ChangeAttribute (slf, ATR_MANA, value); };
	}
	else if (type == BarOrderSP)
	{
		if (slf.aivar[AIV_STAMINA_MAX] > 100) { value = slf.aivar[AIV_STAMINA_MAX]*value/100; };
		if (Npc_IsPlayer(slf)) { foodTime[BarOrderSP] += value; };
	}
	else if (type == BarOrderXP)
	{
		if (Npc_IsPlayer(slf)) { foodTime[BarOrderXP] += value; };
	};
};

/// ------ AlcoholTime ------
func void Npc_AddAlcoholTime (var C_Npc slf, var int points)
{
	if (Npc_IsPlayer(slf))
	{
		alcoholTime += points;
		
		if (alcoholTime >= 10)	/// 0.5 permilles
		{
			Mdl_ApplyOverlayMDS (self, "HUMANS_DRUNKEN.mds");
		};
		if (alcoholTime >= 60)	/// 3 permilles
		{
			MOD_SetPoison(bsPoison + 1);
		};
	}
	else if (points >= 20)
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_DRUNKEN.mds", points*1000);
	};
};

///******************************************************************************************
prototype ItemPR_Food (C_Item)
{
	mainflag					=	ITEM_KAT_FOOD;
	flags						=	ITEM_MULTI;
	material					=	MAT_LEATHER;
	TEXT[5]						=	NAME_Value;
};

prototype ItemPR_iFood (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	material					=	MAT_LEATHER;
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
/// Base components
///******************************************************************************************
instance ItFo_Flour (ItemPR_iFood)
{
	name						=	"M¹ka";
	value						=	20;
	visual						=	"ItFo_Flour.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
	inv_rotx					=	INVCAM_X_STONEPLATE_STANDARD;
};

instance ItFo_Salt (ItemPR_iFood)
{
	name						=	"Sól";
	value						=	20;
	visual						=	"ItFo_Salt.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
	inv_rotx					=	INVCAM_X_STONEPLATE_STANDARD;
};

instance ItFo_Seeds (ItemPR_iFood)
{
	name						=	"Nasiona";
	value						=	5;
	visual						=	"ItFo_Seeds.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItFo_Spices (ItemPR_iFood)
{
	name						=	"Torebka przypraw";
	value						=	100;
	visual						=	"ItMi_Pocket_Red.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItFo_Sugar (ItemPR_iFood)
{
	name						=	"Cukier";
	value						=	10;
	visual						=	"ItFo_Sugar.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Raw food
///******************************************************************************************

/// scavenger egg (10 gold value) in IT_AnimalTrophies file
/*
instance ItFo_Egg (ItemPR_iFood)
{
	name						=	"Jajko";
	value						=	3;
	visual						=	"ItFo_Egg.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};
*/

instance ItFo_Fish (ItemPR_iFood)
{
	name						=	"Ryba";
	value						=	8;
	visual						=	"ItFo_Fish.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItFo_MeatBadRaw (ItemPR_iFood)
{
	name						=	"Twarde miêso";
	value						=	8;
	visual						=	"ItFoMuttonRaw.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItFo_MeatGoodRaw (ItemPR_iFood)
{
	name						=	"Delikatne miêso";
	value						=	24;
	visual						=	"ItFoMuttonRaw.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItFoMuttonRaw (ItemPR_iFood)
{
	name						=	"Miêso";
	value						=	16;
	visual						=	"ItFoMuttonRaw.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItFo_Potato (ItemPR_iFood)
{
	name						=	"Ziemniak";
	value						=	2;
	visual						=	"ItFo_Potato.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Fruits
///******************************************************************************************
instance ItFo_Apple (ItemPR_Food)
{
	name						=	"Jab³ko";
	value						=	5;
	visual						=	"ItFo_Apple.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Apple;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Apple()
{
	Npc_AddFoodTime (self, BarOrderHP, 4);
	Npc_AddFoodCounter();
};

instance ItFo_Grapes (ItemPR_Food)
{
	name						=	"Winogrono";
	value						=	5;
	visual						=	"ItFo_Grapes_01.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Grapes;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpTime;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Grapes()
{
	Npc_AddFoodTime (self, BarOrderMP, 4);
	Npc_AddFoodCounter();
};

instance ItFo_Pear (ItemPR_Food)
{
	name						=	"Gruszka";
	value						=	5;
	visual						=	"ItFo_Pear.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Pear;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Pear()
{
	Npc_AddFoodTime (self, BarOrderHP, 4);
	Npc_AddFoodCounter();
};

///******************************************************************************************
instance ItFo_Banana (ItemPR_Food)
{
	name						=	"Banan";
	value						=	15;
	visual						=	"ItFo_Banana.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Banana;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	4;
	TEXT[2]						=	NAME_Bonus_XpTime;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Banana()
{
	Npc_AddFoodTime (self, BarOrderHP, 4);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_AddFoodCounter();
};

instance ItFo_Coconut (ItemPR_Food)
{
	name						=	"Kokos";
	value						=	20;
	visual						=	"ItFo_Coconut.3ds";
	
	scemeName					=	"POTION";
	on_state[0]					=	Use_ItFo_Coconut;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	3;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	3;
	TEXT[3]						=	NAME_Bonus_SpTime;
	COUNT[3]					=	30;
	TEXT[4]						=	NAME_Bonus_XpTime;
	COUNT[4]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Coconut()
{
	Npc_AddFoodTime (self, BarOrderHP, 3);
	Npc_AddFoodTime (self, BarOrderMP, 3);
	Npc_AddFoodTime (self, BarOrderSP, 30);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_AddFoodCounter();
};

instance ItFo_Pineapple (ItemPR_Food)
{
	name						=	"Ananas";
	value						=	20;
	visual						=	"ItFo_Pineapple.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Pineapple;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	8;
	TEXT[2]						=	NAME_Bonus_SpTime;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Pineapple()
{
	Npc_AddFoodTime (self, BarOrderHP, 8);
	Npc_AddFoodTime (self, BarOrderSP, 10);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Vegetables
///******************************************************************************************
instance ItFo_BakedPotato (ItemPR_Food)
{
	name						=	"Pieczony ziemniak";
	value						=	3;
	visual						=	"ItFo_BakedPotato.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_BakedPotato;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItFo_BakedPotato()
{
	Npc_AddFoodTime (self, BarOrderHP, 3);
//	Npc_AddFoodCounter();
};

instance ItFo_Cabbage (ItemPR_Food)
{
	name						=	"Kapusta";
	value						=	8;
	visual						=	"NW_CITY_CABBAGE_01.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Cabbage;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Cabbage()
{
	Npc_AddFoodTime (self, BarOrderHP, 8);
	Npc_AddFoodCounter();
};

instance ItFo_Carrot (ItemPR_Food)
{
	name						=	"Marchew";
	value						=	5;
	visual						=	"ItFo_Carrot.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Carrot;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Carrot()
{
	Npc_AddFoodTime (self, BarOrderHP, 4);
	Npc_AddFoodCounter();
};

instance ItFo_Chili (ItemPR_Food)
{
	name						=	"Chili";
	value						=	20;
	visual						=	"ItFo_Chili.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Chili;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	-10;
	TEXT[2]						=	NAME_Bonus_XpTime;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Chili()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -10);
	Npc_AddFoodTime (self, BarOrderXP, 10);
	Npc_AddFoodCounter();
};

instance ItFo_Leek (ItemPR_Food)
{
	name						=	"Por";
	value						=	5;
	visual						=	"ItFo_Leek.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Leek;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItFo_Leek()
{
	Npc_AddFoodTime (self, BarOrderHP, 2);
	Npc_AddFoodTime (self, BarOrderMP, 2);
	Npc_AddFoodCounter();
};

instance ItFo_Onion (ItemPR_Food)
{
	name						=	"Cebula";
	value						=	5;
	visual						=	"ItFo_Onion.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Onion;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Onion()
{
	Npc_AddFoodTime (self, BarOrderHP, 4);
	Npc_AddFoodCounter();
};

///******************************************************************************************
instance ItFo_MeatbugFlesh (ItemPR_Food)
{
	name						=	"Owadzie miêso";
	value						=	10;
	visual						=	"ItAt_MeatbugFlesh.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_MeatbugFlesh;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_MeatbugFlesh()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 10);
//	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Standard food
///******************************************************************************************
instance ItFo_Bread (ItemPR_Food)
{
	name						=	"Chleb";
	value						=	8;
	visual						=	"ItFo_Bread.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Bread;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Bread()
{
	Npc_AddFoodTime (self, BarOrderHP, 8);
	Npc_AddFoodCounter();
};

instance ItFo_Rice (ItemPR_Food)
{
	name						=	"Ry¿";
	value						=	8;
	visual						=	"ItFo_Rice.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Rice;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Rice()
{
	Npc_AddFoodTime (self, BarOrderHP, 8);
	Npc_AddFoodCounter();
};

///******************************************************************************************
instance ItFo_Cheese (ItemPR_Food)
{
	name						=	"Ser";
	value						=	12;
	visual						=	"ItFo_Cheese.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Cheese;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_Cheese()
{
	Npc_AddFoodTime (self, BarOrderHP, 12);
	Npc_AddFoodCounter();
};

///******************************************************************************************
instance ItFo_FriedFish (ItemPR_Food)
{
	name						=	"Sma¿ona ryba";
	value						=	10;
	visual						=	"ItFo_FriedFish.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_FriedFish;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_FriedFish()
{
	Npc_AddFoodTime (self, BarOrderHP, 10);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Meat
///******************************************************************************************
instance ItFo_MeatBad (ItemPR_Food)
{
	name						=	"Sma¿one twarde miêso";
	value						=	10;
	visual						=	"ItFoMutton.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_MeatBad;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_MeatBad()
{
	Npc_AddFoodTime (self, BarOrderHP, 10);
	Npc_AddFoodCounter();
};

instance ItFo_MeatGood (ItemPR_Food)
{
	name						=	"Sma¿one delikatne miêso";
	value						=	30;
	visual						=	"ItFoMutton.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_MeatGood;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
};
func void Use_ItFo_MeatGood()
{
	Npc_AddFoodTime (self, BarOrderHP, 30);
	Npc_AddFoodCounter();
};

instance ItFoMutton (ItemPR_Food)
{
	name						=	"Sma¿one miêso";
	value						=	20;
	visual						=	"ItFoMutton.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFoMutton;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFoMutton()
{
	Npc_AddFoodTime (self, BarOrderHP, 20);
	Npc_AddFoodCounter();
};

///******************************************************************************************
instance ItFo_Sausage (ItemPR_Food)
{
	name						=	"Kie³basa";
	value						=	15;
	visual						=	"ItFo_Sausage.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_Sausage;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	15;
	COUNT[5]					=	value;
};
func void Use_ItFo_Sausage()
{
	Npc_AddFoodTime (self, BarOrderHP, 15);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Luxury food
///******************************************************************************************
instance ItFo_Bacon (ItemPR_Food)
{
	name						=	"Szynka";
	value						=	25;
	visual						=	"ItFo_Bacon.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_Bacon;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	25;
	COUNT[5]					=	value;
};
func void Use_ItFo_Bacon()
{
	Npc_AddFoodTime (self, BarOrderHP, 25);
	Npc_AddFoodCounter();
};

instance ItFo_Oyster (ItemPR_Food)
{
	name						=	"Ostryga";
	value						=	20;
	visual						=	"ItFo_Oyster.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Oyster;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	5;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Oyster()
{
	Npc_AddFoodTime (self, BarOrderHP, 5);
	Npc_AddFoodTime (self, BarOrderMP, 5);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Sweets
///******************************************************************************************
instance ItFo_Cake (ItemPR_Food)
{
	name						=	"Ciasto";
	value						=	20;
	visual						=	"ItFo_Cake.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Cake;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	10;
	TEXT[3]						=	NAME_Bonus_MpTime;
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Cake()
{
	Npc_AddFoodTime (self, BarOrderHP, 10);
	Npc_AddFoodTime (self, BarOrderMP, 10);
	Npc_AddFoodCounter();
};

instance ItFo_Chocolate (ItemPR_Food)
{
	name						=	"Czekolada";
	value						=	40;
	visual						=	"ItFo_Chocolate.3ds";
	
	material					=	MAT_STONE;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Chocolate;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	8;
	TEXT[2]						=	NAME_Percent_MpTime;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Chocolate()
{
	Npc_AddFoodTime (self, BarOrderHP, 8);
	Npc_AddFoodTime (self, BarOrderMP, 10);
	Npc_AddFoodTime (self, BarOrderXP, 10);
	Npc_AddFoodCounter();
};

instance ItFo_Honey (ItemPR_Food)
{
	name						=	"Miód";
	value						=	20;
	visual						=	"ItFo_Honey.3ds";
	
	material					=	MAT_STONE;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Honey;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	8;
	TEXT[3]						=	NAME_Bonus_MpTime;
	COUNT[3]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_Honey()
{
	Npc_AddFoodTime (self, BarOrderHP, 8);
	Npc_AddFoodTime (self, BarOrderMP, 12);
	Npc_AddFoodCounter();
};

instance ItFo_Jam (ItemPR_Food)
{
	name						=	"D¿em";
	value						=	20;
	visual						=	"ItFo_Jam.3ds";
	
	material					=	MAT_STONE;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Jam;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	12;
	TEXT[3]						=	NAME_Bonus_MpTime;
	COUNT[3]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Jam()
{
	Npc_AddFoodTime (self, BarOrderHP, 12);
	Npc_AddFoodTime (self, BarOrderMP, 8);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Stews
///******************************************************************************************
instance ItFo_Stew (ItemPR_Food)
{
	name						=	"Gulasz";
	value						=	20;
	visual						=	"ItFo_Stew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Stew;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	24;
	COUNT[5]					=	value;
};
func void Use_ItFo_Stew()
{
	Npc_AddFoodTime (self, BarOrderHP, 24);
	Npc_AddFoodCounter();
};

instance ItFo_Addon_FireStew (ItemPR_Food)
{
	name						=	"Ognisty gulasz";
	value						=	20;
	visual						=	"ItFo_Stew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Addon_FireStew;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	-10;
	TEXT[2]						=	NAME_Bonus_HpTime;
	COUNT[2]					=	36;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_Addon_FireStew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -10);
	Npc_AddFoodTime (self, BarOrderHP, 36);
	B_GivePlayerExp(200);
	Npc_AddFoodCounter();
};

instance ItFo_Addon_MeatSoup (ItemPR_Food)
{
	name						=	"Gulasz miêsny";
	value						=	20;
	visual						=	"ItFo_Stew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Addon_MeatSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	24;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_Addon_MeatSoup()
{
	Npc_AddFoodTime (self, BarOrderHP, 24);
	B_GivePlayerExp(200);
	Npc_AddFoodCounter();
};

instance ItFo_XpStew (ItemPR_Food)
{
	name						=	"Gulasz Thekli";
	value						=	20;
	visual						=	"ItFo_Stew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_XpStew;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	24;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_XpStew()
{
	Npc_AddFoodTime (self, BarOrderHP, 24);
	B_GivePlayerExp(200);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Soups
///******************************************************************************************
instance ItFo_FishSoup (ItemPR_Food)
{
	name						=	"Zupa rybna";
	value						=	10;
	visual						=	"ItFo_FishSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_FishSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_FishSoup()
{
	Npc_AddFoodTime (self, BarOrderHP, 12);
	Npc_AddFoodCounter();
};

instance ItFo_MushroomSoup (ItemPR_Food)
{
	name						=	"Zupa grzybowa";
	value						=	10;
	visual						=	"ItFo_MushroomSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_MushroomSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpTime;
	COUNT[1]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_MushroomSoup()
{
	Npc_AddFoodTime (self, BarOrderMP, 12);
	Npc_AddFoodCounter();
};

instance ItFo_RiceSoup (ItemPR_Food)
{
	name						=	"Zupa mleczna z ry¿em";
	value						=	10;
	visual						=	"ItFo_RiceSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_RiceSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_RiceSoup()
{
	Npc_AddFoodTime (self, BarOrderHP, 12);
	Npc_AddFoodCounter();
};

///******************************************************************************************
/// Water & milk
///******************************************************************************************
instance ItFo_Water (ItemPR_Food)
{
	name						=	"Woda";
	value						=	5;
	visual						=	"ItFo_Water.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Water;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItFo_Water()
{
	Npc_AddFoodTime (self, BarOrderSP, 50);
	CreateInvItem (self, ItMi_EmptyBottle);
};

///******************************************************************************************
instance ItFo_Milk (ItemPR_Food)
{
	name						=	"Mleko";
	value						=	8;
	visual						=	"ItFo_Milk.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Milk;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	30;
	TEXT[2]						=	NAME_Bonus_HpTime;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItFo_Milk()
{
	Npc_AddFoodTime (self, BarOrderSP, 30);
	Npc_AddFoodTime (self, BarOrderHP, 3);
	CreateInvItem (self, ItMi_EmptyBottle);
};

///******************************************************************************************
/// Beer
///******************************************************************************************
instance ItFo_Beer (ItemPR_Food)
{
	name						=	"Piwo";
	value						=	10;
	visual						=	"ItFo_Beer.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTION";
	on_state[0]					=	Use_ItFo_Beer;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	4;
	TEXT[3]						=	NAME_Bonus_AlcoholTime;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItFo_Beer()
{
	Npc_AddFoodTime (self, BarOrderSP, 20);
	Npc_AddFoodTime (self, BarOrderMP, 4);
	Npc_AddAlcoholTime (self, 2);
};

instance ItFo_CoragonsBeer (ItemPR_Food)
{
	name						=	"Piwo Coragona";
	value						=	10;
	visual						=	"ItFo_Beer.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_CoragonsBeer;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	4;
	TEXT[3]						=	NAME_Bonus_AlcoholTime;
	COUNT[3]					=	2;
	TEXT[4]						=	NAME_Bonus_Xp;
	COUNT[4]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_CoragonsBeer()
{
	Npc_AddFoodTime (self, BarOrderSP, 20);
	Npc_AddFoodTime (self, BarOrderMP, 4);
	Npc_AddAlcoholTime (self, 2);
	B_GivePlayerExp(200);
};

///******************************************************************************************
/// Light alcohol
///******************************************************************************************
instance ItFo_Booze (ItemPR_Food)
{
	name						=	"Gorza³a";
	value						=	15;
	visual						=	"ItFo_Booze.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Booze;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItFo_Booze()
{
	Npc_AddAlcoholTime (self, 5);
	Npc_AddFoodTime (self, BarOrderMP, 3);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_Tequila (ItemPR_Food)
{
	name						=	"Tequila";
	value						=	30;
	visual						=	"ItFo_Tequila.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Tequila;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	10;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Tequila()
{
	Npc_AddAlcoholTime (self, 10);
	Npc_AddFoodTime (self, BarOrderMP, 8);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_Wine (ItemPR_Food)
{
	name						=	"Wino";
	value						=	15;
	visual						=	"ItFo_Wine.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Wine;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	3;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Wine()
{
	Npc_AddAlcoholTime (self, 3);
	Npc_AddFoodTime (self, BarOrderMP, 8);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_SouthWine (ItemPR_Food)
{
	name						=	"Wino z Wysp Po³udniowych";
	value						=	15;
	visual						=	"ItFo_Wine.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_SouthWine;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	3;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	8;
	TEXT[4]						=	NAME_Bonus_Xp;
	COUNT[4]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_SouthWine()
{
	Npc_AddAlcoholTime (self, 3);
	Npc_AddFoodTime (self, BarOrderMP, 8);
	B_GivePlayerExp(200);
	CreateInvItem (self, ItMi_EmptyBottle);
};

///******************************************************************************************
/// Heavy alcohol
///******************************************************************************************
instance ItFo_Addon_Grog (ItemPR_Food)
{
	name						=	"Grog";
	value						=	20;
	visual						=	"ItMi_Rum_02.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Grog;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	7;
	COUNT[5]					=	value;
};
func void Use_ItFo_Grog()
{
	Npc_AddAlcoholTime (self, 5);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 7);
};

instance ItFo_Addon_Hooch (ItemPR_Food)
{
	name						=	"Bimber";
	value						=	20;
	visual						=	"ItMi_Rum_02.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Hooch;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	7;
	COUNT[5]					=	value;
};
func void Use_ItFo_Hooch()
{
	Npc_AddAlcoholTime (self, 5);
	Npc_ChangeAttribute (self, ATR_MANA, 7);
};

instance ItFo_Addon_Rum (ItemPR_Food)
{
	name						=	"Rum";
	value						=	30;
	visual						=	"ItMi_Rum_01.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Rum;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	10;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	3;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItFo_Rum()
{
	Npc_AddAlcoholTime (self, 10);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 3);
	Npc_ChangeAttribute (self, ATR_MANA, 3);
};

instance ItFo_Addon_LousHammer (ItemPR_Food)
{
	name						=	"M³ot Lou";
	value						=	40;
	visual						=	"ItMi_Rum_04.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_LousHammer;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	15;
	COUNT[5]					=	value;
};
func void Use_ItFo_LousHammer()
{
	Npc_AddAlcoholTime (self, 15);
	self.aivar[AIV_Stamina] = 0;
};

instance ItFo_Addon_SchnellerHering (ItemPR_Food)
{
	name						=	"Szybki ŒledŸ";
	value						=	50;
	visual						=	"ItMi_Rum_03.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_SchnellerHering;
	
	description					=	name;
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	120;
	TEXT[2]						=	NAME_Bonus_SpMax;
	COUNT[2]					=	2;
	TEXT[3]						=	"Trwale zmniejsza regeneracjê energii o 0.1";
	COUNT[5]					=	value;
};
func void Use_ItFo_SchnellerHering()
{
	if (Npc_IsPlayer(self))
	{
		SchnellerHeringTime = 120;
		B_RaiseAttribute (self, AIV_Stamina_MAX, 2);
		regenPoints[BarOrderSP] -= 1;
	};
};
func void End_ItFo_Addon_SchnellerHering()
{
	Npc_AddAlcoholTime (hero, 15);
	hero.aivar[AIV_Stamina] = 0;
};

instance ItFo_Addon_SchlafHammer (ItemPR_Food)
{
	name						=	"Podwójny M³ot";
	value						=	60;
	visual						=	"ItMi_Rum_04.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_SchlafHammer;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	25;
	TEXT[2]						=	"Niebezpieczny dla ¿ycia!";
	COUNT[5]					=	value;
};
func void Use_ItFo_SchlafHammer()
{
	Npc_AddAlcoholTime (self, 25);
	self.aivar[AIV_Stamina] = 0;
	
	if (Npc_IsPlayer(self) && bsPoison >= 0)
	{
		self.attribute[ATR_HITPOINTS] /= 2;
		MOD_SetPoison(bsPoison * 2);
		
		AI_PlayAni(self, "T_STAND_2_WOUNDED");
		AI_PlayAni(self, "T_WOUNDED_2_STAND");
	};
};
