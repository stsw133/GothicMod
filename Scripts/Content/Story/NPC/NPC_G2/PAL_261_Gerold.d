///******************************************************************************************
instance PAL_261_Gerold (Npc_Default)
{
	/// ------ General ------
	name								=	"Gerold";
	guild 								=	GIL_PAL;
	id 									=	261;
	voice 								=	12;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal19, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_261;
};

func void Rtn_Start_261()
{
	TA_Stand_Guarding	(08,00,22,00, "OC_PRISON_GUARD_01");
	TA_Stand_Guarding	(22,00,08,00, "OC_PRISON_GUARD_01");
};
func void Rtn_Food_261()
{
	TA_Stand_Guarding	(08,00,23,10, "OC_PRISON_GUARD_01");
	TA_Stand_Guarding	(23,10,08,00, "OC_MAGE_IN");
};
