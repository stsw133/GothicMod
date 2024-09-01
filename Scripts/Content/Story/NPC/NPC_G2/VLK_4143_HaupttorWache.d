///******************************************************************************************
instance VLK_4143_HaupttorWache (Npc_Default)
{
	/// ------ General ------
	name								=	"Stra¿nik g³ównej bramy";
	guild								=	GIL_VLK;
	id									=	4143;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Vlk_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal18, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4143;
};

func void Rtn_Start_4143()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_GUARD_PALISADE_09");
	TA_Stand_Guarding	(23,00, 08,00, "OC_GUARD_PALISADE_09");
};
