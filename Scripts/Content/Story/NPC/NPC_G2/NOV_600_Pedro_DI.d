///******************************************************************************************
instance NOV_600_Pedro_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Pedro";
	guild 								=	GIL_NONE;
	id 									=	6000;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Psionic", Face_Normal05, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_6000;
};

func void Rtn_Start_6000()
{
	TA_Sit_Bench	(08,00,23,00, "DI_ORKAREA_PEDRO");
    TA_Sit_Bench	(23,00,08,00, "DI_ORKAREA_PEDRO");
};
func void Rtn_Ship_6000()
{
	TA_Sit_Bench	(08,00,23,00, "SHIP_DECK_05");
    TA_Sit_Bench	(23,00,08,00, "SHIP_DECK_05");
};
func void Rtn_FollowShip_6000()
{
	TA_Follow_Player	(08,00,23,00, "SHIP");
    TA_Follow_Player	(23,00,08,00, "SHIP");
};
func void Rtn_SleepShip_6000()
{
	TA_Sleep	(08,00,23,00, "SHIP_IN_06");
    TA_Sleep	(23,00,08,00, "SHIP_IN_06");
};
