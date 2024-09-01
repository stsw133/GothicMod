///******************************************************************************************
instance DJG_737_ToterDrachenjaeger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_ToterDrachenjaeger;
	guild								=	GIL_DJG;
	id									=	737;
	voice								=	5;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_SLD_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Tough_Pacho, Teeth_Normal, ItAr_DJG_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_737;
};

func void Rtn_Start_737()
{
	TA_Sit_Bench	(08,00, 23,00, "LOCATION_18_IN");
	TA_Sit_Bench	(23,00, 08,00, "LOCATION_18_IN");
};
