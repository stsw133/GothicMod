///******************************************************************************************
instance VLK_447_Cassia (Npc_Default)
{
	/// ------ General ------
	name								=	"Cassia";
	guild 								=	GIL_OUT;
	id 									=	447;
	voice 								=	16;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Meisterdegen);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ITKE_Thiefguildkey_Hotel_MIS);
	CreateInvItem (self, ItKe_ThiefTreasure);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe", FaceBabe_Velaya, Teeth_Pretty, ITAR_Babe_VLK_M_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_447;
};

func void Rtn_Start_447()
{
	TA_Read_Bookstand	(07,00,23,00, "NW_CITY_KANAL_ROOM_05_02");
    TA_Sleep			(23,00,07,00, "NW_CITY_KANAL_ROOM_05_BED_01");
};
