///******************************************************************************************
instance PIR_1320_Addon_Greg (Npc_Default)
{
	/// ------ General ------
	name								=	"Greg";
	guild 								=	GIL_PIR;
	id 									=	1320;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;
	self.aivar[AIV_ToughGuy]			=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Piratensaebel);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_Greg, 0, ITAR_PIR_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1320;
};

func void Rtn_Start_1320()
{
	TA_Stand_WP	(05,00,20,00, "ADW_PIRATECAMP_GREG");
	TA_Stand_WP	(20,00,05,00, "ADW_PIRATECAMP_GREG");
};
func void Rtn_HOME_1320()
{
	TA_Sit_Bench	(22,00,12,00, "ADW_PIRATECAMP_HUT4_01");
	TA_Sit_Bench	(12,00,22,00, "ADW_PIRATECAMP_HUT4_01");
};
