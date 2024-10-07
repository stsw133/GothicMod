///******************************************************************************************
instance NOV_605_Opolos (Npc_Default)
{
	/// ------ General ------
	name								=	"Opolos";
	guild								=	GIL_NOV;
	id									=	605;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Nov_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Tough_Silas, Teeth_Normal, ItAr_NOV_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_605;
};

func void Rtn_Start_605()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_MONASTERY_SHEEP_05");
	TA_Stand_Guarding	(23,00, 08,00, "NW_MONASTERY_SHEEP_05");
};
func void Rtn_Favour_605()
{
	TA_Read_Bookstand	(08,00, 23,00, "NW_MONASTERY_RUNEMAKER_07");
	TA_Read_Bookstand	(23,00, 08,00, "NW_MONASTERY_RUNEMAKER_07");
};
