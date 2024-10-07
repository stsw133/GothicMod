///******************************************************************************************
instance SLD_806_Sylvio (Npc_Default)
{
	/// ------ General ------
	name								=	"Sylvio";
	guild								=	GIL_SLD;
	id									=	806;
	voice								=	9;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Scar, Teeth_Normal, ItAr_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_806;
};

func void Rtn_Start_806()
{
	TA_Sit_Chair	(08,00, 22,00, "NW_BIGFARM_KITCHEN_BULLCO");
	TA_Sit_Chair	(22,00, 08,00, "NW_BIGFARM_KITCHEN_BULLCO");
};
func void Rtn_Tot_806()
{
	TA_Sleep	(08,00, 23,00, "TOT");
	TA_Sleep	(23,00, 08,00, "TOT");
};
