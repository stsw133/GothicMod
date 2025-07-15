/// ------ FoodCounter ------
var int RandAtrFoodCounter;
func void Npc_AddFoodCounter(var int value)
{
	if (Npc_IsPlayer(self))
	{
		RandAtrFoodCounter += value;
		if (RandAtrFoodCounter/1000) > ((RandAtrFoodCounter-value)/1000)
		{
			PfxRandomizedAttributesOrder(MEM_ReadStatArr(RandomizedAttributesOrder, RandAtrFoodCounter/1000 % 5));
			if (RandAtrFoodCounter >= 5000)	{	RandAtrFoodCounter -= 5000;	};
		}
		else
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(IntToString(1000 - (RandAtrFoodCounter%1000)), " pozosta³o do bonusu!"), FONT_ScreenSmall, COL_White, TIME_Print);
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
			Mdl_ApplyOverlayMDS (slf, "HUMANS_DRUNKEN.mds");
		};
		if (alcoholTime >= 60)	/// 3 permilles
		{
			MOD_SetPoison(bsPoison + 1);
		};
	}
	else if (points >= 20)
	{
		Mdl_ApplyOverlayMDSTimed (slf, "HUMANS_DRUNKEN.mds", points*1000);
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
	TEXT[0]						=	"Sk³adnik gotowanych potraw,";
	TEXT[1]						=	"który mo¿na u¿yæ wielokrotnie.";
	COUNT[5]					=	value;
	inv_rotx					=	INVCAM_X_STONEPLATE_STANDARD;
};

instance ItFo_Herbs (ItemPR_iFood)
{
	name						=	"Torebka zió³";
	value						=	100;
	visual						=	"ItMi_Pocket_Green.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw,";
	TEXT[1]						=	"który mo¿na u¿yæ wielokrotnie.";
	COUNT[5]					=	value;
};

instance ItFo_Oil (ItemPR_iFood)
{
	name						=	"Olej rzepakowy";
	value						=	20;
	visual						=	"ItFo_Oil.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw,";
	TEXT[1]						=	"który mo¿na u¿yæ wielokrotnie.";
	COUNT[5]					=	value;
};

instance ItFo_Salt (ItemPR_iFood)
{
	name						=	"Woreczek soli";
	value						=	20;
	visual						=	"ItFo_Salt.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw,";
	TEXT[1]						=	"który mo¿na u¿yæ wielokrotnie.";
	COUNT[5]					=	value;
	inv_rotx					=	INVCAM_X_STONEPLATE_STANDARD;
};

