///******************************************************************************************
instance SLD_800_Lee (Npc_Default)
{
	/// ------ General ------
	name								=	"Lee";
	guild 								=	GIL_SLD;
	id 									=	800;
	voice 								=	4;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_Lee, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_800;
};

func void Rtn_Start_800()
{
	TA_Stand_Guarding	(08,00,19,00, "NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Chair		(19,00,22,00, "NW_BIGFARM_HOUSE_UP2_05");
    TA_Sleep			(22,00,08,00, "NW_BIGFARM_HOUSE_UP2_04");
};
func void Rtn_WaitForShip_800()
{
	TA_Stand_Guarding	(08,00,19,00, "NW_WAITFOR_SHIP_01");
	TA_Stand_Guarding	(19,00,08,00, "NW_WAITFOR_SHIP_01");
};
func void Rtn_ShipOff_800()
{
	TA_Stand_Guarding	(08,00,19,00, "NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Chair		(19,00,22,00, "NW_BIGFARM_HOUSE_UP2_05");
    TA_Sleep			(22,00,08,00, "NW_BIGFARM_HOUSE_UP2_04");
};
func void Rtn_Ship_800()
{
	TA_Stand_Guarding	(08,00,23,00, "SHIP_CREW_01");
	TA_Sleep			(23,00,08,00, "SHIP_IN_06");
};
