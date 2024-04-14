///******************************************************************************************
instance Pal_287_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	287;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal36, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_287;
};

func void Rtn_Start_287()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_CITY_PALCAMP_08");
	TA_Stand_Guarding	(23,00,08,00, "NW_CITY_PALCAMP_08");
};
