///******************************************************************************************
instance PAL_272_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER;
	guild								=	GIL_PAL;
	id									=	272;
	voice								=	9;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Pal_Sword);
	EquipItem (self, itRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Normal08, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_272;
};

func void Rtn_Start_272()
{
	TA_Guard_Passage	(08,00, 22,00, "OC_GUARD_ENTRANCE");
	TA_Sit_Chair		(22,00, 08,00, "OC_GUARD_ROOM_01_FIRE");
};
