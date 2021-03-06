///******************************************************************************************
instance SLD_800_Lee_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Lee";
	guild 								=	GIL_SLD;
	id 									=	8000;
	voice 								=	4;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Lee, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_8000;
};

func void Rtn_Start_8000()
{
	TA_Stand_Guarding	(08,00,23,00, "SHIP_CREW_01");
	TA_Sleep			(23,00,08,00, "SHIP_IN_06");
};
func void Rtn_UNDEADDRAGONDEAD_8000()
{
	TA_Stand_Guarding	(08,00,23,00, "DI_ORKAREA_14");
	TA_Stand_Guarding	(23,00,08,00, "DI_ORKAREA_14");
};
