///******************************************************************************************
instance PAL_217_Marcos (Npc_Default)
{
	/// ------ General ------
	name								=	"Marcos";
	guild 								=	GIL_OUT;
	id 									=	217;
	voice 								=	4;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Strong+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	CreateInvItems (self, ItPo_Health_03, 5);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_Normal03, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_217;
};

func void Rtn_Start_217()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_SAWHUT_MOLERAT_SPAWN01");
	TA_Stand_Guarding	(23,00,08,00, "OW_SAWHUT_MOLERAT_SPAWN01");
};
