///******************************************************************************************
instance BAU_900_Onar (Npc_Default)
{
	/// ------ General ------
	name								=	"Onar";
	guild 								=	GIL_BAU;
	id 									=	900;
	voice 								=	14;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_N, "Hum_Head_FatBald", Face_Normal50, Teeth_Normal, ITAR_Vlk_H_12);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_900;
};

func void Rtn_Start_900()
{
	TA_Sit_Throne	(09,00,21,00, "NW_BIGFARM_HOUSE_ONAR_SIT");
	TA_Sleep		(21,00,09,00, "NW_BIGFARM_HOUSE_UP1_04");
};