instance ItFo_Spices (ItemPR_iFood)
{
	name						=	"Torebka przypraw";
	value						=	100;
	visual						=	"ItMi_Pocket_Red.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw,";
	TEXT[1]						=	"który mo¿na u¿yæ wielokrotnie.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Raw food
///******************************************************************************************
instance ItFo_Coconut (ItemPR_iFood)
{
	name						=	"Kokos";
	value						=	10;
	visual						=	"ItFo_Coconut.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywany do tworzenia";
	TEXT[2]						=	"tytoniu kokosowego.";
	COUNT[5]					=	value;
};

/// scavenger egg (10 gold value) in IT_AnimalTrophies file
/*
instance ItFo_Egg (ItemPR_iFood)
{
	name						=	"Jajko";
	value						=	3;
	visual						=	"ItFo_Egg.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};
*/

instance ItFo_Fish (ItemPR_iFood)
{
	name						=	"Ryba";
	value						=	6;
	visual						=	"ItFo_Fish.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItFo_BadMeatRaw (ItemPR_iFood)
{
	name						=	"Twarde miêso";
	value						=	6;
	visual						=	"ItFo_BadMeatRaw.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItFo_FatMeatRaw (ItemPR_iFood)
{
	name						=	"T³uste miêso";
	value						=	9;
	visual						=	"ItFo_FatMeatRaw.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItFoMuttonRaw (ItemPR_iFood)
{
	name						=	"Miêso";
	value						=	12;
	visual						=	"ItFoMuttonRaw.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItFo_Potato (ItemPR_iFood)
{
	name						=	"Ziemniak";
	value						=	2;
	visual						=	"ItFo_Potato.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItFo_Seeds (ItemPR_iFood)
{
	name						=	"Nasiona";
	value						=	2;
	visual						=	"ItFo_Seeds.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
	inv_rotx					=	INVCAM_X_STONEPLATE_STANDARD;
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
	TEXT[0]						=	"Sk³adnik soków i gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Apple()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 4);
	Npc_AddFoodCounter(5);
};

instance ItFo_Banana (ItemPR_Food)
{
	name						=	"Banan";
	value						=	5;
	visual						=	"ItFo_Banana.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Banana;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik soków i gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Banana()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 4);
	Npc_AddFoodCounter(5);
};

instance ItFo_Grapes (ItemPR_Food)
{
	name						=	"Winogrono";
	value						=	5;
	visual						=	"ItFo_Grapes.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Grapes;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik win i gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Grapes()
{
	Npc_ChangeAttribute (self, ATR_MANA, 4);
	Npc_AddFoodCounter(5);
};

instance ItFo_Pear (ItemPR_Food)
{
	name						=	"Gruszka";
	value						=	5;
	visual						=	"ItFo_Pear.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Pear;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik soków i gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItFo_Pear()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 2);
	Npc_ChangeAttribute (self, ATR_MANA, 2);
	Npc_AddFoodCounter(5);
};

///******************************************************************************************
/// Vegetables
///******************************************************************************************
instance ItFo_Cabbage (ItemPR_Food)
{
	name						=	"Kapusta";
	value						=	8;
	visual						=	"NW_CITY_CABBAGE_01.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Cabbage;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Cabbage()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 8);
	Npc_AddFoodCounter(8);
};

instance ItFo_Carrot (ItemPR_Food)
{
	name						=	"Marchew";
	value						=	5;
	visual						=	"ItFo_Carrot.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Carrot;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Carrot()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 4);
	Npc_AddFoodCounter(5);
};

instance ItFo_Chili (ItemPR_Food)
{
	name						=	"Chili";
	value						=	20;
	visual						=	"ItFo_Chili.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Chili;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	-20;
	TEXT[2]						=	NAME_Bonus_Xp;
	COUNT[2]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_Chili()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -20);
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(20); };
	Npc_AddFoodCounter(5);
};

instance ItFo_Leek (ItemPR_Food)
{
	name						=	"Por";
	value						=	5;
	visual						=	"ItFo_Leek.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Leek;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItFo_Leek()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 2);
	Npc_ChangeAttribute (self, ATR_MANA, 2);
	Npc_AddFoodCounter(5);
};

instance ItFo_Onion (ItemPR_Food)
{
	name						=	"Cebula";
	value						=	5;
	visual						=	"ItFo_Onion.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Onion;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Onion()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 4);
	Npc_AddFoodCounter(5);
};

instance ItFo_Parsley (ItemPR_Food)
{
	name						=	"Pietruszka";
	value						=	5;
	visual						=	"ItFo_Parsley.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItFo_Parsley;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Parsley()
{
	Npc_ChangeAttribute (self, ATR_MANA, 4);
	Npc_AddFoodCounter(5);
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
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_Bread()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 8);
	Npc_AddFoodCounter(8);
};

instance ItFo_Cheese (ItemPR_Food)
{
	name						=	"Ser";
	value						=	12;
	visual						=	"ItFo_Cheese.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Cheese;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_Cheese()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 12);
	Npc_AddFoodCounter(12);
};

instance ItFo_MeatbugFlesh (ItemPR_Food)
{
	name						=	"Owadzie miêso";
	value						=	7;
	visual						=	"ItAt_MeatbugFlesh.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_MeatbugFlesh;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	6;
	COUNT[5]					=	value;
};
func void Use_ItFo_MeatbugFlesh()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 6);
	Npc_AddFoodCounter(7);
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
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItFo_Rice()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 5);
	Npc_ChangeAttribute (self, ATR_MANA, 3);
	Npc_AddFoodCounter(8);
};

///******************************************************************************************
/// Meat
///******************************************************************************************
instance ItFo_BadMeat (ItemPR_Food)
{
	name						=	"Sma¿one twarde miêso";
	value						=	8;
	visual						=	"ItFo_BadMeat.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_BadMeat;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	8;
	COUNT[5]					=	value;
};
func void Use_ItFo_BadMeat()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 8);
	Npc_AddFoodCounter(8);
};

instance ItFo_FatMeat (ItemPR_Food)
{
	name						=	"Sma¿one t³uste miêso";
	value						=	12;
	visual						=	"ItFo_FatMeat.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_FatMeat;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_FatMeat()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 12);
	Npc_AddFoodCounter(12);
};

