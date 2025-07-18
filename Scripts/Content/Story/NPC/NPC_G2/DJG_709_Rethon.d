///******************************************************************************************
instance DJG_709_Rethon (Npc_Default)
{
	/// ------ General ------
	name								=	"Rethon";
	guild								=	GIL_DJG;
	id									=	709;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_CoolPock, Teeth_Normal, ItAr_DJG_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_709;
};

func void Rtn_Start_709()
{
	TA_Smith_Sharp		(08,00, 08,30, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(08,30, 09,00, "OC_CENTER_04");
	TA_Practice_Sword	(09,00, 09,30, "OC_CENTER_04");
	TA_Smith_Sharp		(09,30, 10,00, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(10,00, 10,30, "OC_CENTER_04");
	TA_Practice_Sword	(10,30, 11,00, "OC_CENTER_04");
	TA_Smith_Sharp		(11,00, 11,30, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(11,30, 12,00, "OC_CENTER_04");
	TA_Practice_Sword	(12,00, 12,30, "OC_CENTER_04");
	TA_Smith_Sharp		(12,30, 13,00, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(13,00, 13,30, "OC_CENTER_04");
	TA_Practice_Sword	(13,30, 14,00, "OC_CENTER_04");
	TA_Smith_Sharp		(14,00, 14,30, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(14,30, 15,00, "OC_CENTER_04");
	TA_Practice_Sword	(15,00, 15,30, "OC_CENTER_04");
	TA_Smith_Sharp		(15,30, 16,00, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(16,00, 16,30, "OC_CENTER_04");
	TA_Practice_Sword	(16,30, 17,00, "OC_CENTER_04");
	TA_Smith_Sharp		(17,00, 17,30, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(17,30, 18,00, "OC_CENTER_04");
	TA_Practice_Sword	(18,00, 18,30, "OC_CENTER_04");
	TA_Smith_Sharp		(18,30, 19,00, "OC_SMITH_SHARP");
	TA_Stand_Guarding	(19,00, 19,30, "OC_CENTER_04");
	TA_Practice_Sword	(19,30, 20,00, "OC_CENTER_04");
	TA_Sit_Campfire		(20,00, 08,00, "OC_CAMPFIRE_OUT_03");
};
