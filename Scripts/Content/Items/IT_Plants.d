///******************************************************************************************	
prototype ItemPR_Plant (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
///	Main
///******************************************************************************************
instance ItPl_GraveMoss (ItemPR_Plant)
{
	name 			=	"Cmentarny mech";
	value 			=	30;
	visual 			=	"ItPl_GraveMoss.3ds";
	
	description		=	name;
	TEXT[1]			=	"U�ywany jako sk�adnik";
	TEXT[2]			=	"os�abiaj�cy moc mikstury.";
	COUNT[5]		= 	value;
};
instance ItPl_Temp_Herb (ItemPR_Plant)
{
	name 			=	"Rdest polny";
	value 			=	30;
	visual 			=	"ItPl_LupinHerb.3ds";
	
	description		=	name;
	TEXT[1]			=	"U�ywany jako sk�adnik";
	TEXT[2]			=	"wzmacniaj�cy moc mikstury.";
	COUNT[5]		= 	value;
};
instance ItPl_Perm_Herb (ItemPR_Plant)
{
	name 			=	"Szczaw kr�lewski";
	value 			=	300;
	visual 			=	"ItPl_KingHerb.3ds";
	
	description		=	name;
	TEXT[1]			=	"U�ywany jako sk�adnik";
	TEXT[2]			=	"utrwalaj�cy efekt mikstury.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Health
///******************************************************************************************
instance ItPl_Health_Herb_01 (ItemPR_Plant)
{
	name 			=	"Ro�lina lecznicza";
	value 			=	10;
	visual 			=	"ItPl_Health_Herb_04.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywana do tworzenia";
	TEXT[2]			=	"s�abych mikstur leczniczych.";
	COUNT[5]		= 	value;
};
instance ItPl_Health_Herb_02 (ItemPR_Plant)
{
	name 			=	"Ziele lecznicze";
	value 			=	20;
	visual 			=	"ItPl_Health_Herb_05.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywane do tworzenia";
	TEXT[2]			=	"�rednich mikstur leczniczych.";
	COUNT[5]		= 	value;
};
instance ItPl_Health_Herb_03 (ItemPR_Plant)
{
	name 			=	"Korze� leczniczy";
	value 			=	30;
	visual 			=	"ItPl_Health_Herb_06.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywany do tworzenia";
	TEXT[2]			=	"silnych mikstur leczniczych.";
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Mana
///******************************************************************************************
instance ItPl_Mana_Herb_01 (ItemPR_Plant)
{
	name 			=	"Ro�lina many";
	value 			=	10;
	visual 			=	"ItPl_Mana_Herb_04.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywana do tworzenia";
	TEXT[2]			=	"s�abych mikstur many.";
	COUNT[5]		= 	value;
};
instance ItPl_Mana_Herb_02 (ItemPR_Plant)
{
	name 			=	"Ziele many";
	value 			=	20;
	visual 			=	"ItPl_Mana_Herb_05.3ds";
	
	description		=	name;
	TEXT[1]			=	"U�ywane do tworzenia";
	TEXT[2]			=	"�rednich mikstur many.";
	COUNT[5]		= 	value;
};
instance ItPl_Mana_Herb_03 (ItemPR_Plant)
{
	name 			=	"Korze� many";
	value 			=	30;
	visual 			=	"ItPl_Mana_Herb_06.3ds";
	
	description		=	name;
	TEXT[1]			=	"U�ywany do tworzenia";
	TEXT[2]			=	"silnych mikstur many.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Special
///******************************************************************************************
instance ItPl_Speed_Herb_01 (ItemPR_Plant)
{
	name 			=	"Z�bate ziele";
	value 			=	15;
	visual 			=	"ItPl_Speed_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywane do tworzenia";
	TEXT[2]			=	"mikstur energii.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
var int Green_Extrem;

func void MOBSI_JOINT()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_MAKEJOINT;
		Ai_ProcessInfos(her);
	};
};
instance ItPl_SwampHerb (ItemPR_Plant)
{
	name 			=	"Bagienne ziele";
	value 			=	15;
	visual 			=	"ItPl_SwampHerb.3ds";
	
	scemeName		=	"MAPSEALED";
	on_state[0]		=	Use_ItPl_SwampHerb;
	
	description		=	name;
	TEXT[1]			=	"U�ywane do tworzenia";
	TEXT[2]			=	"mikstur zmiany percepcji.";
	COUNT[5]		= 	value;
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
		Print("Zwini�to skr�ta z bagiennego ziela!");
	};
};
///******************************************************************************************
///	Perm
///******************************************************************************************
instance ItPl_Health_Herb_04 (ItemPR_Plant)
{
	name 			=	"Krwawy rumianek";
	value 			=	120;
	visual 			=	"ItPl_Strength_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywany do tworzenia";
	TEXT[2]			=	"mikstur �ywotno�ci.";
	COUNT[5]		= 	value;
};
instance ItPl_Mana_Herb_04 (ItemPR_Plant)
{
	name 			=	"Wilcza mi�ta";
	value 			=	120;
	visual 			=	"ItPl_Strength_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywany do tworzenia";
	TEXT[2]			=	"mikstur ducha.";
	COUNT[5]		= 	value;
};
instance ItPl_Strength_Herb_01 (ItemPR_Plant)
{
	name 			=	"Smoczy korze�";
	value 			=	120;
	visual 			=	"ItPl_Strength_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywany do tworzenia";
	TEXT[2]			=	"mikstur si�y.";
	COUNT[5]		= 	value;
};
instance ItPl_Dex_Herb_01 (ItemPR_Plant)
{
	name 			=	"Goblinie jagody";
	value 			=	120;
	visual 			=	"ItPl_Dex_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywane do tworzenia";
	TEXT[2]			=	"mikstur zr�czno�ci.";
	COUNT[5]		= 	value;
};
instance ItPl_Power_Herb_01 (ItemPR_Plant)
{
	name 			=	"Wampirza r�a";
	value 			=	120;
	visual 			=	"ItPl_Dex_Herb_01.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywane do tworzenia";
	TEXT[2]			=	"mikstur mocy.";
	COUNT[5]		= 	value;
};
instance ItPl_SunHerb (ItemPR_Plant)
{
	name 			=	"S�oneczny aloes";
	value 			=	120;
	visual 			=	"ItPl_SunHerb.3DS";
	
	description		=	name;
	TEXT[1]			=	"U�ywany do tworzenia";
	TEXT[2]			=	"mikstur odporno�ci na ogie�.";
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Mushrooms
///******************************************************************************************
instance ItPl_Mushroom_01 (ItemPR_Plant)
{
	name 			=	"Mu�owy grzyb";
	value 			=	10;
	visual 			=	"ItPl_Mushroom_01.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItPl_Mushroom_02 (ItemPR_Plant)
{
	name 			=	"Piekielnik";
	value 			=	10;
	visual			=	"ItPl_Mushroom_cave_small.3DS";
	description		=	name;
	COUNT[5]		=	value;
};
instance ItPl_Mushroom_03 (ItemPR_Plant)
{
	name 			=	"Truj�cy grzyb";
	value 			=	10;
	visual 			=	"ItPl_Mushroom_venom_small.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItPl_Mushroom_04 (ItemPR_Plant)
{
	name 			=	"Ksi�ycowa rosa";
	value 			=	10;
	visual 			=	"ItPl_Mushroom_magic_small.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Berries
///******************************************************************************************
instance ItPl_Forestberry (ItemPR_Plant)
{
	name 			=	"Dzika jagoda";
	value 			=	4;
	visual 			=	"ItPl_Forestberry.3DS";
	
	scemeName		=	"FASTUSE";
	on_state[0]		=	MOBSI_MAKEALCOHOL_S1;
	
	description		=	name;
	COUNT[5]		=	value;
};
instance ItPl_Planeberry (ItemPR_Plant)
{
	name 			=	"Alkojagoda";
	value 			=	4;
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
instance ItPl_Cactus (ItemPR_Plant)
{
	name 			=	"Kaktus";
	value 			=	5;
	visual 			=	"ItPl_Speed_Herb_01.3DS";
	description		=	name;
	COUNT[5]		= 	value;
};
///******************************************************************************************
///	Other
///******************************************************************************************
instance ItPl_Beet (ItemPR_Plant)
{
	name 			=	"Rzepa";
	value 			=	2;
	visual 			=	"ItPl_Beet.3ds";
	description		=	name;
	COUNT[5]		= 	value;
};
instance ItPl_Weed (ItemPR_Plant)
{
	name 			=	"Chwasty";
	value 			=	0;
	visual 			=	"ItPl_Weed.3ds";
	description		= 	name;
	COUNT[5]		= 	value;
};