instance ItFoMutton (ItemPR_Food)
{
	name						=	"Sma¿one miêso";
	value						=	16;
	visual						=	"ItFoMutton.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFoMutton;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	16;
	COUNT[5]					=	value;
};
func void Use_ItFoMutton()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 16);
	Npc_AddFoodCounter(16);
};

///******************************************************************************************
instance ItFo_Bacon (ItemPR_Food)
{
	name						=	"Szynka";
	value						=	20;
	visual						=	"ItFo_Bacon.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_Bacon;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_Bacon()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 20);
	Npc_AddFoodCounter(20);
};

instance ItFo_Sausage (ItemPR_Food)
{
	name						=	"Kie³basa";
	value						=	15;
	visual						=	"ItFo_Sausage.3ds";
	
	scemeName					=	"MEAT";
	on_state[0]					=	Use_ItFo_Sausage;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	15;
	COUNT[5]					=	value;
};
func void Use_ItFo_Sausage()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 15);
	Npc_AddFoodCounter(15);
};

///******************************************************************************************
/// Sea food
///******************************************************************************************
instance ItFo_Oyster (ItemPR_Food)
{
	name						=	"Ostryga";
	value						=	20;
	visual						=	"ItFo_Oyster.3ds";
	
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Oyster;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	5;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Oyster()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 5);
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(5); };
	Npc_AddFoodCounter(10);
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
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	10;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Cake()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 10);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	Npc_AddFoodCounter(20);
};

instance ItFo_Chocolate (ItemPR_Food)
{
	name						=	"Czekolada";
	value						=	30;
	visual						=	"ItFo_Chocolate.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Chocolate;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	7;
	TEXT[2]						=	NAME_Percent_Mp;
	COUNT[2]					=	7;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Chocolate()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 7);
	Npc_ChangeAttribute (self, ATR_MANA, 7);
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(10); };
	Npc_AddFoodCounter(15);
};

instance ItFo_Honey (ItemPR_Food)
{
	name						=	"Miód";
	value						=	15;
	visual						=	"ItFo_Honey.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Honey;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	4;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Honey()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 4);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	Npc_AddFoodCounter(15);
};

instance ItFo_Jam (ItemPR_Food)
{
	name						=	"D¿em";
	value						=	15;
	visual						=	"ItFo_Jam.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"FOODHUGE";
	on_state[0]					=	Use_ItFo_Jam;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	10;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Jam()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 10);
	Npc_ChangeAttribute (self, ATR_MANA, 4);
	Npc_AddFoodCounter(15);
};

///******************************************************************************************
/// Water & milk
///******************************************************************************************
instance ItFo_Water (ItemPR_Food)
{
	name						=	"Woda";
	value						=	5; //-3 for bottle = 2
	visual						=	"ItFo_Water.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Water;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur i zup.";
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_Water()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] = self.aivar[AIV_STAMINA_MAX]; };
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_Milk (ItemPR_Food)
{
	name						=	"Mleko";
	value						=	8; //-3 for bottle = 5
	visual						=	"ItFo_Milk.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Milk;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItFo_Milk()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*3/5; };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 4);
	CreateInvItem (self, ItMi_EmptyBottle);
};

///******************************************************************************************
/// Juice
///******************************************************************************************
instance ItFo_BananaJuice (ItemPR_Food)
{
	name						=	"Sok bananowy";
	value						=	9; //-3 for bottle = 6
	visual						=	"ItFo_BananaJuice.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_BananaJuice;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	6;
	COUNT[5]					=	value;
};
func void Use_ItFo_BananaJuice()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*3/5; };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 6);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_BerryJuice (ItemPR_Food)
{
	name						=	"Sok jagodowy";
	value						=	9; //-3 for bottle = 6
	visual						=	"ItFo_BerryJuice.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_BerryJuice;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	6;
	COUNT[5]					=	value;
};
func void Use_ItFo_BerryJuice()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*3/5; };
	Npc_ChangeAttribute (self, ATR_MANA, 6);
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
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Beer;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	8;
	TEXT[3]						=	NAME_Bonus_AlcoholTime;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItFo_Beer()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*2/5; };
	Npc_ChangeAttribute (self, ATR_MANA, 8);
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
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	8;
	TEXT[3]						=	NAME_Bonus_AlcoholTime;
	COUNT[3]					=	2;
	TEXT[4]						=	NAME_Bonus_Xp;
	COUNT[4]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_CoragonsBeer()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*2/5; };
	Npc_ChangeAttribute (self, ATR_MANA, 8);
	Npc_AddAlcoholTime (self, 2);
	B_GivePlayerExp(200);
};

