///******************************************************************************************
instance NOV_615_Novize (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Novize;
	guild								=	GIL_NOV;
	id									=	615;
	voice								=	3;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Nov_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart_Riordian, Teeth_Normal, ItAr_NOV_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_615;
};

func void Rtn_Start_615()
{
	TA_Stand_Sweeping	(08,00, 15,00, "NW_MONASTERY_CELLAR_08");
	TA_Pray_Innos_FP	(15,00, 16,00, "NW_MONASTERY_CHURCH_03");
	TA_Stand_Sweeping	(16,00, 22,00, "NW_MONASTERY_CELLAR_08");
	TA_Sleep			(22,00, 08,00, "NW_MONASTERY_NOVICE04_04");
};
func void Rtn_Fegen_615()
{
	TA_Stand_Sweeping	(08,00, 22,00, "NW_MONASTERY_NOVICE03_02");
	TA_Stand_Sweeping	(22,00, 08,00, "NW_MONASTERY_NOVICE03_02");
};
