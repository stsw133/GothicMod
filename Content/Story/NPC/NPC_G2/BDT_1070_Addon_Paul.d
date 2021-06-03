///******************************************************************************************
instance BDT_1070_Addon_Paul (Npc_Default)
{
	/// ------ General ------
	name								=	"Paul";
	guild 								=	GIL_BDT;
	id 									=	1070;
	voice 								=	3;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;	

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self,ItMi_Nugget);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Drax, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1070;
};

func void Rtn_PreStart_1070()
{
	TA_Saw	(06,00,13,00, "BL_SMITH_YARD_SAW");
	TA_Saw	(13,00,06,00, "BL_SMITH_YARD_SAW");
};
func void Rtn_Away_1070()
{
	TA_Stand_Drinking	(10,00,20,00, "BL_SMITH_STAIRS");
	TA_Stand_Drinking	(20,00,10,00, "BL_SMITH_STAIRS");
};
func void Rtn_Start_1070()
{
   TA_Saw				(06,00,13,00, "BL_SMITH_YARD_SAW");
   TA_Smith_Anvil		(13,00,17,00, "BL_UP_02");
   TA_Saw				(17,00,19,00, "BL_SMITH_YARD_SAW");
   TA_Smith_Sharp		(19,00,23,00, "BL_SMITH_YARD_02");
   TA_Stand_Drinking	(23,00,06,00, "BL_UP_10");
};
func void Rtn_Mine_1070()
{
   TA_Pick_Ore	(10,00,20,00, "ADW_MINE_PICK_07");
   TA_Pick_Ore	(20,00,10,00, "ADW_MINE_PICK_07");
};
