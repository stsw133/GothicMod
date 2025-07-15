///******************************************************************************************
instance VLK_4006_Bote (Npc_Default)
{
	/// ------ General ------
	name								=	"Goniec";
	guild								=	GIL_VLK;
	id									=	4006;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Normal_Stone, Teeth_Normal, ItAr_VLK_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4006;
};

func void Rtn_Start_4006()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_PATH_TO_MONASTERY_AREA_01");
	TA_Stand_Guarding	(22,00, 08,00, "NW_PATH_TO_MONASTERY_AREA_01");
};
func void Rtn_Rest_4006()
{
	TA_Stand_Drinking	(08,00, 22,00, "TAVERNE");
	TA_Stand_Drinking	(22,00, 08,00, "TAVERNE");
};
