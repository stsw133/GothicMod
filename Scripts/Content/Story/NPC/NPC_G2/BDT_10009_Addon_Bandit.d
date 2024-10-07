///******************************************************************************************
instance BDT_10009_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10009;
	voice								=	13;
	npctype								=	NPCTYPE_BL_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_Weak_Cutter, Teeth_Normal, ItAr_Prisoner_H);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10009;
};

func void Rtn_Start_10009()
{
	TA_Smalltalk	(08,00, 10,00, "BL_UP_RING_04");
	TA_Smalltalk	(10,00, 08,00, "BL_UP_RING_04");
};
