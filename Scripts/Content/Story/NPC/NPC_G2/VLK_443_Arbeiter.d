///******************************************************************************************
instance VLK_443_Arbeiter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Arbeiter;
	guild								=	GIL_VLK;
	id									=	443;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Mace_L_04);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak04, Teeth_Normal, ItAr_BAU_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_443;
};

func void Rtn_Start_443()
{
	TA_Saw			(04,55, 19,05, "NW_CITY_HABOUR_08");
	TA_Smalltalk	(19,05, 04,55, "NW_CITY_HABOUR_02");
};
