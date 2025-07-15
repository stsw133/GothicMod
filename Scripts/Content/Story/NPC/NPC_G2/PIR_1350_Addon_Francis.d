///******************************************************************************************
instance PIR_1350_Addon_Francis (Npc_Default)
{
	/// ------ General ------
	name								=	"Francis";
	guild								=	GIL_PIR;
	id									=	1350;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Schwert1);
	
	/// ------ Inventory ------
	CreateInvItem (self, ItKe_Greg_ADDON_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Cipher, Teeth_Normal, ItAr_PIR_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1350;
};

func void Rtn_Start_1350()
{
	TA_Sit_Bench	(05,00, 20,00, "ADW_PIRATECAMP_HUT4_01");
	TA_Sit_Bench	(20,00, 05,00, "ADW_PIRATECAMP_HUT4_01");
};
func void Rtn_GregIsBack_1350()
{
	TA_Saw	(05,00, 20,00, "ADW_PIRATECAMP_BEACH_19");
	TA_Saw	(20,00, 05,00, "ADW_PIRATECAMP_BEACH_19");
};
