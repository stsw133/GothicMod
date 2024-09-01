///******************************************************************************************
instance PAL_299_Sergio (Npc_Default)
{
	/// ------ General ------
	name								=	"Sergio";
	guild								=	GIL_PAL;
	id									=	299;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ITKE_INNOS_MIS);
	CreateInvItems (self, ItPo_Health_02, 4);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Normal_Erpresser, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_299;
};

func void Rtn_Start_299()
{
	TA_Pray_Innos	(08,00, 23,00, "NW_MONASTERY_CHAPELL_02");
	TA_Pray_Innos	(23,00, 08,00, "NW_MONASTERY_CHAPELL_02");
};
func void Rtn_WaitForPlayer_299()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_MONASTERY_PLACE_09");
	TA_Stand_Guarding	(23,00, 08,00, "NW_MONASTERY_PLACE_09");
};
func void Rtn_Train_299()
{
	TA_Pray_Innos		(07,00, 23,00, "NW_MONASTERY_CHAPELL_02");
	TA_Pray_Innos		(23,00, 05,00, "NW_MONASTERY_CHAPELL_02");
	TA_Practice_Sword	(05,00, 07,00, "NW_MONASTERY_TRAIN_01");
};
func void Rtn_Wait_299()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_MONASTERY_CHAPELL_03");
	TA_Stand_Guarding	(23,00, 08,00, "NW_MONASTERY_CHAPELL_03");
};
func void Rtn_Guide_299()
{
	TA_Guide_Player	(08,00, 23,00, "NW_TO_PASS_01");
	TA_Guide_Player	(23,00, 08,00, "NW_TO_PASS_01");
};