///******************************************************************************************
/// Light alcohol
///******************************************************************************************
instance ItFo_Booze (ItemPR_Food)
{
	name						=	"Gorza³a";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_Booze.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Booze;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	5;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	3;
	TEXT[3]						=	NAME_Percent_Sp;
	COUNT[3]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_Booze()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]/5; };
	Npc_ChangeAttribute (self, ATR_MANA, 3);
	Npc_AddAlcoholTime (self, 5);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_DarkBeer (ItemPR_Food)
{
	name						=	"Ciemne piwo";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_DarkBeer.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_DarkBeer;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	3;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	5;
	TEXT[3]						=	NAME_Percent_Sp;
	COUNT[3]					=	30;
	COUNT[5]					=	value;
};
func void Use_ItFo_DarkBeer()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*3/10; };
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	Npc_AddAlcoholTime (self, 3);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_Mead (ItemPR_Food)
{
	name						=	"Miód pitny";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_Mead.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Mead;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	2;
	TEXT[3]						=	NAME_Bonus_Mp;
	COUNT[3]					=	4;
	TEXT[4]						=	NAME_Percent_Sp;
	COUNT[4]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_Mead()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]/5; };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 2);
	Npc_ChangeAttribute (self, ATR_MANA, 4);
	Npc_AddAlcoholTime (self, 2);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_Sake (ItemPR_Food)
{
	name						=	"Ry¿ówka";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_Sake.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Sake;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	4;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	3;
	TEXT[3]						=	NAME_Bonus_Mp;
	COUNT[3]					=	2;
	TEXT[4]						=	NAME_Percent_Sp;
	COUNT[4]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_Sake()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]/5; };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 3);
	Npc_ChangeAttribute (self, ATR_MANA, 2);
	Npc_AddAlcoholTime (self, 4);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_SourWine (ItemPR_Food)
{
	name						=	"Kwaœne wino";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_SourWine.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_SourWine;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_Hp;
	COUNT[2]					=	3;
	TEXT[3]						=	NAME_Bonus_Mp;
	COUNT[3]					=	3;
	TEXT[4]						=	NAME_Percent_Sp;
	COUNT[4]					=	25;
	COUNT[5]					=	value;
};
func void Use_ItFo_SourWine()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]/4; };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 3);
	Npc_ChangeAttribute (self, ATR_MANA, 3);
	Npc_AddAlcoholTime (self, 2);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_Wine (ItemPR_Food)
{
	name						=	"Wino";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_Wine.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_Wine;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	6;
	TEXT[3]						=	NAME_Percent_Sp;
	COUNT[3]					=	25;
	COUNT[5]					=	value;
};
func void Use_ItFo_Wine()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]/4; };
	Npc_ChangeAttribute (self, ATR_MANA, 6);
	Npc_AddAlcoholTime (self, 2);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItFo_SouthWine (ItemPR_Food)
{
	name						=	"Wino z Wysp Po³udniowych";
	value						=	10; //-3 for bottle = 7
	visual						=	"ItFo_Wine.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_SouthWine;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_AlcoholTime;
	COUNT[1]					=	2;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	6;
	TEXT[3]						=	NAME_Percent_Sp;
	COUNT[3]					=	25;
	TEXT[4]						=	NAME_Bonus_Xp;
	COUNT[4]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_SouthWine()
{
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]/4; };
	Npc_ChangeAttribute (self, ATR_MANA, 6);
	Npc_AddAlcoholTime (self, 2);
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
	COUNT[2]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_Grog()
{
	Npc_AddAlcoholTime (self, 5);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 12);
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
	COUNT[2]					=	12;
	COUNT[5]					=	value;
};
func void Use_ItFo_Hooch()
{
	Npc_AddAlcoholTime (self, 5);
	Npc_ChangeAttribute (self, ATR_MANA, 12);
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
	COUNT[2]					=	7;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	7;
	COUNT[5]					=	value;
};
func void Use_ItFo_Rum()
{
	Npc_AddAlcoholTime (self, 10);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 7);
	Npc_ChangeAttribute (self, ATR_MANA, 7);
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

var int SchnellerHeringTime;
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

