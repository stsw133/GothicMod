///******************************************************************************************
instance PIR_1301_Addon_Skip_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Skip";
	guild								=	GIL_PIR;
	id									=	1301;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_ShortSword2);
	EquipItem (self, ItRw0_Bow_M_01);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Skip, Teeth_Normal, ItAr_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1301;
};

func void Rtn_Start_1301()
{
	TA_Sit_Campfire	(05,00, 20,00, "NW_CITY_PIRATESCAMP_04");
	TA_Sit_Campfire	(20,00, 05,00, "NW_CITY_PIRATESCAMP_04");
};
func void Rtn_Tot_1301()
{
	TA_Sit_Campfire	(05,00, 20,00, "TOT");
	TA_Sit_Campfire	(20,00, 05,00, "TOT");
};
