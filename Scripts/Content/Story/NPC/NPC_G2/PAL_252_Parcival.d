///******************************************************************************************
instance PAL_252_Parcival (Npc_Default)
{
	/// ------ General ------
	name								=	"Parcival";
	guild 								=	GIL_PAL;
	id 									=	252;
	voice 								=	13;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Pony", Face_Normal01, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_252;
};

func void Rtn_Start_252()
{
	TA_Smalltalk	(08,00,21,00, "OC_EBR_HALL_CENTER");
	TA_Sleep		(21,00,08,00, "OC_EBR_ROOM_01_SLEEP");
};
