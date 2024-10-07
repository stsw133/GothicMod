///******************************************************************************************	
prototype ItemPR_Plant (C_Item)
{
	mainflag					=	ITEM_KAT_POTIONS;
	flags						=	ITEM_MULTI;
	material					=	MAT_LEATHER;
	TEXT[5]						=	NAME_Value;
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
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"mikstur o dzia�aniu czasowym.";
	COUNT[5]					=	value;
};

instance ItPl_Perm_Herb (ItemPR_Plant)
{
	name						=	"Szczaw kr�lewski";
	value						=	500;
	visual						=	"ItPl_Perm_Herb.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"mikstur o dzia�aniu trwa�ym.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_GraveMoss (ItemPR_Plant)
{
	name						=	"Cmentarny mech";
	value						=	50;
	visual						=	"ItPl_GraveMoss.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"mikstur o dzia�aniu neguj�cym.";
	COUNT[5]					=	value;
};

instance ItPl_MountainMoss (ItemPR_Plant)
{
	name						=	"G�rski mech";
	value						=	50;
	visual						=	"ItPl_MountainMoss.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"mikstur o dzia�aniu neguj�cym.";
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
	TEXT[1]						=	"U�ywana jako sk�adnik";
	TEXT[2]						=	"s�abych mikstur leczniczych.";
	COUNT[5]					=	value;
};

instance ItPl_Health_Herb_02 (ItemPR_Plant)
{
	name						=	"Ziele lecznicze";
	value						=	20;
	visual						=	"ItPl_Health_Herb_02.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywane jako sk�adnik";
	TEXT[2]						=	"�rednich mikstur leczniczych.";
	COUNT[5]					=	value;
};

instance ItPl_Health_Herb_03 (ItemPR_Plant)
{
	name						=	"Korze� leczniczy";
	value						=	30;
	visual						=	"ItPl_Health_Herb_03.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"silnych mikstur leczniczych.";
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
	TEXT[1]						=	"U�ywana jako sk�adnik";
	TEXT[2]						=	"s�abych mikstur many.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_02 (ItemPR_Plant)
{
	name						=	"Ziele many";
	value						=	20;
	visual						=	"ItPl_Mana_Herb_02.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywane jako sk�adnik";
	TEXT[2]						=	"�rednich mikstur many.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_03 (ItemPR_Plant)
{
	name						=	"Korze� many";
	value						=	30;
	visual						=	"ItPl_Mana_Herb_03.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"silnych mikstur many.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
instance ItPl_Speed_Herb_01 (ItemPR_Plant)
{
	name						=	"Z�bate ziele";
	value						=	50;
	visual						=	"ItPl_Speed_Herb_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany jako sk�adnik";
	TEXT[2]						=	"mikstur szybko�ci.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Mixed
///******************************************************************************************
instance ItPl_Blueplant (ItemPR_Plant)
{
	name						=	"Serafis";
	value						=	10;
	visual						=	"ItPl_Blueplant.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"mikstur �ycia i many.";
	COUNT[5]					=	value;
};

instance ItPl_Redplant (ItemPR_Plant)
{
	name						=	"Velais";
	value						=	10;
	visual						=	"ItPl_Redplant.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"mikstur �ycia i many.";
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
	TEXT[1]						=	"U�ywane do tworzenia";
	TEXT[2]						=	"mikstur zmiany percepcji.";
	TEXT[3]						=	"Lub u�yj by zwin�� skr�ta.";
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
	TEXT[1]						=	"U�ywane do tworzenia";
	TEXT[2]						=	"mikstur zmiany percepcji.";
	TEXT[3]						=	"Lub u�yj by zwin�� skr�ta.";
	COUNT[5]					=	value;
};
func void Use_ItPl_DesertHerb()
{
	CreateInvItem (self, ItMi_DesertJoint);
	Print("Zwini�to skr�ta z pustynnego ziela!");
};

///******************************************************************************************
/// Permanent
///******************************************************************************************
instance ItPl_Health_Herb_04 (ItemPR_Plant)
{
	name						=	"S�oneczny aloes";
	value						=	150;
	visual						=	"ItPl_Health_Herb_04.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"mikstur �ywotno�ci.";
	COUNT[5]					=	value;
};

instance ItPl_Mana_Herb_04 (ItemPR_Plant)
{
	name						=	"Ksi�ycowy aloes";
	value						=	150;
	visual						=	"ItPl_Mana_Herb_04.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"mikstur uduchowienia.";
	COUNT[5]					=	value;
};

instance ItPl_Strength_Herb_01 (ItemPR_Plant)
{
	name						=	"Smoczy korze�";
	value						=	150;
	visual						=	"ItPl_Strength_Herb_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"mikstur si�y.";
	COUNT[5]					=	value;
};

instance ItPl_Dex_Herb_01 (ItemPR_Plant)
{
	name						=	"Goblinie jagody";
	value						=	150;
	visual						=	"ItPl_Dex_Herb_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywane do tworzenia";
	TEXT[2]						=	"mikstur zr�czno�ci.";
	COUNT[5]					=	value;
};

instance ItPl_Power_Herb_01 (ItemPR_Plant)
{
	name						=	"Harpia winoro�l";
	value						=	150;
	visual						=	"ItPl_Power_Herb_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywana do tworzenia";
	TEXT[2]						=	"mikstur mocy.";
	COUNT[5]					=	value;
};

instance ItPl_Prot_Herb_01 (ItemPR_Plant)
{
	name						=	"Kamienna trzcina";
	value						=	150;
	visual						=	"ItPl_Prot_Herb_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywana do tworzenia";
	TEXT[2]						=	"mikstur ochrony.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Mushrooms
///******************************************************************************************
instance ItPl_Mushroom_01 (ItemPR_Plant)
{
	name						=	"Mu�owy grzyb";
	value						=	10;
	visual						=	"ItPl_Mushroom_01.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do przygotowania";
	TEXT[2]						=	"posi�k�w o �agodnym smaku.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_02 (ItemPR_Plant)
{
	name						=	"Mu�owy grzyb";
	value						=	20;
	visual						=	"ItPl_Mushroom_02.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do przygotowania";
	TEXT[2]						=	"posi�k�w o �agodnym smaku.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_03 (ItemPR_Plant)
{
	name						=	"Piekielnik";
	value						=	10;
	visual						=	"ItPl_Mushroom_cave_small.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do przygotowania";
	TEXT[2]						=	"posi�k�w o ostrym smaku.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_04 (ItemPR_Plant)
{
	name						=	"Piekielnik";
	value						=	20;
	visual						=	"ItPl_Mushroom_cave_big.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do przygotowania";
	TEXT[2]						=	"posi�k�w o ostrym smaku.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_05 (ItemPR_Plant)
{
	name						=	"Truj�cy grzyb";
	value						=	10;
	visual						=	"ItPl_Mushroom_venom_small.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"trucizn lub odtrutek.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_06 (ItemPR_Plant)
{
	name						=	"Truj�cy grzyb";
	value						=	20;
	visual						=	"ItPl_Mushroom_venom_big.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywany do tworzenia";
	TEXT[2]						=	"trucizn lub odtrutek.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItPl_Mushroom_07 (ItemPR_Plant)
{
	name						=	"Ksi�ycowa rosa";
	value						=	10;
	visual						=	"ItPl_Mushroom_magic_small.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywana do tworzenia";
	TEXT[2]						=	"lekarstw antymagicznych.";
	COUNT[5]					=	value;
};

instance ItPl_Mushroom_08 (ItemPR_Plant)
{
	name						=	"Ksi�ycowa rosa";
	value						=	20;
	visual						=	"ItPl_Mushroom_magic_big.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywana do tworzenia";
	TEXT[2]						=	"lekarstw antymagicznych.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Common
///******************************************************************************************
instance ItPl_Beet (ItemPR_Plant)
{
	name						=	"Rzepa";
	value						=	5;
	visual						=	"ItPl_Beet.3ds";
	
	description					=	name;
	TEXT[1]						=	"U�ywana do gotowania potraw.";
	COUNT[5]					=	value;
};

instance ItPl_Cactus (ItemPR_Plant)
{
	name						=	"Kaktus";
	value						=	5;
	visual						=	"ItPl_Cactus.3ds";
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_MAKEALCOHOL_S1;
	
	description					=	name;
	TEXT[1]						=	"U�ywany do warzenia tequili.";
	COUNT[5]					=	value;
};

instance ItPl_Forestberry (ItemPR_Plant)
{
	name						=	"Dzika jagoda";
	value						=	5;
	visual						=	"ItPl_Forestberry.3ds";
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_MAKEALCOHOL_S1;
	
	description					=	name;
	TEXT[1]						=	"U�ywana do warzenia wina.";
	COUNT[5]					=	value;
};

instance ItPl_Planeberry (ItemPR_Plant)
{
	name						=	"Alkojagoda";
	value						=	5;
	visual						=	"ItPl_Planeberry.3ds";
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_MAKEALCOHOL_S1;
	
	description					=	name;
	TEXT[1]						=	"U�ywana do warzenia gorza�y.";
	COUNT[5]					=	value;
};

instance ItPl_Weed (ItemPR_Plant)
{
	name						=	"Chwasty";
	value						=	0;
	visual						=	"ItPl_Weed.3ds";
	
	description					=	name;
	COUNT[5]					=	value;
};
