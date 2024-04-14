///******************************************************************************************
instance PAL_2006_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	2006;
	voice 								=	10;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, itmi_oldcoin);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_Normal01, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_2006;
};

func void Rtn_Start_2006()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_RITTER_LEICHE_01");
	TA_Stand_Guarding	(23,00,08,00, "OW_RITTER_LEICHE_01");
};
