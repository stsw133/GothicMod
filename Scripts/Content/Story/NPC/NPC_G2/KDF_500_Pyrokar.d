///******************************************************************************************
instance KDF_500_Pyrokar (Npc_Default)
{
	/// ------ General ------
	name								=	"Pyrokar";
	guild								=	GIL_KDF;
	id									=	500;
	voice								=	11;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_ImportantOld, Teeth_Normal, ItAr_AMG_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_500;
};

func void Rtn_Start_500()
{
	TA_Sit_Throne	(08,00, 23,00, "NW_MONASTERY_THRONE_01");
	TA_Sit_Throne	(23,00, 08,00, "NW_MONASTERY_THRONE_01");
};
func void Rtn_RitualInnosEyeRepair_500()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_TROLLAREA_RITUAL_02");
	TA_Stand_Guarding	(23,00, 08,00, "NW_TROLLAREA_RITUAL_02");
};
func void Rtn_RitualInnosEye_500()
{
	TA_Circle	(08,00, 23,00, "NW_TROLLAREA_RITUAL_02");
	TA_Circle	(23,00, 08,00, "NW_TROLLAREA_RITUAL_02");
};
