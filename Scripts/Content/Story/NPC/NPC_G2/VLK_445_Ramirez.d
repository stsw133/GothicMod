///******************************************************************************************
instance VLK_445_Ramirez (Npc_Default)
{
	/// ------ General ------
	name								=	"Ramirez";
	guild 								=	GIL_OUT;
	id 									=	445;
	voice 								=	14;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Meisterdegen);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_Normal06, 0, ITAR_VLK_L_09);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_445;
};

func void Rtn_Start_445()
{
	TA_Stand_ArmsCrossed	(07,00,23,00, "NW_CITY_KANAL_ROOM_04_01");
    TA_Sit_Throne			(23,00,07,00, "NW_CITY_KANAL_ROOM_05_02");
};
