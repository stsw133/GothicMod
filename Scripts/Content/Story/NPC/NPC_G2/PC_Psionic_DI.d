///******************************************************************************************
instance PC_Psionic_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Lester";
	guild								=	GIL_NONE;
	id									=	24;
	voice								=	13;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self,ItMw_Kriegshammer2);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_Lester, Teeth_Normal, ItAr_SLN_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_24;
};

func void Rtn_Start_24()
{
	TA_Smalltalk	(08,00, 23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00, 08,00, "SHIP_CREW_19");
};
func void Rtn_UNDEADDRAGONDEAD_24()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "DI_DRACONIANAREA_19");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "DI_DRACONIANAREA_19");
};
func void Rtn_SittingShipDI_24()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_CREW_19");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_CREW_19");
};
