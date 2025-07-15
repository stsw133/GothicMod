///******************************************************************************************	
prototype ItemPR_Plant (C_Item)
{
	mainflag					=	ITEM_KAT_POTIONS;
	flags						=	ITEM_MULTI;
	material					=	MAT_LEATHER;
	TEXT[5]						=	NAME_Value;
	INV_ROTX					=	-15;
};

///******************************************************************************************
/// Components
///******************************************************************************************
instance ItPl_Temp_Herb (ItemPR_Plant)
{
	name						=	"Rdest polny";
	value						=	50;
	visual						=	"ItPl_Temp_Herb.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur o dzia�aniu czasowym.";
	COUNT[5]					=	value;
};

instance ItPl_Perm_Herb (ItemPR_Plant)
{
	name						=	"Szczaw kr�lewski";
	value						=	500;
	visual						=	"ItPl_Perm_Herb.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur o dzia�aniu trwa�ym.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Health
///******************************************************************************************
instance ItPl_Health_Herb_01 (ItemPR_Plant)
{
	name						=	"Ro�lina lecznicza";
	value						=	10;
	visual						=	"ItPl_Health_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik s�abych mikstur leczniczych.";
	COUNT[5]					=	value;
};

instance ItPl_Health_Herb_02 (ItemPR_Plant)
{
	name						=	"Ziele lecznicze";
	value						=	20;
	visual						=	"ItPl_Health_Herb_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik �rednich mikstur leczniczych.";
	COUNT[5]					=	value;
};

instance ItPl_Health_Herb_03 (ItemPR_Plant)
{
	name						=	"Korze� leczniczy";
	value						=	30;
	visual						=	"ItPl_Health_Herb_03.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik silnych mikstur leczniczych.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Mana
///******************************************************************************************
instance ItPl_Mana_Herb_01 (ItemPR_Plant)
{
	name						=	"Ro�lina many";
	value						=	10;
	visual						=	"ItPl_Mana_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik s�abych mikstur many.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_02 (ItemPR_Plant)
{
	name						=	"Ziele many";
	value						=	20;
	visual						=	"ItPl_Mana_Herb_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik �rednich mikstur many.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_03 (ItemPR_Plant)
{
	name						=	"Korze� many";
	value						=	30;
	visual						=	"ItPl_Mana_Herb_03.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik silnych mikstur many.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Speed
///******************************************************************************************
instance ItPl_Speed_Herb_01 (ItemPR_Plant)
{
	name						=	"Z�bate ziele";
	value						=	50;
	visual						=	"ItPl_Speed_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur energii.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Perception
///******************************************************************************************
instance ItPl_SwampHerb (ItemPR_Plant)
{
	name						=	"Bagienne ziele";
	value						=	25;
	visual						=	"ItPl_SwampHerb.3ds";
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItPl_SwampHerb;
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur zmiany percepcji.";
	TEXT[1]						=	"Lub u�yj by zwin�� skr�ta.";
	COUNT[5]					=	value;
};
func void Use_ItPl_SwampHerb()
{
	CreateInvItem (self, ItMi_Joint);
	Print("Zwini�to skr�ta z bagiennego ziela!");
};

instance ItPl_DesertHerb (ItemPR_Plant)
{
	name						=	"Pustynne ziele";
	value						=	25;
	visual						=	"ItPl_DesertHerb.3ds";
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItPl_DesertHerb;
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur zmiany percepcji.";
	TEXT[1]						=	"Lub u�yj by zwin�� skr�ta.";
	COUNT[5]					=	value;
};
func void Use_ItPl_DesertHerb()
{
	CreateInvItem (self, ItMi_DesertJoint);
	Print("Zwini�to skr�ta z pustynnego ziela!");
};

///******************************************************************************************
/// Moss
///******************************************************************************************
instance ItPl_GraveMoss (ItemPR_Plant)
{
	name						=	"Cmentarny mech";
	value						=	25;
	visual						=	"ItPl_GraveMoss.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik lekarstw i odstraszaczy.";
	COUNT[5]					=	value;
};

instance ItPl_MountainMoss (ItemPR_Plant)
{
	name						=	"G�rski mech";
	value						=	25;
	visual						=	"ItPl_MountainMoss.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik lekarstw i odstraszaczy.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Water
///******************************************************************************************
instance ItPl_Seaweed (ItemPR_Plant)
{
	name						=	"Wodorosty";
	value						=	25;
	visual						=	"ItPl_Seaweed.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur oddychania pod wod�.";
	COUNT[5]					=	value;
};

instance ItPl_Stonereed (ItemPR_Plant)
{
	name						=	"Kamienna trzcina";
	value						=	25;
	visual						=	"ItPl_Stonereed.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur ochronnych.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Perm
///******************************************************************************************
instance ItPl_Health_Herb_04 (ItemPR_Plant)
{
	name						=	"S�oneczny aloes";
	value						=	150;
	visual						=	"ItPl_Health_Herb_04.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur �ywotno�ci.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_04 (ItemPR_Plant)
{
	name						=	"Ksi�ycowy aloes";
	value						=	150;
	visual						=	"ItPl_Mana_Herb_04.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur uduchowienia.";
	COUNT[5]					=	value;
};

instance ItPl_Strength_Herb_01 (ItemPR_Plant)
{
	name						=	"Smoczy korze�";
	value						=	150;
	visual						=	"ItPl_Strength_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur si�y.";
	COUNT[5]					=	value;
};

instance ItPl_Dex_Herb_01 (ItemPR_Plant)
{
	name						=	"Goblinie jagody";
	value						=	150;
	visual						=	"ItPl_Dex_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur zr�czno�ci.";
	COUNT[5]					=	value;
};

instance ItPl_Power_Herb_01 (ItemPR_Plant)
{
	name						=	"Harpia winoro�l";
	value						=	150;
	visual						=	"ItPl_Power_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur mocy.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Other
///******************************************************************************************
instance ItPl_Blueplant (ItemPR_Plant)
{
	name						=	"Serafis";
	value						=	10;
	visual						=	"ItPl_Blueplant.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur �ycia i many.";
	COUNT[5]					=	value;
};

instance ItPl_Purpleplant (ItemPR_Plant)
{
	name						=	"Kwiat �witu";
	value						=	10;
	visual						=	"ItPl_Purpleplant.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik mikstur �ycia i many.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Mushrooms
///******************************************************************************************
instance ItPl_Mushroom_01 (ItemPR_Plant)
{
	name						=	"Mu�owy grzyb";
	value						=	5;
	visual						=	"ItPl_Mushroom_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik posi�k�w o �agodnym smaku.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_02 (ItemPR_Plant)
{
	name						=	"Du�y mu�owy grzyb";
	value						=	10;
	visual						=	"ItPl_Mushroom_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik posi�k�w o �agodnym smaku.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_03 (ItemPR_Plant)
{
	name						=	"Piekielnik";
	value						=	5;
	visual						=	"ItPl_Mushroom_cave_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik posi�k�w o ostrym smaku.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_04 (ItemPR_Plant)
{
	name						=	"Du�y piekielnik";
	value						=	10;
	visual						=	"ItPl_Mushroom_cave_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik posi�k�w o ostrym smaku.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_05 (ItemPR_Plant)
{
	name						=	"Truj�cy grzyb";
	value						=	5;
	visual						=	"ItPl_Mushroom_venom_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik trucizn lub odtrutek.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_06 (ItemPR_Plant)
{
	name						=	"Du�y truj�cy grzyb";
	value						=	10;
	visual						=	"ItPl_Mushroom_venom_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik trucizn lub odtrutek.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_07 (ItemPR_Plant)
{
	name						=	"Ksi�ycowa rosa";
	value						=	5;
	visual						=	"ItPl_Mushroom_magic_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik lekarstw antymagicznych.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_08 (ItemPR_Plant)
{
	name						=	"Du�a ksi�ycowa rosa";
	value						=	10;
	visual						=	"ItPl_Mushroom_magic_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik lekarstw antymagicznych.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Common
///******************************************************************************************
instance ItPl_Beet (ItemPR_iFood)
{
	name						=	"Rzepa";
	value						=	5;
	visual						=	"ItPl_Beet.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItPl_Forestberry (ItemPR_Food)
{
	name						=	"Le�na jagoda";
	value						=	5;
	visual						=	"ItPl_Forestberry.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItPl_Forestberry;
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik kwa�nego wina.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	1;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItPl_Forestberry()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 1);
	Npc_ChangeAttribute (self, ATR_MANA, 3);
	Npc_AddFoodCounter(5);
};

instance ItPl_Planeberry (ItemPR_Food)
{
	name						=	"Polna jagoda";
	value						=	5;
	visual						=	"ItPl_Planeberry.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItPl_Planeberry;
	
	description					=	name;
	TEXT[0]						=	"Sk�adnik kompotu jagodowego.";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	3;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItPl_Planeberry()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, 3);
	Npc_ChangeAttribute (self, ATR_MANA, 1);
	Npc_AddFoodCounter(5);
};

instance ItPl_Weed (ItemPR_Plant)
{
	name						=	"Chwasty";
	value						=	0;
	visual						=	"ItPl_Weed.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Joints
///******************************************************************************************
prototype ItemPR_Joint (C_Item)
{
	name						=	"Skr�t";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	scemename					=	"JOINT";
	material					=	MAT_LEATHER;
};

///******************************************************************************************
instance ItMi_DesertJoint (ItemPR_Joint)
{
	value						=	25;
	visual						=	"ItMi_Joint_US.3ds";
	on_state[0]					=	Use_ItMi_DesertJoint;
	
	description					=	"Skr�t pustynnego ziela";
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	-10;
	TEXT[2]						=	NAME_Bonus_SpTime;
	COUNT[2]					=	250;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItMi_DesertJoint()
{
	Npc_AddFoodTime (self, BarOrderSP, 250);
	Npc_AddFoodTime (self, BarOrderXP, 10);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/10);
};

instance ItMi_Joint (ItemPR_Joint)
{
	value						=	25;
	visual						=	"ItMi_Joint_US.3ds";
	on_state[0]					=	Use_ItMi_Joint;
	
	description					=	"Skr�t bagiennego ziela";
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	-10;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	50;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItMi_Joint()
{
	Npc_AddFoodTime (self, BarOrderMP, 50);
	Npc_AddFoodTime (self, BarOrderXP, 10);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/10);
};

instance ItMi_SleJoint (ItemPR_Joint)
{
	value						=	100;
	visual						=	"ItMi_Joint_US.3ds";
	on_state[0]					=	Use_ItMi_SleJoint;
	
	description					=	"Skr�t 'Zielonego Nowicjusza'";
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	50;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	200;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItMi_SleJoint()
{
	Npc_AddFoodTime (self, BarOrderMP, 200);
	Npc_AddFoodTime (self, BarOrderXP, 50);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/2);
};

///******************************************************************************************
/// Tabak
///******************************************************************************************
instance ItMi_Tabak (C_Item)
{
	name						=	"Tyto�";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	10;
	visual						=	"ItMi_Pocket_Green.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"tytoni�w smakowych.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_ChocolateTabak (ItemPR_Joint)
{
	value						=	10;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_ChocolateTabak;
	
	description					=	"Skr�t czekoladowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-2;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItMi_ChocolateTabak()
{
	Npc_AddFoodTime (self, BarOrderMP, 10);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -2);
};

instance ItMi_CoconutTabak (ItemPR_Joint)
{
	value						=	6;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_CoconutTabak;
	
	description					=	"Skr�t kokosowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-2;
	TEXT[2]						=	NAME_Bonus_SpTime;
	COUNT[2]					=	20;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItMi_CoconutTabak()
{
	Npc_AddFoodTime (self, BarOrderSP, 20);
	Npc_AddFoodTime (self, BarOrderXP, 2);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -2);
};

instance ItMi_FruitTabak (ItemPR_Joint)
{
	value						=	4;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_FruitTabak;
	
	description					=	"Skr�t owocowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-1;
	TEXT[2]						=	NAME_Bonus_XpTime;
	COUNT[2]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItMi_FruitTabak()
{
	Npc_AddFoodTime (self, BarOrderXP, 1);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -1);
};

instance ItMi_HoneyTabak (ItemPR_Joint)
{
	value						=	5;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_HoneyTabak;
	
	description					=	"Skr�t miodowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-1;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	6;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItMi_HoneyTabak()
{
	Npc_AddFoodTime (self, BarOrderMP, 6);
	Npc_AddFoodTime (self, BarOrderXP, 2);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -1);
};

instance ItMi_MushroomTabak (ItemPR_Joint)
{
	value						=	4;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_MushroomTabak;
	
	description					=	"Skr�t grzybowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-1;
	TEXT[2]						=	NAME_Bonus_XpTime;
	COUNT[2]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItMi_MushroomTabak()
{
	Npc_AddFoodTime (self, BarOrderXP, 1);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -1);
};

instance ItMi_SwampTabak (ItemPR_Joint)
{
	value						=	7;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_SwampTabak;
	
	description					=	"Skr�t zio�owego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-3;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	9;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItMi_SwampTabak()
{
	Npc_AddFoodTime (self, BarOrderMP, 9);
	Npc_AddFoodTime (self, BarOrderXP, 1);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -3);
};
