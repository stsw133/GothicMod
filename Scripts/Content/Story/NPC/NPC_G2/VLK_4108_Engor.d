///******************************************************************************************
instance VLK_4108_Engor (Npc_Default)
{
	/// ------ General ------
	name								=	"Engor";
	guild								=	GIL_MIL;
	id									=	4108;
	voice								=	13;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mil_Sword);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Jackal, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4108;
};

func void Rtn_Start_4108()
{
	TA_Read_Bookstand	(08,00, 22,00, "OC_COUNT_01");
	TA_Sleep			(22,00, 08,00, "OC_GUARD_ROOM_03_SLEEP");
};
