///******************************************************************************************
instance VLK_416_Matteo (Npc_Default)
{
	/// ------ General ------
	name								=	"Matteo";
	guild								=	GIL_VLK;
	id									=	416;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_VLK_Sword);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Gomez, Teeth_Normal, ItAr_VLK_L_07);
	Mdl_SetModelFatness	(self, 1.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_416;
};

func void Rtn_Start_416()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "NW_CITY_MATTEO");
	TA_Sleep				(22,00, 08,00, "NW_CITY_BED_MATTEO");
};
