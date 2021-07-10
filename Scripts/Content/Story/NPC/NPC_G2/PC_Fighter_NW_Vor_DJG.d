///******************************************************************************************
instance PC_Fighter_NW_vor_DJG (Npc_Default)
{
	/// ------ General ------
	name								=	"Gorn";
	guild 								=	GIL_SLD;
	id 									=	813;
	voice 								=	12;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Fighter", Face_Gorn, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_813;
};

func void Rtn_Start_813()
{
	TA_Sit_Chair	(08,00,23,00, "NW_BIGFARM_HOUSE_14");
	TA_Sit_Chair	(23,00,08,00, "NW_BIGFARM_HOUSE_14");
};
func void Rtn_Tot_813()
{
	TA_Sit_Campfire	(08,00,23,00, "TOT");
	TA_Sit_Campfire	(23,00,08,00, "TOT");
};
