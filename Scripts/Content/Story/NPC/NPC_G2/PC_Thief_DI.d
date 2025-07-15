///******************************************************************************************
instance PC_Thief_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Diego";
	guild								=	GIL_NONE;
	id									=	31;
	voice								=	11;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_SLD_Sword); 
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_L_Diego, Teeth_Normal, ItAr_STT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_31;
};

func void Rtn_Start_31()
{
	TA_Smalltalk	(08,00, 23,00, "SHIP_CREW_05");
	TA_Smalltalk	(23,00, 08,00, "SHIP_CREW_05");
};
func void Rtn_UNDEADDRAGONDEAD_31()
{
	TA_Stand_WP	(08,00, 23,00, "WP_UNDEAD_RIGHT_DOWN_01");
	TA_Stand_WP	(23,00, 08,00, "WP_UNDEAD_RIGHT_DOWN_01");
};
func void Rtn_SittingShipDI_31()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_CREW_04");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_CREW_04");
};
