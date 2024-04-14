///******************************************************************************************	
prototype ItemPR_Plant (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
/// Components
///******************************************************************************************
instance ItPl_Temp_Herb (ItemPR_Plant)
{
	name 					=	"Rdest polny";
	value 					=	60;
	visual 					=	"ItPl_Temp_Herb.3ds";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany jako sk³adnik";
	TEXT[2]					=	"mikstur o dzia³aniu czasowym.";
	COUNT[5]				= 	value;
};
instance ItPl_Weak_Herb (ItemPR_Plant)
{
	name 					=	"Cmentarny mech";
	value 					=	60;
	visual 					=	"ItPl_Weak_Herb.3ds";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany jako sk³adnik";
	TEXT[2]					=	"mikstur o dzia³aniu neguj¹cym.";
	COUNT[5]				= 	value;
};
instance ItPl_Perm_Herb (ItemPR_Plant)
{
	name 					=	"Szczaw królewski";
	value 					=	300;
	visual 					=	"ItPl_Perm_Herb.3ds";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany jako sk³adnik";
	TEXT[2]					=	"mikstur o dzia³aniu trwa³ym.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Health
///******************************************************************************************
instance ItPl_Health_Herb_01 (ItemPR_Plant)
{
	name 					=	"Roœlina lecznicza";
	value 					=	5;
	visual 					=	"ItPl_Health_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"s³abych mikstur leczniczych.";
	COUNT[5]				= 	value;
};
instance ItPl_Health_Herb_02 (ItemPR_Plant)
{
	name 					=	"Ziele lecznicze";
	value 					=	10;
	visual 					=	"ItPl_Health_Herb_02.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywane do tworzenia";
	TEXT[2]					=	"œrednich mikstur leczniczych.";
	COUNT[5]				= 	value;
};
instance ItPl_Health_Herb_03 (ItemPR_Plant)
{
	name 					=	"Korzeñ leczniczy";
	value 					=	15;
	visual 					=	"ItPl_Health_Herb_03.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"silnych mikstur leczniczych.";
	COUNT[5]				=	value;
};
///******************************************************************************************
/// Mana
///******************************************************************************************
instance ItPl_Mana_Herb_01 (ItemPR_Plant)
{
	name 					=	"Roœlina many";
	value 					=	5;
	visual 					=	"ItPl_Mana_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"s³abych mikstur many.";
	COUNT[5]				= 	value;
};
instance ItPl_Mana_Herb_02 (ItemPR_Plant)
{
	name 					=	"Ziele many";
	value 					=	10;
	visual 					=	"ItPl_Mana_Herb_02.3ds";
	
	description				=	name;
	TEXT[1]					=	"U¿ywane do tworzenia";
	TEXT[2]					=	"œrednich mikstur many.";
	COUNT[5]				= 	value;
};
instance ItPl_Mana_Herb_03 (ItemPR_Plant)
{
	name 					=	"Korzeñ many";
	value 					=	15;
	visual 					=	"ItPl_Mana_Herb_03.3ds";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"silnych mikstur many.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Stamina
///******************************************************************************************
instance ItPl_Speed_Herb_01 (ItemPR_Plant)
{
	name 					=	"Zêbate ziele";
	value 					=	10;
	visual 					=	"ItPl_Speed_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywane do tworzenia";
	TEXT[2]					=	"mikstur energii.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Perception
///******************************************************************************************

var int Green_Extrem;

func void MOBSI_JOINT()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_MAKEJOINT;
		Ai_ProcessInfos(her);
	};
};

///******************************************************************************************
instance ItPl_SwampHerb (ItemPR_Plant)
{
	name 					=	"Bagienne ziele";
	value 					=	10;
	visual 					=	"ItPl_SwampHerb.3ds";
	
	scemeName				=	"MAPSEALED";
	on_state[0]				=	Use_ItPl_SwampHerb;
	
	description				=	name;
	TEXT[1]					=	"U¿ywane do tworzenia";
	TEXT[2]					=	"mikstur zmiany percepcji.";
	TEXT[3]					=	"Lub u¿yj by zwin¹æ skrêta.";
	COUNT[5]				= 	value;
};
func void Use_ItPl_SwampHerb()
{
	if (Green_Extrem)
	{
		MOBSI_JOINT();
	}
	else
	{
		CreateInvItem (self, ItMi_Joint);
		Print("Zwiniêto skrêta z bagiennego ziela!");
	};
};

instance ItPl_DesertHerb (ItemPR_Plant)
{
	name 					=	"Pustynne ziele";
	value 					=	10;
	visual 					=	"ItPl_DesertHerb.3ds";
	
	scemeName				=	"MAPSEALED";
	on_state[0]				=	Use_ItPl_SwampHerb;
	
	description				=	name;
	TEXT[1]					=	"U¿ywane do tworzenia";
	TEXT[2]					=	"mikstur zmiany percepcji.";
	TEXT[3]					=	"Lub u¿yj by zwin¹æ skrêta.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Perm
///******************************************************************************************
instance ItPl_Vitality_Herb_01 (ItemPR_Plant)
{
	name 					=	"Krwawa miêta";
	value 					=	120;
	visual 					=	"ItPl_Vitality_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"mikstur ¿ywotnoœci.";
	COUNT[5]				= 	value;
};
instance ItPl_Celestial_Herb_01 (ItemPR_Plant)
{
	name 					=	"Wilczy rumianek";
	value 					=	120;
	visual 					=	"ItPl_Celestial_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"mikstur ducha.";
	COUNT[5]				= 	value;
};
instance ItPl_Strength_Herb_01 (ItemPR_Plant)
{
	name 					=	"Smoczy korzeñ";
	value 					=	120;
	visual 					=	"ItPl_Strength_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"mikstur si³y.";
	COUNT[5]				= 	value;
};
instance ItPl_Dex_Herb_01 (ItemPR_Plant)
{
	name 					=	"Goblinia ró¿a";
	value 					=	120;
	visual 					=	"ItPl_Dex_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"mikstur zrêcznoœci.";
	COUNT[5]				= 	value;
};
instance ItPl_Power_Herb_01 (ItemPR_Plant)
{
	name 					=	"Harpia winoroœl";
	value 					=	120;
	visual 					=	"ItPl_Power_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"mikstur mocy.";
	COUNT[5]				= 	value;
};
instance ItPl_Fire_Herb_01 (ItemPR_Plant)
{
	name 					=	"S³oneczny aloes";
	value 					=	120;
	visual 					=	"ItPl_Fire_Herb_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"mikstur odpornoœci na ogieñ.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Mushrooms
///******************************************************************************************
instance ItPl_Mushroom_01 (ItemPR_Plant)
{
	name 					=	"Mu³owy grzyb";
	value 					=	5;
	visual 					=	"ItPl_Mushroom_01.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do przygotowania";
	TEXT[2]					=	"posi³ków o ³agodnym smaku.";
	COUNT[5]				= 	value;
};
instance ItPl_Mushroom_02 (ItemPR_Plant)
{
	name 					=	"Mu³owy grzyb";
	value 					=	10;
	visual					=	"ItPl_Mushroom_02.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do przygotowania";
	TEXT[2]					=	"posi³ków o ³agodnym smaku.";
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItPl_Mushroom_03 (ItemPR_Plant)
{
	name 					=	"Piekielnik";
	value 					=	5;
	visual 					=	"ItPl_Mushroom_cave_small.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do przygotowania";
	TEXT[2]					=	"posi³ków o ostrym smaku.";
	COUNT[5]				= 	value;
};
instance ItPl_Mushroom_04 (ItemPR_Plant)
{
	name 					=	"Piekielnik";
	value 					=	10;
	visual 					=	"ItPl_Mushroom_cave_big.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do przygotowania";
	TEXT[2]					=	"posi³ków o ostrym smaku.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
instance ItPl_Mushroom_05 (ItemPR_Plant)
{
	name 					=	"Truj¹cy grzyb";
	value 					=	5;
	visual 					=	"ItPl_Mushroom_venom_small.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"trucizn lub odtrutek.";
	COUNT[5]				= 	value;
};
instance ItPl_Mushroom_06 (ItemPR_Plant)
{
	name 					=	"Truj¹cy grzyb";
	value 					=	10;
	visual					=	"ItPl_Mushroom_venom_big.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"trucizn lub odtrutek.";
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItPl_Mushroom_07 (ItemPR_Plant)
{
	name 					=	"Ksiê¿ycowa rosa";
	value 					=	5;
	visual 					=	"ItPl_Mushroom_magic_small.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"lekarstw antymagicznych.";
	COUNT[5]				= 	value;
};
instance ItPl_Mushroom_08 (ItemPR_Plant)
{
	name 					=	"Ksiê¿ycowa rosa";
	value 					=	10;
	visual 					=	"ItPl_Mushroom_magic_big.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do tworzenia";
	TEXT[2]					=	"lekarstw antymagicznych.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Common
///******************************************************************************************
instance ItPl_Cactus (ItemPR_Plant)
{
	name 					=	"Kaktus";
	value 					=	4;
	visual 					=	"ItPl_Cactus.3DS";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_MAKEALCOHOL_S1;
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do warzenia tequili.";
	COUNT[5]				= 	value;
};
instance ItPl_Forestberry (ItemPR_Plant)
{
	name 					=	"Dzika jagoda";
	value 					=	4;
	visual 					=	"ItPL_Forestberry.3DS";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_MAKEALCOHOL_S1;
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do warzenia wina.";
	COUNT[5]				=	value;
};
instance ItPl_Planeberry (ItemPR_Plant)
{
	name 					=	"Alkojagoda";
	value 					=	4;
	visual 					=	"ItPL_Planeberry.3DS";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_MAKEALCOHOL_S1;
	
	description				=	name;
	TEXT[1]					=	"U¿ywana do warzenia gorza³y.";
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItPl_Blueplant (ItemPR_Plant)
{
	name 					=	"Serafis";
	value 					=	5;
	visual 					=	"ItPl_Blueplant.3DS";
	
	description				=	name;
	TEXT[1]					=	"U¿ywany do tworzenia";
	TEXT[2]					=	"mikstur ¿ycia i many.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
/// Other
///******************************************************************************************
instance ItPl_Beet (ItemPR_Plant)
{
	name 					=	"Rzepa";
	value 					=	2;
	visual 					=	"ItPl_Beet.3ds";
	description				=	name;
	COUNT[5]				= 	value;
};
instance ItPl_Weed (ItemPR_Plant)
{
	name 					=	"Chwasty";
	value 					=	0;
	visual 					=	"ItPl_Weed.3ds";
	description				= 	name;
	COUNT[5]				= 	value;
};
