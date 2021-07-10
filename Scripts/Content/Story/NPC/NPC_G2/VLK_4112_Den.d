///******************************************************************************************
instance VLK_4112_Den (Npc_Default)
{
	/// ------ General ------
	name								=	"Den";
	guild 								=	GIL_MIL;
	id 									=	4112;
	voice 								=	5;
	npctype								=	NPCTYPE_OCAMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Vlk_Dagger);

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 200);
	CreateInvItem (self, ItMi_SilverRing);
	CreateInvItem (self, ItMi_GoldRing);
	CreateInvItem (self, ItMi_SilverCandleHolder);
	CreateInvItem (self, ItMi_GoldNecklace);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal46, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4112;
};

func void Rtn_Start_4112()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_PATH_182");
    TA_Stand_Guarding 	(23,00,08,00, "OW_PATH_182");
};
