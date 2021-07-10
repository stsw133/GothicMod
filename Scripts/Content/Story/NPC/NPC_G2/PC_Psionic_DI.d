///******************************************************************************************
instance PC_Psionic_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Lester";
	guild 								=	GIL_NONE;
	id 									=	24;
	voice 								=	13;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self,ItMw_Kriegshammer2);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_P, "Hum_Head_Bald", Face_Lester, 0, ITAR_SLN_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_24;
};

func void Rtn_Start_24()
{
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_19");
};
func void Rtn_UNDEADDRAGONDEAD_24()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "DI_DRACONIANAREA_19");
	TA_Stand_ArmsCrossed	(23,00,08,00, "DI_DRACONIANAREA_19");
};
func void Rtn_SittingShipDI_24()
{
	TA_Sit_Bench	(08,00,23,00, "SHIP_CREW_19");
	TA_Sit_Bench	(23,00,08,00, "SHIP_CREW_19");
};
