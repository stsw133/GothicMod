///******************************************************************************************
instance SLD_806_Sylvio (Npc_Default)
{
	/// ------ General ------
	name								=	"Sylvio";
	guild 								=	GIL_SLD;
	id 									=	806;
	voice 								=	9;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Scar, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_806;
};

func void Rtn_Start_806()
{
	TA_Sit_Chair	(08,00,22,00, "NW_BIGFARM_KITCHEN_BULLCO");
    TA_Sit_Chair	(22,00,08,00, "NW_BIGFARM_KITCHEN_BULLCO");
};
func void Rtn_Tot_806()
{
	TA_Sleep	(08,00,23,00, "TOT");
    TA_Sleep	(23,00,08,00, "TOT");
};