///******************************************************************************************
/// Dishes
///******************************************************************************************
instance ItFo_BugPulp (ItemPR_Food)
{
	name						=	"Owadzia papka";
	value						=	18;
	visual						=	"ItFo_BugPulp.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_BugPulp;
	
	description					=	"Owadzia papka z nasionami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
};
func void Use_ItFo_BugPulp()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 30);
	Npc_AddFoodCounter(18);
};

instance ItFo_ForestStew (ItemPR_Food)
{
	name						=	"Gulasz leœny";
	value						=	30;
	visual						=	"ItFo_ForestStew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_ForestStew;
	
	description					=	"Gulasz z miêsa leœnego";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_ForestStew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 40);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	Npc_AddFoodCounter(30);
};

instance ItFo_FriedPasta (ItemPR_Food)
{
	name						=	"Sma¿ony makaron";
	value						=	24;
	visual						=	"ItFo_FriedPasta.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_FriedPasta;
	
	description					=	"Sma¿ony makaron z cebul¹ i zio³ami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	COUNT[5]					=	value;
};
func void Use_ItFo_FriedPasta()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 40);
	Npc_AddFoodCounter(24);
};

instance ItFo_HoneyOatmeal (ItemPR_Food)
{
	name						=	"Miodowa owsianka";
	value						=	40;
	visual						=	"ItFo_HoneyOatmeal.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_HoneyOatmeal;
	
	description					=	"Miodowa owsianka z jab³kami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	30;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	60;
	COUNT[5]					=	value;
};
func void Use_ItFo_HoneyOatmeal()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 40);
	Npc_ChangeAttribute (self, ATR_MANA, 30);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 60; };
	Npc_AddFoodCounter(40);
};

instance ItFo_JamPaste (ItemPR_Food)
{
	name						=	"Pasta owocowa z d¿emem";
	value						=	45;
	visual						=	"ItFo_JamPaste.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_JamPaste;
	
	description					=	"Pasta owocowa z d¿emem i winogronami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	30;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItFo_JamPaste()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 30);
	Npc_ChangeAttribute (self, ATR_MANA, 50);
	Npc_AddFoodCounter(45);
};

instance ItFo_MeatCauldron (ItemPR_Food)
{
	name						=	"Miêsny kocio³ek";
	value						=	50;
	visual						=	"ItFo_MeatCauldron.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_MeatCauldron;
	
	description					=	"Miêsny kocio³ek z ziemniakami i cebul¹";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_MeatCauldron()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 100);
	Npc_AddFoodCounter(50);
};

instance ItFo_MeatStew (ItemPR_Food)
{
	name						=	"Gulasz miêsny";
	value						=	30;
	visual						=	"ItFo_MeatStew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_MeatStew;
	
	description					=	"Gulasz miêsny z warzywami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_MeatStew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 35);
	Npc_ChangeAttribute (self, ATR_MANA, 35);
	Npc_AddFoodCounter(30);
};

instance ItFo_Pilaf (ItemPR_Food)
{
	name						=	"Pilaf";
	value						=	30;
	visual						=	"ItFo_Pilaf.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Pilaf;
	
	description					=	"Ry¿ z miêsem i warzywami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	50;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Pilaf()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 50);
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	Npc_AddFoodCounter(30);
};

instance ItFo_Puree (ItemPR_Food)
{
	name						=	"Puree";
	value						=	36;
	visual						=	"ItFo_Puree.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Puree;
	
	description					=	"Purre ziemniaczane z cebul¹";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	70;
	COUNT[5]					=	value;
};
func void Use_ItFo_Puree()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 70);
	Npc_AddFoodCounter(36);
};

instance ItFo_Salad (ItemPR_Food)
{
	name						=	"Sa³atka";
	value						=	22;
	visual						=	"ItFo_Salad.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Salad;
	
	description					=	"Sa³atka warzywna";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	25;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItFo_Salad()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 25);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	Npc_AddFoodCounter(22);
};

instance ItFo_ScrambledEggs (ItemPR_Food)
{
	name						=	"Jajecznica";
	value						=	40;
	visual						=	"ItFo_ScrambledEggs.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_ScrambledEggs;
	
	description					=	"Jajecznica z cebul¹";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	75;
	COUNT[5]					=	value;
};
func void Use_ItFo_ScrambledEggs()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 75);
	Npc_AddFoodCounter(40);
};

