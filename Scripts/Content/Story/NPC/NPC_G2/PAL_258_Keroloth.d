///******************************************************************************************
instance PAL_258_Keroloth (Npc_Default)
{
	/// ------ General ------
	name								=	"Keroloth";
	guild								=	GIL_PAL;
	id									=	258;
	voice								=	7;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Pal_Sword);
	EquipItem (self, ItRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Normal20, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_258;
};

func void Rtn_Start_258()
{
	TA_Stand_Guarding	(08,00, 19,00, "OC_CENTER_05_B");
	TA_Roast_Scavenger	(19,00, 08,00, "OC_CAMPFIRE_BARBQ");
};
