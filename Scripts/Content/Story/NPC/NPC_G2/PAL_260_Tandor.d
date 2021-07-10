///******************************************************************************************
instance PAL_260_Tandor (Npc_Default)
{
	/// ------ General ------
	name								=	"Tandor";
	guild 								=	GIL_PAL;
	id 									=	260;
	voice 								=	8;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Fighter", Face_Normal03, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_260;
};

func void Rtn_Start_260()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_STAND_TANDOR_01");
	TA_Stand_Guarding	(23,00,08,00, "OC_STAND_TANDOR_01");
};
func void Rtn_PostenVerlassen_260()
{
	TA_Practice_Sword	(08,00,23,00, "OC_CENTER_03");
	TA_Stand_Eating		(23,00,08,00, "OC_CENTER_03");
};
