///******************************************************************************************
instance VLK_417_Constantino (Npc_Default)
{
	/// ------ General ------
	name								=	"Constantino";
	guild								=	GIL_VLK;
	id									=	417;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_OldBald_Jeremiah, Teeth_Normal, ItAr_Alchemist);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_417;
};

func void Rtn_Start_417()
{
	TA_Potion_Alchemy	(08,00, 22,00, "NW_CITY_ALCHEMY_VELAX");
	TA_Sleep			(22,00, 08,00, "NW_CITY_BED_VELAX");
};
