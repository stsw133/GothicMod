///******************************************************************************************
instance PAL_260_Tandor (Npc_Default)
{
	/// ------ General ------
	name								=	"Tandor";
	guild								=	GIL_PAL;
	id									=	260;
	voice								=	8;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fighter", Face_P_Tough_Rodriguez, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_260;
};

func void Rtn_Start_260()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_STAND_TANDOR_01");
	TA_Stand_Guarding	(23,00, 08,00, "OC_STAND_TANDOR_01");
};
func void Rtn_PostenVerlassen_260()
{
	TA_Practice_Sword	(08,00, 23,00, "OC_CENTER_03");
	TA_Stand_Eating		(23,00, 08,00, "OC_CENTER_03");
};
