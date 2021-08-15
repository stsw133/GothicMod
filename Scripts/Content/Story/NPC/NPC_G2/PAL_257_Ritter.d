///******************************************************************************************
instance PAL_257_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER;
	guild 								=	GIL_PAL;
	id 									=	257;
	voice 								=	9;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal60, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_257;
};

func void Rtn_Start_257()
{
	TA_Practice_Sword	(08,00,19,00, "OC_TRAIN_03");
	TA_Sit_Campfire		(19,00,08,00, "OC_CAMPFIRE_OUT_03");
};
func void Rtn_Marcos_257()
{
	TA_Stand_Guarding	(08,00,19,00, "OW_STAND_GUARDS");
	TA_Stand_Guarding	(19,00,08,00, "OW_STAND_GUARDS");
};
