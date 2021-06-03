///******************************************************************************************
instance BDT_1098_Addon_Snaf (Npc_Default)
{
	/// ------ General ------
	name								=	"Snaf";
	guild 								=	GIL_BDT;
	id 									=	1098;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self); 
	CreateInvItem (self, ItFo_Hooch);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Snaf, 0, ITAR_BARKEEPER);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1098;
};

func void Rtn_Start_1098()
{
    TA_Stand_Sweeping	(07,00,10,00, "BL_INN_BAR_02");
	TA_Stand_WP			(10,00,15,00, "BL_INN_BAR_05");	
	TA_Cook_Cauldron	(15,00,21,00, "BL_INN_BAR_05");
	TA_Stand_WP			(21,00,07,00, "BL_INN_BAR_05");
};
