///******************************************************************************************
instance STRF_1115_Geppert (Npc_Default)
{
	/// ------ General ------
	name								=	"Geppert";
	guild								=	GIL_STRF;
	id									=	1115;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Herek, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1115;
};

func void Rtn_Start_1115()
{
	TA_Roast_Scavenger	(08,00, 23,00, "OW_DJG_VORPOSTEN_01");
	TA_Roast_Scavenger	(23,00, 08,00, "OW_DJG_VORPOSTEN_01");
};
func void Rtn_Tot_1115()
{
	TA_Sleep	(08,00, 23,00, "TOT");
	TA_Sleep	(23,00, 08,00, "TOT");
};
