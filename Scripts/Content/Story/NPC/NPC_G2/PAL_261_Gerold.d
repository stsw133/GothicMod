///******************************************************************************************
instance PAL_261_Gerold (Npc_Default)
{
	/// ------ General ------
	name								=	"Gerold";
	guild								=	GIL_PAL;
	id									=	261;
	voice								=	12;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal_Blade, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_261;
};

func void Rtn_Start_261()
{
	TA_Stand_Guarding	(08,00, 22,00, "OC_PRISON_GUARD_01");
	TA_Stand_Guarding	(22,00, 08,00, "OC_PRISON_GUARD_01");
};
func void Rtn_Food_261()
{
	TA_Stand_Guarding	(08,00, 23,10, "OC_PRISON_GUARD_01");
	TA_Stand_Guarding	(23,10, 08,00, "OC_MAGE_IN");
};
