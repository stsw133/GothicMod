///******************************************************************************************
instance PAL_257_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER;
	guild								=	GIL_PAL;
	id									=	257;
	voice								=	9;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Pal_Sword);
	EquipItem (self, ItRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Swiney, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_257;
};

func void Rtn_Start_257()
{
	TA_Practice_Sword	(08,00, 19,00, "OC_TRAIN_03");
	TA_Sit_Campfire		(19,00, 08,00, "OC_CAMPFIRE_OUT_03");
};
func void Rtn_Marcos_257()
{
	TA_Stand_Guarding	(08,00, 19,00, "OW_STAND_GUARDS");
	TA_Stand_Guarding	(19,00, 08,00, "OW_STAND_GUARDS");
};