instance ItFo_Spaghetti (ItemPR_Food)
{
	name						=	"Spaghetti";
	value						=	38;
	visual						=	"ItFo_Spaghetti.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Spaghetti;
	
	description					=	"Ostre spaghetti";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	35;
	TEXT[2]						=	NAME_Bonus_Xp;
	COUNT[2]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_Spaghetti()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 35);
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(20); };
	Npc_AddFoodCounter(38);
};

instance ItFo_SpicyStew (ItemPR_Food)
{
	name						=	"Ostry gulasz";
	value						=	30;
	visual						=	"ItFo_SpicyStew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_SpicyStew;
	
	description					=	"Ostry gulasz z ry¿em i grzybami";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	45;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	15;
	COUNT[5]					=	value;
};
func void Use_ItFo_SpicyStew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 45);
	Npc_ChangeAttribute (self, ATR_MANA, 15);
	Npc_AddFoodCounter(30);
};

instance ItFo_Stew (ItemPR_Food)
{
	name						=	"Gulasz";
	value						=	20;
	visual						=	"ItFo_Stew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_Stew;
	
	description					=	"Gulasz warzywny";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	30;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItFo_Stew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 30);
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	Npc_AddFoodCounter(20);
};

instance ItFo_StewedVegetables (ItemPR_Food)
{
	name						=	"Duszone warzywa";
	value						=	26;
	visual						=	"ItFo_StewedVegetables.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_StewedVegetables;
	
	description					=	"Duszone warzywa z jajkiem";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItFo_StewedVegetables()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 50);
	Npc_AddFoodCounter(26);
};

instance ItFo_WineStew (ItemPR_Food)
{
	name						=	"Gulasz na winie";
	value						=	50;
	visual						=	"ItFo_WineStew.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_WineStew;
	
	description					=	"Gulasz na winie z dzika";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	65;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	25;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	25;
	COUNT[5]					=	value;
};
func void Use_ItFo_WineStew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 65);
	Npc_ChangeAttribute (self, ATR_MANA, 25);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 25; };
	Npc_AddFoodCounter(50);
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
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	50;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	200;
	COUNT[5]					=	value;
};
func void Use_ItFo_XpStew()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 50);
	B_GivePlayerExp(200);
	Npc_AddFoodCounter(20);
};

///******************************************************************************************
/// Soups
///******************************************************************************************
instance ItFo_BerrySoup (ItemPR_Food)
{
	name						=	"Zupa owocowa";
	value						=	24;
	visual						=	"ItFo_BerrySoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_BerrySoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	35;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_BerrySoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 35);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(24);
};

instance ItFo_CabbageSoup (ItemPR_Food)
{
	name						=	"Kapuœniak";
	value						=	38;
	visual						=	"ItFo_CabbageSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_CabbageSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	65;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_CabbageSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 65);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(38);
};

instance ItFo_CheeseSoup (ItemPR_Food)
{
	name						=	"Zupa serowa na piwie";
	value						=	34;
	visual						=	"ItFo_CheeseSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_CheeseSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_CheeseSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 40);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(34);
};

instance ItFo_FishSoup (ItemPR_Food)
{
	name						=	"Zupa rybna";
	value						=	15;
	visual						=	"ItFo_FishSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_FishSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	25;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_FishSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 25);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(15);
};

instance ItFo_GreenSoup (ItemPR_Food)
{
	name						=	"Zupa z pora";
	value						=	14;
	visual						=	"ItFo_GreenSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_GreenSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	10;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_GreenSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 10);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(14);
};

instance ItFo_HoneySoup (ItemPR_Food)
{
	name						=	"Ry¿anka z miodem";
	value						=	25;
	visual						=	"ItFo_HoneySoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_HoneySoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	30;
	COUNT[5]					=	value;
};
func void Use_ItFo_HoneySoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 20);
	Npc_ChangeAttribute (self, ATR_MANA, 30);
	Npc_AddFoodCounter(25);
};

instance ItFo_MilkSoup (ItemPR_Food)
{
	name						=	"Zupa mleczna";
	value						=	18;
	visual						=	"ItFo_MilkSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_MilkSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	25;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	5;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	60;
	COUNT[5]					=	value;
};
func void Use_ItFo_MilkSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 25);
	Npc_ChangeAttribute (self, ATR_MANA, 5);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 60; };
	Npc_AddFoodCounter(18);
};

