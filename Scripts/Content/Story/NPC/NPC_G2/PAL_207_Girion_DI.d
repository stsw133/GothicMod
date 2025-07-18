///******************************************************************************************
instance Pal_207_Girion_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Girion";
	guild								=	GIL_PAL;
	id									=	2070;
	voice								=	8;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Lefty, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_2070;
};

func void Rtn_Start_2070()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_DECK_18");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_DECK_18");
};
