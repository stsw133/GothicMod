///******************************************************************************************
instance SLD_808_Jarvis (Npc_Default)
{
	/// ------ General ------
	name								=	"Jarvis";
	guild 								=	GIL_SLD;
	id 									=	808;
	voice 								=	4;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Torlof, 0, ITAR_SLD_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_808;
};

func void Rtn_Start_808()
{
    TA_Sit_Chair	(07,05,00,05, "NW_BIGFARM_KITCHEN_07");
    TA_Sleep		(00,05,07,05, "NW_BIGFARM_HOUSE_08");
};
