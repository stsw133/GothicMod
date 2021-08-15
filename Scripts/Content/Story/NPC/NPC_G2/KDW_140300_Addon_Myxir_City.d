///******************************************************************************************
instance KDW_140300_Addon_Myxir_CITY (Npc_Default)
{
	/// ------ General ------
	name								=	"Myxir";
	guild 								=	GIL_KDW;
	id 									=	140300;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_ELE;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Pony", Face_Normal11, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_140300;
};

func void Rtn_Start_140300()
{
	TA_Pray_Innos_FP	(05,05,20,10, "NW_CITY_MERCHANT_TEMPLE_IN");
    TA_Stand_WP			(20,10,05,05, "NW_CITY_MERCHANT_TEMPLE_FRONT");
};
