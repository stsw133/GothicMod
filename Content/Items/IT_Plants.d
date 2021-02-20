///******************************************************************************************	
prototype ItemPR_Plant (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
instance ItPl_Health_Herb_01 (ItemPR_Plant)
{
	name 			=	"Roœlina lecznicza";
	value 			=	10;
	visual 			=	"ItPl_Health_Herb_04.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywana do tworzenia";
	TEXT[2]			=	"s³abych mikstur leczniczych.";
	COUNT[5]		= 	value;
};
instance ItPl_Health_Herb_02 (ItemPR_Plant)
{
	name 			=	"Ziele lecznicze";
	value 			=	20;
	visual 			=	"ItPl_Health_Herb_05.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywane do tworzenia";
	TEXT[2]			=	"œrednich mikstur leczniczych.";
	COUNT[5]		= 	value;
};
instance ItPl_Health_Herb_03 (ItemPR_Plant)
{
	name 			=	"Korzeñ leczniczy";
	value 			=	30;
	visual 			=	"ItPl_Health_Herb_06.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany do tworzenia";
	TEXT[2]			=	"silnych mikstur leczniczych.";
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItPl_Mana_Herb_01 (ItemPR_Plant)
{
	name 			=	"Roœlina many";
	value 			=	10;
	visual 			=	"ItPl_Mana_Herb_04.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywana do tworzenia";
	TEXT[2]			=	"s³abych mikstur many.";
	COUNT[5]		= 	value;
};
instance ItPl_Mana_Herb_02 (ItemPR_Plant)
{
	name 			=	"Ziele many";
	value 			=	20;
	visual 			=	"ItPl_Mana_Herb_05.3ds";
	
	description		=	name;
	TEXT[1]			=	"U¿ywane do tworzenia";
	TEXT[2]			=	"œrednich mikstur many.";
	COUNT[5]		= 	value;
};
instance ItPl_Mana_Herb_03 (ItemPR_Plant)
{
	name 			=	"Korzeñ many";
	value 			=	30;
	visual 			=	"ItPl_Mana_Herb_06.3ds";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany do tworzenia";
	TEXT[2]			=	"silnych mikstur many.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
instance ItPl_Speed_Herb_01 (ItemPR_Plant)
{
	name 			=	"Zêbate ziele";
	value 			=	15;
	visual 			=	"ItPl_Speed_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywane do tworzenia";
	TEXT[2]			=	"mikstur energii.";
	COUNT[5]		= 	value;
};	
instance ItPl_SwampHerb (ItemPR_Plant)
{
	name 			=	"Bagienne ziele";

	value 			=	15;
	visual 			=	"ItPl_SwampHerb.3ds";
	scemeName		=	"MAPSEALED";
	on_state[0]		=	Use_ItPl_SwampHerb;

	description		=	name;
	TEXT[1]			=	"U¿ywane do tworzenia";
	TEXT[2]			=	"mikstur zmiany percepcji.";
	COUNT[5]		= 	value;
};
func void Use_ItPl_SwampHerb()
{
	CreateInvItem (self, ItMi_Joint);
	Print("Zwiniêto skrêta z bagiennego ziela!");
};

instance ItPl_GraveMoss (ItemPR_Plant)
{
	name 			=	"Cmentarny mech";
	value 			=	30;
	visual 			=	"ItPl_GraveMoss.3ds";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany jako sk³adnik";
	TEXT[2]			=	"os³abiaj¹cy moc mikstury.";
	COUNT[5]		= 	value;
};
instance ItPl_Temp_Herb (ItemPR_Plant)
{
	name 			=	"Rdest polny";
	value 			=	30;
	visual 			=	"ItPl_LupinHerb.3ds";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany jako sk³adnik";
	TEXT[2]			=	"wzmacniaj¹cy moc mikstury.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
instance ItPl_Dex_Herb_01 (ItemPR_Plant)
{
	name 			=	"Goblinie jagody";
	value 			=	120;
	visual 			=	"ItPl_Dex_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywane do tworzenia";
	TEXT[2]			=	"mikstur zrêcznoœci.";
	COUNT[5]		= 	value;
};
instance ItPl_Strength_Herb_01 (ItemPR_Plant)
{
	name 			=	"Smoczy korzeñ";
	value 			=	120;
	visual 			=	"ItPl_Strength_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany do tworzenia";
	TEXT[2]			=	"mikstur si³y.";
	COUNT[5]		= 	value;
};
instance ItPl_SunHerb (ItemPR_Plant)
{
	name 			=	"S³oneczny aloes";
	value 			=	120;
	visual 			=	"ItPl_SunHerb.3DS";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany do tworzenia";
	TEXT[2]			=	"mikstur odpornoœci na ogieñ.";
	COUNT[5]		= 	value;
};
instance ItPl_Perm_Herb (ItemPR_Plant)
{
	name 			=	"Szczaw królewski";
	value 			=	180;
	visual 			=	"ItPl_KingHerb.3ds";
	
	description		=	name;
	TEXT[1]			=	"U¿ywany jako sk³adnik";
	TEXT[2]			=	"utrwalaj¹cy efekt mikstury.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
instance ItPl_Mushroom_01 (ItemPR_Plant)
{
	name 			=	"Mu³owy grzyb";
	value 			=	10;
	visual 			=	"ItPl_Mushroom_01.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItPl_Mushroom_02 (ItemPR_Plant)
{
	name 			=	"Truj¹cy grzyb";
	value 			=	10;
	visual 			=	"ItPl_Mushroom_venom_small.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItPl_Mushroom_03 (ItemPR_Plant)
{
	name 			=	"Jaskiniowy grzyb";
	value 			=	10;
	visual			=	"ItPl_Mushroom_cave_small.3DS";
	description		=	name;
	COUNT[5]		=	value;
};
instance ItPl_Mushroom_04 (ItemPR_Plant)
{
	name 			=	"Ksiê¿ycowa rosa";
	value 			=	10;
	visual 			=	"ItPl_Mushroom_magic_small.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
instance ItPl_Forestberry (ItemPR_Plant)
{
	name 			=	"Dzika jagoda";
	value 			=	5;
	visual 			=	"ItPl_Forestberry.3DS";

	scemeName		=	"FASTUSE";
	on_state[0]		=	MOBSI_MAKEALCOHOL_S1;

	description		=	name;
	COUNT[5]		=	value;
};
instance ItPl_Planeberry (ItemPR_Plant)
{
	name 			=	"Alkojagoda";
	value 			=	5;
	visual 			=	"ItPl_Planeberry.3DS";

	scemeName		=	"FASTUSE";
	on_state[0]		=	MOBSI_MAKEALCOHOL_S1;

	description		=	name;
	COUNT[5]		=	value;
};
instance ItPl_Blueplant (ItemPR_Plant)
{
	name 			=	"Serafis";
	value 			=	5;
	visual 			=	"ItPl_Blueplant.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
