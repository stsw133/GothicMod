///******************************************************************************************
instance PC_Mage_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Milten";
	guild								=	GIL_KDF;
	id									=	12;
	voice								=	3;
	flags	 							=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Milten, Teeth_Normal, ItAr_MAG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_12;
};

func void Rtn_Start_12()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_MONASTERY_MILTEN");
	TA_Stand_Guarding	(23,00, 08,00, "NW_MONASTERY_MILTEN");
};
func void Rtn_WaitForShip_12()
{
	TA_Smalltalk	(08,00, 23,00, "NW_CITY_WAY_TO_SHIP_19");
	TA_Smalltalk	(23,00, 08,00, "NW_CITY_WAY_TO_SHIP_19");
};
func void Rtn_ShipOff_12()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_MONASTERY_ENTRY_01");
	TA_Stand_Guarding	(23,00, 08,00, "NW_MONASTERY_ENTRY_01");
};
func void Rtn_Ship_12()
{
	TA_Smalltalk	(08,00, 23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00, 08,00, "SHIP_CREW_19");
};
