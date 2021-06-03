
const int HP_Hering = 20;
//****************************************************************************
//				Alternativer Fish - danke Levelbereich !
//			---------------------------------------------
//****************************************************************************
INSTANCE ItFo_SmellyFish (C_Item)
{	
	name 				=	"åledü";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;
	
	value 				=	0;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_SmellyFish;

	description			= 	"åledü";
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= 10;
	TEXT[5]				= 	NAME_Value;			COUNT[5]	= 10;
};

	FUNC VOID Use_SmellyFish()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	10);
	};
	
//****************************************************************************
//				Komischer Fisch von Halvor als Schweigegeld
//			---------------------------------------------
//****************************************************************************
/*
INSTANCE ItFo_HalvorFish (C_Item)
{	
	name 				=	"Seltsamer Fisch";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;
	
	value 				=	0;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MAPSEALED";
	on_state[0]			=	Use_HalvorFish;

	description			= 	"Seltsam aussehender Fisch";
	TEXT[2]				= 	"Irgendwas ist in diesem Fisch versteckt";		
	
};

	FUNC VOID Use_HalvorFish()
	{
		CreateInvItems (hero,ItMi_Nugget ,1);
		PrintScreen		(PRINT_FoundOreNugget, -1, YPOS_LEVELUP, FONT_ScreenSmall, 2);
	};
*/

/******************************************************************************************/
INSTANCE ItPo_Perm_LittleMana(C_Item)
{
	name 			=	"Mikstura";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	150;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_LittleMana;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description		= 	"Esencja ducha";
	TEXT[1]			= 	NAME_Bonus_ManaMax;			
	COUNT[1]		= 	3;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value;
};

	FUNC VOID UseItPo_LittleMana()
	{
		B_RaiseAttribute	(self, ATR_MANA_MAX,	3);
		Npc_ChangeAttribute	(self, ATR_MANA,	3);
	};
