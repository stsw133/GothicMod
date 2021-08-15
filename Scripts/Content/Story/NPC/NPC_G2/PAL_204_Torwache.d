///******************************************************************************************
instance Pal_204_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Torwache;
	guild 								=	GIL_PAL;
	id 									=	204;
	voice 								=	9;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	aivar[AIV_NewsOverride]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Whistler, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_204;
};

func void Rtn_Start_204()
{
	TA_Guard_Passage	(08,00,23,00, "NW_CITYHALL_GUARD_01");
	TA_Guard_Passage	(23,00,08,00, "NW_CITYHALL_GUARD_01");
};
