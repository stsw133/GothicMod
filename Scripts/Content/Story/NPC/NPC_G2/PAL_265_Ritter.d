///******************************************************************************************
instance PAL_265_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER; 
	guild 								=	GIL_PAL;
	id 									=	265;
	voice 								=	4;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_Normal12, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_265;
};

func void Rtn_Start_265()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_TO_GUARD");
	TA_Sit_Campfire		(23,00,08,00, "OC_GUARD_ROOM_01_FIRE");
};
