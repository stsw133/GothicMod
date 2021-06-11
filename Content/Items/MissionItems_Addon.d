
//****************************************************************************
//				ItWr_Map_NewWorld_Dexter
//			---------------------------------------------
//****************************************************************************

instance ItWr_Map_NewWorld_Dexter (C_Item)
{
	name 		= "Mapa terenów Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 210;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Dexter;

	description	= name;
	TEXT[0]		= "Skip zaznaczy³ miejsce,";
	TEXT[1]		= "gdzie mogê znaleŸæ szefa bandytów,";
	TEXT[2]		= "Dextera.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Dexter ()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Dexter);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Dexter.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
					Doc_SetLevelCoords	(Document, -28000, 50500, 95500, -42500);
					Doc_Show			(Document);
	};


//------------------------------------------------------------------------------------------
// Amulett des suchenden Irrlichts
//------------------------------------------------------------------------------------------
	INSTANCE  ItAm_Addon_WispDetector (C_Item)  
{
	name 			=	"Amulet z rudy";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	100;

	visual 			=	"ItAm_Mana_01.3ds";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER_BLUE"; 

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_WispDetector;
	on_unequip		=	UnEquip_WispDetector;

	description		=  "Amulet szukaj¹cego ognika";

	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	
};
var int Equip_WispDetector_OneTime;

func void Equip_WispDetector()
{
	if (!Equip_WispDetector_OneTime)
	{
		WispSkills[WISPSKILL_NF];
		WispSearching = WispSearch_NF;
		Equip_WispDetector_OneTime = true;
	};
	
	var C_NPC DetWsp; DetWsp = Hlp_GetNpc(Wisp_Detector);
	AI_Teleport (DetWsp, "TOT");
	Wld_SpawnNpcRange (self, Wisp_Detector, 1, 500);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", Wisp_Detector, Wisp_Detector, 0, 0, 0, false);
	Snd_Play("MFX_Transform_Cast");
	//Wld_PlayEffect("spellFX_SummonCreature_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
};
func void UnEquip_WispDetector()
{
	var C_NPC DetWsp; DetWsp = Hlp_GetNpc(Wisp_Detector);
	
	if (!Npc_IsDead(DetWsp))
	{
		Snd_Play ("WSP_Dead_A1");
	};
	
	AI_Teleport (DetWsp, "TOT");
	B_RemoveNpc (DetWsp);
	AI_Teleport (DetWsp, "TOT");
};

//Alligatorfleisch
	
INSTANCE ItFo_Addon_Krokofleisch_Mission (C_Item)
{	
	name 				=	"Miêso bagiennego szczura";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	
	value 				=	10;
	
	visual 				=	"ItFoMuttonRaw.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MEAT";
	
	description			= 	name;
	TEXT[1]				=	"Ma podejrzany zapach!";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	10;

};


//*******************************************
//		Der goldene Kompass
//*******************************************

INSTANCE ItMI_Addon_Kompass_Mis (C_Item)
{
	name 				=	"Z³oty kompas";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	500;

	visual 				=	"ItMi_Compass_01.3DS";
	material 			=	MAT_STONE;

	description			= 	name;

};
