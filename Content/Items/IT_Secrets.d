//****************************************************************************
//				Erzfisch  (Halvor)
//			---------------------------------------------
//****************************************************************************
INSTANCE ItSe_ErzFisch (C_Item)
{	
	name 				=	"Kulista ryba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;
	
	value 				=	25;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MAPSEALED";
	on_state[0]			=	Use_ErzFisch;

	description			= 	name;
	TEXT[2]				= 	"W tej rybie coœ schowano.";		
	
};

	FUNC VOID Use_ErzFisch()
	{
		B_PlayerFindItem (ItMi_Nugget,1);
	};
//****************************************************************************
//				Goldfisch  (Halvor)
//			---------------------------------------------
//****************************************************************************
INSTANCE ItSe_GoldFisch (C_Item)
{	
	name 				=	"Ciê¿ka ryba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;
	
	value 				=	25;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MAPSEALED";
	on_state[0]			=	Use_GoldFisch;

	description			= 	name;
	TEXT[2]				= 	"W tej rybie coœ schowano.";		
	
};

	FUNC VOID Use_GoldFisch()
	{
		B_PlayerFindItem (ItMI_Gold,50);
	};	
//****************************************************************************
//				Ringfisch  (Halvor) (Protcetion Fire Ring)
//			---------------------------------------------
//****************************************************************************
INSTANCE ItSe_Ringfisch (C_Item)
{	
	name 				=	"Ma³a ryba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;
	
	value 				=	25;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MAPSEALED";
	on_state[0]			=	Use_Ringfisch;

	description			= 	name;
	TEXT[2]				= 	"W tej rybie coœ schowano.";		
	
};

	FUNC VOID Use_Ringfisch()
	{
		B_PlayerFindItem (ItRi_LifeSteal_01,1);
	};	
//****************************************************************************
//				Lockpickfisch  (Halvor)
//			---------------------------------------------
//****************************************************************************
INSTANCE ItSe_LockpickFisch (C_Item)
{	
	name 				=	"Lekka ryba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;
	
	value 				=	25;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MAPSEALED";
	on_state[0]			=	Use_LockpickFisch;

	description			= 	name;
	TEXT[2]				= 	"W tej rybie coœ schowano.";		
	
};

	FUNC VOID Use_LockpickFisch()
	{
		B_PlayerFindItem (ITKE_Lockpick,3);
	};
