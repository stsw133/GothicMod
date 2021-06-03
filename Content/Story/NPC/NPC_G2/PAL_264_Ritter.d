///******************************************************************************************
instance PAL_264_Ritter (Npc_Default)
{
	/// ------ General ------ 
	name								=	NAME_RITTER;
	guild 								=	GIL_PAL;
	id 									=	264;
	voice 								=	9;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_OC_Store);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Ratford, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_264;
};

func void Rtn_Start_264()
{
	TA_Stand_Guarding	(08,00,19,00, "OC_GUARD_STORE_01");
	TA_Stand_Guarding	(19,00,08,00, "OC_GUARD_STORE_01");
};
