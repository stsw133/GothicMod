///******************************************************************************************
instance VLK_4148_Gestath (Npc_Default)
{
	/// ------ General ------
	name								=	"Gestath";
	guild 								=	GIL_OUT;
	id 									=	4148;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_SLD_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Psionic", Face_Thorus, 0, ITAR_Leather_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4148;
};

func void Rtn_Start_4148()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_DJG_ROCKCAMP_01");
    TA_Sit_Campfire		(23,00,08,00, "OW_DJG_ROCKCAMP_01");
};
