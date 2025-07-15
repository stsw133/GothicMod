///******************************************************************************************
instance PAL_267_Sengrath (Npc_Default)
{
	/// ------ General ------
	name								=	"Sengrath";
	guild								=	GIL_PAL;
	id									=	267;
	voice								=	3;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_NAILED;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Pal_Sword);
	EquipItem (self, itRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Normal03, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_267;
};

func void Rtn_Start_267()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_CENTER_GUARD_01");
	TA_Stand_Guarding	(23,00, 08,00, "OC_CENTER_GUARD_01");
};
func void Rtn_ORCBARRIER_267()
{
	TA_Sleep	(08,00, 23,00, "OW_ORCBARRIER_12");
	TA_Sleep	(23,00, 08,00, "OW_ORCBARRIER_12");
};
