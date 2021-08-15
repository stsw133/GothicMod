///******************************************************************************************
instance Pal_202_Albrecht (Npc_Default)
{
	/// ------ General ------
	name								=	"Albrecht";
	guild 								=	GIL_PAL;
	id 									=	202;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fighter", Face_Normal03, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_202;
};

func void Rtn_Start_202()
{
	TA_Read_Bookstand	(08,00,23,00, "NW_CITY_ALBRECHT");
	TA_Read_Bookstand	(23,00,08,00, "NW_CITY_ALBRECHT");
};
