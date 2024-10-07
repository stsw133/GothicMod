///******************************************************************************************
instance VLK_4145_Waffenknecht (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_WAFFENKNECHT;
	guild								=	GIL_MIL;
	id									=	4145;
	voice								=	1;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_NAILED;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart09, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4145;
};

func void Rtn_Start_4145()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_GUARD_PALISADE_07");
	TA_Stand_Guarding	(23,00, 08,00, "OC_GUARD_PALISADE_07");
};
