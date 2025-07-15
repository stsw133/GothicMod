///******************************************************************************************
instance VLK_449_Lares_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Lares";
	guild								=	GIL_NONE;
	id									=	4490;
	voice								=	9;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_PartyMember]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_SLD_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Lares, Teeth_Normal, ItAr_Ranger_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4490;
};
 
func void Rtn_Start_4490()
{
	TA_Smalltalk	(08,00, 23,00, "SHIP_CREW_05");
	TA_Smalltalk	(23,00, 08,00, "SHIP_CREW_05");
};
func void Rtn_SittingShipDI_4490()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_CREW_04");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_CREW_04");
};
