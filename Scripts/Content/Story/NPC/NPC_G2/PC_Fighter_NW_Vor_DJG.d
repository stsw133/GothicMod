///******************************************************************************************
instance PC_Fighter_NW_vor_DJG (Npc_Default)
{
	/// ------ General ------
	name								=	"Gorn";
	guild								=	GIL_SLD;
	id									=	813;
	voice								=	12;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Gorn, Teeth_Normal, ItAr_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_813;
};

func void Rtn_Start_813()
{
	TA_Sit_Chair	(08,00, 23,00, "NW_BIGFARM_HOUSE_14");
	TA_Sit_Chair	(23,00, 08,00, "NW_BIGFARM_HOUSE_14");
};
func void Rtn_Tot_813()
{
	TA_Sit_Campfire	(08,00, 23,00, "TOT");
	TA_Sit_Campfire	(23,00, 08,00, "TOT");
};
