///******************************************************************************************
instance VLK_446_Jesper (Npc_Default)
{
	/// ------ General ------
	name								=	"Jesper";
	guild 								=	GIL_BDT;
	id 									=	446;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Fingers);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Normal18, 0, ITAR_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_446;
};

func void Rtn_PreStart_446()
{
	TA_Stand_ArmsCrossed	(07,00,23,00, "NW_CITY_KANAL_22");
    TA_Stand_ArmsCrossed	(23,00,07,00, "NW_CITY_KANAL_22");
};
func void Rtn_Start_446()
{
	TA_Cook_Stove	(07,00,14,00, "NW_CITY_KANAL_ROOM_05_03_COOK");
    TA_Sit_Throne	(14,00,18,00, "NW_CITY_KANAL_ROOM_05_02");
    TA_Cook_Stove	(18,00,21,00, "NW_CITY_KANAL_ROOM_05_03_COOK");
    TA_Sit_Throne	(21,00,23,00, "NW_CITY_KANAL_ROOM_05_02");
    TA_Sleep		(23,00,07,00, "NW_CITY_KANAL_ROOM_05_BED_02");
};
