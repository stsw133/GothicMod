///******************************************************************************************
instance PAL_268_Udar (Npc_Default)
{
	/// ------ General ------
	name								=	"Udar";
	guild 								=	GIL_PAL;
	id 									=	268;
	voice 								=	9;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_NAILED;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Crossbow_H_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal61, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_268;
};

func void Rtn_Start_268()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_CENTER_GUARD_03");
	TA_Stand_Guarding	(23,00,08,00, "OC_CENTER_GUARD_03");
};
