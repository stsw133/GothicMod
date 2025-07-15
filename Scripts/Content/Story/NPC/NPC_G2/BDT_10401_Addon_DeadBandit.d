///******************************************************************************************
instance BDT_10401_Addon_DeadBandit (Npc_Default)
{
	/// ------ General ------
	name								=	"Bandyta";
	guild								=	GIL_BDT;
	id									=	10401;
	voice								=	4;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Sword);
	
	/// ------ Inventory ------
	CreateInvItem (self, ItMi_GoldChalice);
	CreateInvItem (self, ItMi_SilverRing);
	CreateInvItems (self, ItPo_Health_02, 2);
	CreateInvItems (self, ItPo_Mana_01, 5);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart01, Teeth_Normal, ItAr_RVN_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10401;
};

func void Rtn_Start_10401()
{
	TA_Stand_WP	(08,00, 16,00, "ADW_ADANOSTEMPEL_RHADEMES_DEADBDT_01");
	TA_Stand_WP	(16,00, 08,00, "ADW_ADANOSTEMPEL_RHADEMES_DEADBDT_01");
};
