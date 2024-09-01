///******************************************************************************************
instance DJG_712_Hokurn (Npc_Default)
{
	/// ------ General ------
	name								=	"Hokurn";
	guild								=	GIL_DJG;
	id									=	712;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Normal_Sharky, Teeth_Normal, ItAr_DJG_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_712;
};

func void Rtn_PreStart_712()
{
	TA_Smalltalk	(08,00, 23,00, "OW_DJG_STARTCAMP_01");
	TA_Smalltalk	(23,00, 08,00, "OW_DJG_STARTCAMP_01");
};
func void Rtn_Start_712()
{
	TA_Smalltalk	(08,00, 23,00, "SPAWN_OW_BLACKGOBBO_A1");
	TA_Smalltalk	(23,00, 08,00, "SPAWN_OW_BLACKGOBBO_A1");
};
