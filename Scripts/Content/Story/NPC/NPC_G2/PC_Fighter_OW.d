///******************************************************************************************
instance PC_Fighter_OW (Npc_Default)
{
	/// ------ General ------
	name								=	"Gorn";
	guild								=	GIL_NONE;
	id									=	3;
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
	daily_routine						=	Rtn_Start_3;
};

func void Rtn_Start_3()
{
	TA_Sit_Campfire	(08,00, 23,00, "OC_PRISON_CELL_03_SIT_GROUND");
	TA_Sit_Campfire	(23,00, 08,00, "OC_PRISON_CELL_03_SIT_GROUND");
};
func void Rtn_Free_3()
{
	TA_Smalltalk	(08,00, 23,00, "OC_MAGE_LIBRARY_IN");
	TA_Smalltalk	(23,00, 08,00, "OC_MAGE_LIBRARY_IN");
};
func void Rtn_Tot_3()
{
	TA_Sit_Campfire	(08,00, 23,00, "TOT");
	TA_Sit_Campfire	(23,00, 08,00, "TOT");
};
