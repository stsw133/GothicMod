///******************************************************************************************
instance BAU_970_Orlan (Npc_Default)
{
	/// ------ General ------
	name								=	"Orlan";
	guild 								=	GIL_NONE;
	id 									=	970;
	voice 								=	5;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NPCIsRanger]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fatbald", Face_Normal05, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_970;
};

func void Rtn_Start_970()
{	
	TA_Stand_WP	(08,00,22,00, "NW_TAVERNE_IN_04");
    TA_Stand_WP	(22,00,08,00, "NW_TAVERNE_IN_04");
};
func void Rtn_Wettkampf_970()
{	
	TA_Stand_WP	(08,00,22,00, "NW_TAVERNE");
    TA_Stand_WP	(22,00,08,00, "NW_TAVERNE");
};
func void Rtn_RangerMeeting_970()
{	
	TA_RangerMeeting	(08,00,22,00, "NW_TAVERNE_IN_RANGERMEETING");
    TA_RangerMeeting	(22,00,08,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Parking_970()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_TAVERNE_IN_RANGERMEETING");
    TA_Stand_Guarding	(22,00,08,00, "NW_TAVERNE_IN_RANGERMEETING");
};
