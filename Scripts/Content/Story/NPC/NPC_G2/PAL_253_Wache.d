///******************************************************************************************
instance PAL_253_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild								=	GIL_PAL;
	id									=	253;
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
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Tough_Pacho, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_253;
};

func void Rtn_Start_253()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_GATE_GUARD_01");
	TA_Stand_Guarding	(23,00, 08,00, "OC_GATE_GUARD_01");
};
func void Rtn_Marcos_253()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_STAND_GUARDS");
	TA_Stand_Guarding	(23,00, 08,00, "OW_STAND_GUARDS");
};
