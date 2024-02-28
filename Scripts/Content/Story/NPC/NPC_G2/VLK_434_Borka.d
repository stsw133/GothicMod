///******************************************************************************************
instance VLK_434_Borka (Npc_Default)
{
	/// ------ General ------
	name								=	"Borka";
	guild 								=	GIL_VLK;
	id 									=	434;
	voice 								=	11;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Joint, 20);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_Ian, 0, ITAR_Vlk_L_11);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_434;
};

func void Rtn_Start_434()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_CITY_HABOUR_PUFF_ENTRANCE");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_CITY_HABOUR_PUFF_ENTRANCE");
};
func void Rtn_Prison_434()
{
	TA_Sit_Campfire	(08,00,22,00, "NW_CITY_HABOUR_KASERN_BORKA");
    TA_Sit_Campfire	(22,00,08,00, "NW_CITY_HABOUR_KASERN_BORKA");
};
