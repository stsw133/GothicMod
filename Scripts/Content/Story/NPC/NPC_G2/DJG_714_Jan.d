///******************************************************************************************
instance DJG_714_Jan (Npc_Default)
{
	/// ------ General ------
	name								=	"Jan";
	guild								=	GIL_DJG;
	id									=	714;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Richter, Teeth_Normal, ItAr_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_714;
};

func void Rtn_Start_714()
{
	TA_Sit_Bench	(08,00, 23,00, "OC_JAN");
	TA_Sit_Bench	(23,00, 08,00, "OC_JAN");
};
func void Rtn_Smith_714()
{
	TA_Smith_Fire	(08,00, 08,30, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(08,30, 09,00, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(09,00, 09,30, "OC_SMITH_COOL");
	TA_Smith_Fire	(09,30, 10,00, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(10,00, 10,30, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(10,30, 11,00, "OC_SMITH_COOL");
	TA_Smith_Fire	(11,00, 11,30, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(11,30, 12,00, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(12,00, 12,30, "OC_SMITH_COOL");
	TA_Smith_Fire	(12,30, 13,00, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(13,00, 13,30, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(13,30, 14,00, "OC_SMITH_COOL");
	TA_Smith_Fire	(14,00, 14,30, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(14,30, 15,00, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(15,00, 15,30, "OC_SMITH_COOL");
	TA_Smith_Fire	(15,30, 16,00, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(16,00, 16,30, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(16,30, 17,00, "OC_SMITH_COOL");
	TA_Smith_Fire	(17,00, 17,30, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(17,30, 18,00, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(18,00, 18,30, "OC_SMITH_COOL");
	TA_Smith_Fire	(18,30, 19,00, "OC_SMITH_FIRE");
	TA_Smith_Anvil	(19,00, 19,30, "OC_SMITH_ANVIL");
	TA_Smith_Cool	(19,30, 20,00, "OC_SMITH_COOL");
	TA_Sleep		(20,00, 08,00, "OC_GUARD_ROOM_01_SLEEP_01");
};
