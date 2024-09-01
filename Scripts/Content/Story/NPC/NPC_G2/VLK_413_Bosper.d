///******************************************************************************************
instance VLK_413_Bosper (Npc_Default)
{
	/// ------ General ------
	name								=	"Bosper";
	guild								=	GIL_VLK;
	id									=	413;
	voice								=	11;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_VLK_Dagger);
	EquipItem (self, ItRw_SLD_Bow);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_L_Tough_Santino, Teeth_Normal, ItAr_Hunter);
	Mdl_SetModelFatness	(self, 0.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_413;
};

func void Rtn_Start_413()
{
	TA_Stand_Guarding	(05,00, 00,00, "NW_CITY_MERCHANT_SHOP01_IN_02");
	TA_Sleep			(00,00, 05,00, "NW_CITY_BED_GRITTA");
};
