///******************************************************************************************
instance NOV_609_Novize (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Novize;
	guild								=	GIL_NOV;
	id									=	609;
	voice								=	8;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal06, Teeth_Normal, ItAr_NOV_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_609;
};

func void Rtn_Start_609()
{
	TA_Pray_Innos_FP	(08,00, 23,00, "NW_MONASTERY_CHURCH_03");
	TA_Sleep			(23,00, 08,00, "NW_MONASTERY_NOVICE02_06");
};
func void Rtn_Fegen_609()
{
	TA_Stand_Sweeping	(08,00, 23,00, "NW_MONASTERY_NOVICE02_02");
	TA_Stand_Sweeping	(23,00, 08,00, "NW_MONASTERY_NOVICE02_02");
};
