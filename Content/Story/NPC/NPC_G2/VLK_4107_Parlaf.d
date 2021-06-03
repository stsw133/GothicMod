///******************************************************************************************
instance VLK_4107_Parlaf (Npc_Default)
{
	/// ------ General ------
	name								=	"Parlaf";
	guild 								=	GIL_MIL;
	id 									=	4107;
	voice 								=	3;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal45, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4107;
};

func void Rtn_Start_4107()
{
	TA_Smith_Sharp	(08,00,20,00, "OC_SMITH_SHARP");
    TA_Sleep		(20,00,08,00, "OC_GUARD_ROOM_01_SLEEP_02");
};
func void Rtn_Tot_4107()
{
	TA_Sleep	(08,00,20,00, "TOT");
    TA_Sleep	(20,00,08,00, "TOT");
};
