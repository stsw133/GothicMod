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
	TEXT[0]						=	"Sk³adnik mikstur o dzia³aniu czasowym.";
	COUNT[5]					=	value;
};

instance ItPl_Perm_Herb (ItemPR_Plant)
{
	name						=	"Szczaw królewski";
	value						=	500;
	visual						=	"ItPl_Perm_Herb.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur o dzia³aniu trwa³ym.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Health
///******************************************************************************************
instance ItPl_Health_Herb_01 (ItemPR_Plant)
{
	name						=	"Roœlina lecznicza";
	value						=	10;
	visual						=	"ItPl_Health_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik s³abych mikstur leczniczych.";
	COUNT[5]					=	value;
};

instance ItPl_Health_Herb_02 (ItemPR_Plant)
{
	name						=	"Ziele lecznicze";
	value						=	20;
	visual						=	"ItPl_Health_Herb_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik œrednich mikstur leczniczych.";
	COUNT[5]					=	value;
};

instance ItPl_Health_Herb_03 (ItemPR_Plant)
{
	name						=	"Korzeñ leczniczy";
	value						=	30;
	visual						=	"ItPl_Health_Herb_03.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik silnych mikstur leczniczych.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Mana
///******************************************************************************************
instance ItPl_Mana_Herb_01 (ItemPR_Plant)
{
	name						=	"Roœlina many";
	value						=	10;
	visual						=	"ItPl_Mana_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik s³abych mikstur many.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_02 (ItemPR_Plant)
{
	name						=	"Ziele many";
	value						=	20;
	visual						=	"ItPl_Mana_Herb_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik œrednich mikstur many.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_03 (ItemPR_Plant)
{
	name						=	"Korzeñ many";
	value						=	30;
	visual						=	"ItPl_Mana_Herb_03.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik silnych mikstur many.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Speed
///******************************************************************************************
instance ItPl_Speed_Herb_01 (ItemPR_Plant)
{
	name						=	"Zêbate ziele";
	value						=	50;
	visual						=	"ItPl_Speed_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur energii.";
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
	TEXT[0]						=	"Sk³adnik mikstur zmiany percepcji.";
	TEXT[1]						=	"Lub u¿yj by zwin¹æ skrêta.";
	COUNT[5]					=	value;
};
func void Use_ItPl_SwampHerb()
{
	CreateInvItem (self, ItMi_Joint);
	Print("Zwiniêto skrêta z bagiennego ziela!");
};

instance ItPl_DesertHerb (ItemPR_Plant)
{
	name						=	"Pustynne ziele";
	value						=	25;
	visual						=	"ItPl_DesertHerb.3ds";
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItPl_DesertHerb;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur zmiany percepcji.";
	TEXT[1]						=	"Lub u¿yj by zwin¹æ skrêta.";
	COUNT[5]					=	value;
};
func void Use_ItPl_DesertHerb()
{
	CreateInvItem (self, ItMi_DesertJoint);
	Print("Zwiniêto skrêta z pustynnego ziela!");
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
	TEXT[0]						=	"Sk³adnik lekarstw i odstraszaczy.";
	COUNT[5]					=	value;
};

instance ItPl_MountainMoss (ItemPR_Plant)
{
	name						=	"Górski mech";
	value						=	25;
	visual						=	"ItPl_MountainMoss.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik lekarstw i odstraszaczy.";
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
	TEXT[0]						=	"Sk³adnik mikstur oddychania pod wod¹.";
	COUNT[5]					=	value;
};

instance ItPl_Stonereed (ItemPR_Plant)
{
	name						=	"Kamienna trzcina";
	value						=	25;
	visual						=	"ItPl_Stonereed.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur ochronnych.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Perm
///******************************************************************************************
instance ItPl_Health_Herb_04 (ItemPR_Plant)
{
	name						=	"S³oneczny aloes";
	value						=	150;
	visual						=	"ItPl_Health_Herb_04.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur ¿ywotnoœci.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_04 (ItemPR_Plant)
{
	name						=	"Ksiê¿ycowy aloes";
	value						=	150;
	visual						=	"ItPl_Mana_Herb_04.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur uduchowienia.";
	COUNT[5]					=	value;
};

instance ItPl_Strength_Herb_01 (ItemPR_Plant)
{
	name						=	"Smoczy korzeñ";
	value						=	150;
	visual						=	"ItPl_Strength_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur si³y.";
	COUNT[5]					=	value;
};

instance ItPl_Dex_Herb_01 (ItemPR_Plant)
{
	name						=	"Goblinie jagody";
	value						=	150;
	visual						=	"ItPl_Dex_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur zrêcznoœci.";
	COUNT[5]					=	value;
};

instance ItPl_Power_Herb_01 (ItemPR_Plant)
{
	name						=	"Harpia winoroœl";
	value						=	150;
	visual						=	"ItPl_Power_Herb_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur mocy.";
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
	TEXT[0]						=	"Sk³adnik mikstur ¿ycia i many.";
	COUNT[5]					=	value;
};

instance ItPl_Purpleplant (ItemPR_Plant)
{
	name						=	"Kwiat œwitu";
	value						=	10;
	visual						=	"ItPl_Purpleplant.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur ¿ycia i many.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Mushrooms
///******************************************************************************************
instance ItPl_Mushroom_01 (ItemPR_Plant)
{
	name						=	"Mu³owy grzyb";
	value						=	5;
	visual						=	"ItPl_Mushroom_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik posi³ków o ³agodnym smaku.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_02 (ItemPR_Plant)
{
	name						=	"Du¿y mu³owy grzyb";
	value						=	10;
	visual						=	"ItPl_Mushroom_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik posi³ków o ³agodnym smaku.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_03 (ItemPR_Plant)
{
	name						=	"Piekielnik";
	value						=	5;
	visual						=	"ItPl_Mushroom_cave_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik posi³ków o ostrym smaku.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_04 (ItemPR_Plant)
{
	name						=	"Du¿y piekielnik";
	value						=	10;
	visual						=	"ItPl_Mushroom_cave_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik posi³ków o ostrym smaku.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_05 (ItemPR_Plant)
{
	name						=	"Truj¹cy grzyb";
	value						=	5;
	visual						=	"ItPl_Mushroom_venom_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik trucizn lub odtrutek.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_06 (ItemPR_Plant)
{
	name						=	"Du¿y truj¹cy grzyb";
	value						=	10;
	visual						=	"ItPl_Mushroom_venom_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik trucizn lub odtrutek.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_07 (ItemPR_Plant)
{
	name						=	"Ksiê¿ycowa rosa";
	value						=	5;
	visual						=	"ItPl_Mushroom_magic_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik lekarstw antymagicznych.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_08 (ItemPR_Plant)
{
	name						=	"Du¿a ksiê¿ycowa rosa";
	value						=	10;
	visual						=	"ItPl_Mushroom_magic_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik lekarstw antymagicznych.";
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
	TEXT[0]						=	"Sk³adnik gotowanych potraw.";
	COUNT[5]					=	value;
};

instance ItPl_Forestberry (ItemPR_Food)
{
	name						=	"Leœna jagoda";
	value						=	5;
	visual						=	"ItPl_Forestberry.3ds";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItPl_Forestberry;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik kwaœnego wina.";
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
	TEXT[0]						=	"Sk³adnik kompotu jagodowego.";
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
	name						=	"Skrêt";
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
	
	description					=	"Skrêt pustynnego ziela";
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
	
	description					=	"Skrêt bagiennego ziela";
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
	
	description					=	"Skrêt 'Zielonego Nowicjusza'";
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
	name						=	"Tytoñ";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	10;
	visual						=	"ItMi_Pocket_Green.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"tytoniów smakowych.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_ChocolateTabak (ItemPR_Joint)
{
	value						=	10;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_ChocolateTabak;
	
	description					=	"Skrêt czekoladowego tytoniu";
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
	
	description					=	"Skrêt kokosowego tytoniu";
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
	
	description					=	"Skrêt owocowego tytoniu";
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
	
	description					=	"Skrêt miodowego tytoniu";
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
	
	description					=	"Skrêt grzybowego tytoniu";
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
	
	description					=	"Skrêt zio³owego tytoniu";
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
