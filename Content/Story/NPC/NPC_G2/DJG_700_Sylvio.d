//******************************************************************************************
instance DJG_700_Sylvio (Npc_Default)
{
	// ------ General ------
	name								=	"Sylvio";
	guild 								=	GIL_DJG;
	id 									=	700;
	voice 								=	9;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_DropDeadAndKill]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Equippte Waffen ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Scar, 0, ITAR_DJG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_700;
};

FUNC VOID Rtn_Start_700()
{
	TA_Sit_Bench	(08,00,23,00, "OW_DJG_ICECAMP_01");
    TA_Sit_Bench	(23,00,08,00, "OW_DJG_ICECAMP_01");
};
FUNC VOID Rtn_IceWait1_700()
{
	TA_Stand_Guarding	(00,00,	23,00, "OW_ICEREGION_ENTRANCE");
	TA_Stand_Guarding	(23,00,	24,00, "OW_ICEREGION_ENTRANCE");
};
FUNC VOID Rtn_IceWait2_700()
{
	TA_Stand_Guarding	(00,00,	23,00, "OW_DJG_ICEREGION_WAIT2_01");
	TA_Stand_Guarding	(23,00,	24,00, "OW_DJG_ICEREGION_WAIT2_01");
};
FUNC VOID Rtn_IceDragon_700()
{
	TA_Stand_Guarding	(00,00,	23,00, "OW_ICEDRAGON_01");
	TA_Stand_Guarding	(23,00,	24,00, "OW_ICEDRAGON_01");
};
