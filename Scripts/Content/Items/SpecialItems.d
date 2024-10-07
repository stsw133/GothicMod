///******************************************************************************************
/// FakeScroll
///******************************************************************************************
instance Fakescroll (C_Item)
{
	name						=	"Kawa³ek papieru";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	hp							=	5;
	hp_max						=	5;
	weight						=	1;
	
	visual						=	"Fakescroll.3ds";
	scemeName					=	"MAPSEALED";
	
	description					=	name;
};

///******************************************************************************************
/// Instruments
///******************************************************************************************
prototype ItemPR_Instrument (C_Item)
{
	name						=	"Instrument";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	material					=	MAT_WOOD;
	inv_animate					=	true;
};

///******************************************************************************************
instance ItMi_IECello (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_Cello.3ds";
	scemeName					=	"CELLO";
	description					=	"Wiolonczela";
};

instance ItMi_IECelloBow (ItemPR_Instrument)
{
	name						=	"Smyczek wiolonczeli";
	visual						=	"Itmi_IE_CelloBow.3ds";
	description					=	name;
};

instance ItMi_IEDrum (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_Drum.3ds";
	scemeName					=	"PAUKE";
	description					=	"Bêben";
};

instance ItMi_IEDrumScheit (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_Drumscheit.3ds";
	scemeName					=	"DRUMSCHEIT";
	description					=	"Tr¹ba";
};

instance ItMi_IEDrumStick (ItemPR_Instrument)
{
	name						=	"Pa³eczka";
	visual						=	"Itmi_IE_DrumStick.3ds";
	description					=	name;
};

instance ItMi_IEDudelBlau (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_DudelBlau.3ds";
	scemeName					=	"DUDEL";
	description					=	"Niebieskie dudy";
};

instance ItMi_IEDudelGelb (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_DudelGelb.3ds";
	scemeName					=	"DUDEL";
	description					=	"¯ó³te dudy";
};

instance ItMi_IEHarfe (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_Harfe.3ds";
	scemeName					=	"HARFE";
	description					=	"Harfa";
};

instance ItMi_IELaute (ItemPR_Instrument)
{
	visual						=	"Itmi_IE_Laute.3ds";
	scemeName					=	"IELAUTE";
	description					=	"Lutnia";
};

instance ItLsTorchFirespit (ItemPR_Instrument)
{
	visual						=	"ITLSTORCHBURNING.zen";
	scemeName					=	"FIRESPIT";
};

///******************************************************************************************
/// WzA items
///******************************************************************************************
instance ItMi_NA_Gramophone (C_Item)
{
	name						=	"Gramofon";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	visual						=	"ItMi_NA_Gramophone.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
};

instance ItMi_NA_Phone (C_Item)
{
	name						=	"Komórka";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	visual						=	"ItMi_NA_Phone.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
};

instance ItMi_NA_Shit (C_Item)
{
	name						=	"Gówno";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	visual						=	"ItMi_NA_Shit.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
};

instance ItMi_NA_Telephone (C_Item)
{
	name						=	"Telefon";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	visual						=	"ItMi_NA_Telephone.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
};

instance ItMi_NA_TV (C_Item)
{
	name						=	"Telewizor";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	visual						=	"ItMi_NA_TV.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
};

instance ItMi_NA_Vodka (C_Item)
{
	name						=	"Wódka";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	visual						=	"ItMi_NA_Vodka.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
};

///******************************************************************************************
instance ItMe_iPenta_Blue (C_Item)
{
	name						=	"Kr¹g magiczny";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MISSION;
	
	visual						=	"ITME_IPENTA.3ds";
	effect						=	"spellfx_ipenta_blue";
	
	description					=	name;
};

///******************************************************************************************
instance GreenScreen (C_Item)
{
	name						=	"GreenScreen";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MISSION;
	
	visual						=	"GreenScreen.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
};
