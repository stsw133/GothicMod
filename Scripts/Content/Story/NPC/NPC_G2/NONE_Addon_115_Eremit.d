///******************************************************************************************
instance NONE_ADDON_115_Eremit (Npc_Default)
{
	/// ------ General ------
	name								=	"Eremita";
	guild								=	GIL_NONE;
	id									=	115;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Nude, BodySkin_N, "Hum_Head_Psionic", Face_N_Weak_BaalNetbek, Teeth_Normal, -1);
	Mdl_SetModelFatness	(self, 1);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_115;
};

func void Rtn_Start_115()
{
	TA_Sit_Bench	(07,00, 09,00, "ADW_VALLEY_BENCH");
	TA_Cook_Pan		(09,00, 11,00, "ADW_VALLEY_BENCH");
	TA_Stand_Eating	(11,00, 13,00, "ADW_VALLEY_BENCH");
	TA_Sit_Bench 	(13,00, 15,00, "ADW_VALLEY_BENCH");
	TA_Cook_Pan		(15,00, 17,00, "ADW_VALLEY_BENCH");
	TA_Stand_Eating	(17,00, 19,00, "ADW_VALLEY_BENCH");
	TA_Sit_Bench 	(19,00, 01,00, "ADW_VALLEY_BENCH");
	TA_Sleep		(01,00, 07,00, "ADW_VALLEY_PATH_031_HUT");
};
