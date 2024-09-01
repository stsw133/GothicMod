///******************************************************************************************
instance VLK_4111_Grimes (Npc_Default)
{
	/// ------ General ------
	name								=	"Grimes";
	guild								=	GIL_OUT;
	id									=	4111;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Thief", Face_N_ImportantGrey, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4111;
};

func void Rtn_Start_4111()
{
	TA_Pick_Ore	(08,00, 23,00, "OW_MINE2_GRIMES");
	TA_Pick_Ore	(23,00, 08,00, "OW_MINE2_GRIMES");
};
