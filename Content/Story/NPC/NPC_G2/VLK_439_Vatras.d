//******************************************************************************************
instance VLK_439_Vatras (Npc_Default)
{
	// ------ General ------
	name								=	"Vatras";
	guild 								=	GIL_KDW;
	id 									=	439;
	voice 								=	5;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_ELE;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Psionic", Face_Saturas, 0, ITAR_MgA);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_439;
};

FUNC VOID Rtn_Start_439()
{
	TA_Preach_Vatras	(05,05,20,10, "NW_CITY_MERCHANT_TEMPLE_FRONT");
    TA_Pray_Innos_FP	(20,10,05,05, "NW_CITY_MERCHANT_TEMPLE_IN");
};
FUNC VOID Rtn_RitualInnosEyeRepair_439()
{
	TA_Stand_Guarding	(08,00,20,00, "NW_TROLLAREA_RITUAL_04");
    TA_Stand_Guarding	(20,00,08,00, "NW_TROLLAREA_RITUAL_04");
};
FUNC VOID Rtn_RitualInnosEye_439()
{
	TA_Circle	(08,00,23,00, "NW_TROLLAREA_RITUAL_04");
    TA_Circle	(23,00,08,00, "NW_TROLLAREA_RITUAL_04");
};
FUNC VOID Rtn_WAITFORSHIP_439()
{
	TA_Sit_Bench	(08,00,23,00, "NW_WAITFOR_SHIP_04");
	TA_Sit_Bench	(23,00,08,00, "NW_WAITFOR_SHIP_04");
};
FUNC VOID Rtn_Ship_439()
{
	TA_Read_Bookstand	(08,00,23,00, "SHIP_IN_22");
	TA_Sleep			(23,00,08,00, "SHIP_IN_04");
};
FUNC VOID Rtn_PRAY_439()
{
	TA_Pray_Innos_FP	(05,05,20,10, "NW_CITY_MERCHANT_TEMPLE_FRONT");
    TA_Pray_Innos_FP	(20,10,05,05, "NW_CITY_MERCHANT_TEMPLE_IN");
};
