///******************************************************************************************
instance BDT_10400_Addon_DeadBandit (Npc_Default)
{
	/// ------ General ------
	name								=	"Bandyta";
	guild								=	GIL_BDT;
	id									=	10400;
	voice								=	4;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 50);
	CreateInvItems (self, ItWr_StonePlate, 2);	/// changed!!!
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Ian, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10400;
};

func void Rtn_Start_10400()
{
	TA_Stand_WP	(08,00, 16,00, "ADW_ADANOSTEMPEL_RHADEMES_DEADBDT_02");
	TA_Stand_WP	(16,00, 08,00, "ADW_ADANOSTEMPEL_RHADEMES_DEADBDT_02");
};