instance ItFo_MushroomSoup (ItemPR_Food)
{
	name						=	"Zupa grzybowa";
	value						=	20;
	visual						=	"ItFo_MushroomSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_MushroomSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	10;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	20;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_MushroomSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 10);
	Npc_ChangeAttribute (self, ATR_MANA, 20);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(20);
};

instance ItFo_OnionSoup (ItemPR_Food)
{
	name						=	"Zupa cebulowa";
	value						=	22;
	visual						=	"ItFo_OnionSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_OnionSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	35;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	100;
	COUNT[5]					=	value;
};
func void Use_ItFo_OnionSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 35);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	Npc_AddFoodCounter(22);
};

instance ItFo_OysterSoup (ItemPR_Food)
{
	name						=	"Zupa z ostryg";
	value						=	40;
	visual						=	"ItFo_OysterSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_OysterSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	20;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	60;
	COUNT[5]					=	value;
};
func void Use_ItFo_OysterSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 40);
	Npc_ChangeAttribute (self, ATR_MANA, 20);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 60; };
	Npc_AddFoodCounter(40);
};

instance ItFo_SausageSoup (ItemPR_Food)
{
	name						=	"Zupa piwna z kie³bas¹";
	value						=	32;
	visual						=	"ItFo_SausageSoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_SausageSoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	40;
	COUNT[5]					=	value;
};
func void Use_ItFo_SausageSoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 40);
	Npc_ChangeAttribute (self, ATR_MANA, 10);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 40; };
	Npc_AddFoodCounter(32);
};

instance ItFo_SpicySoup (ItemPR_Food)
{
	name						=	"Ostra zupa";
	value						=	38;
	visual						=	"ItFo_SpicySoup.3ds";
	
	material					=	MAT_WOOD;
	scemeName					=	"RICE";
	on_state[0]					=	Use_ItFo_SpicySoup;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	30;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	100;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	20;
	COUNT[5]					=	value;
};
func void Use_ItFo_SpicySoup()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 30);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 100; };
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(20); };
	Npc_AddFoodCounter(38);
};

///******************************************************************************************
/// Compotes & decoctions
///******************************************************************************************
instance ItFo_AppleCompote (ItemPR_Food)
{
	name						=	"Kompot jab³kowy";
	value						=	15; //-3 for bottle = 12
	visual						=	"ItFo_AppleCompote.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_AppleCompote;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	16;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	80;
	COUNT[5]					=	value;
};
func void Use_ItFo_AppleCompote()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 16);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 80; };
	CreateInvItem (self, ItMi_EmptyBottle);
	Npc_AddFoodCounter(12);
};

instance ItFo_BerryCompote (ItemPR_Food)
{
	name						=	"Kompot jagodowy";
	value						=	15; //-3 for bottle = 12
	visual						=	"ItFo_BerryCompote.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_BerryCompote;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	12;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	4;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	80;
	COUNT[5]					=	value;
};
func void Use_ItFo_BerryCompote()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 12);
	Npc_ChangeAttribute (self, ATR_MANA, 4);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 80; };
	CreateInvItem (self, ItMi_EmptyBottle);
	Npc_AddFoodCounter(12);
};

instance ItFo_PearCompote (ItemPR_Food)
{
	name						=	"Kompot gruszkowy";
	value						=	15; //-3 for bottle = 12
	visual						=	"ItFo_PearCompote.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_PearCompote;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	8;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	8;
	TEXT[3]						=	NAME_Bonus_Sp;
	COUNT[3]					=	80;
	COUNT[5]					=	value;
};
func void Use_ItFo_PearCompote()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 8);
	Npc_ChangeAttribute (self, ATR_MANA, 8);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 80; };
	CreateInvItem (self, ItMi_EmptyBottle);
	Npc_AddFoodCounter(12);
};

instance ItFo_BlueDecoction (ItemPR_Food)
{
	name						=	"Wywar z serafisu";
	value						=	25; //-3 for bottle = 22
	visual						=	"ItFo_BlueDecoction.3ds";
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	on_state[0]					=	Use_ItFo_BlueDecoction;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	35;
	TEXT[2]						=	NAME_Bonus_Sp;
	COUNT[2]					=	35;
	COUNT[5]					=	value;
};
func void Use_ItFo_BlueDecoction()
{
	Npc_ChangeAttribute (self, ATR_MANA, 35);
	if (Npc_IsPlayer(self)) { self.aivar[AIV_STAMINA] += 35; };
	CreateInvItem (self, ItMi_EmptyBottle);
};
