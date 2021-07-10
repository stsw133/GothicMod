///******************************************************************************************
instance VLK_439_Vatras_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Vatras";
	guild 								=	GIL_KDW;
	id 									=	4390;
	voice 								=	5;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_ELE;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_PartyMember]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Psionic", Face_Saturas, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4390;
};

func void Rtn_Start_4390()
{
	TA_Read_Bookstand	(08,00,23,00, "SHIP_IN_22");
	TA_Sleep			(23,00,08,00, "SHIP_IN_04");
};
