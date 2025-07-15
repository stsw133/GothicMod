///******************************************************************************************
instance VLK_457_Brian (Npc_Default)
{
	/// ------ General ------
	name								=	"Brian";
	guild								=	GIL_VLK;
	id									=	457;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Axe);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Normal_Kirgo, Teeth_Normal, ItAr_Smith);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_457;
};

func void Rtn_Start_457()
{
	TA_Smith_Sharp	(07,05, 20,35, "NW_CITY_SMITH_SHARP");
	TA_Smalltalk	(20,35, 00,25, "NW_CITY_MERCHANT_PATH_14");
	TA_Sleep		(00,25, 07,05, "NW_CITY_BED_BRIAN");
};
func void Rtn_Lighthouse_457()
{
	TA_Stand_Guarding	(08,00, 20,00, "NW_LIGHTHOUSE_IN_01");
	TA_Sit_Throne		(20,00, 08,00, "NW_LIGHTHOUSE_IN_03");
};
