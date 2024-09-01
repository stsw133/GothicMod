///******************************************************************************************
instance PAL_251_Oric (Npc_Default)
{
	/// ------ General ------
	name								=	"Orik";
	guild								=	GIL_PAL;
	id									=	251;
	voice								=	11;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Tough_Lee_ähnlich, Teeth_Normal, ItAr_PAL_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_251;
};

func void Rtn_Start_251()
{
	TA_Smalltalk	(08,00, 21,00, "OC_EBR_HALL_CENTER");
	TA_Sleep		(21,00, 08,00, "OC_EBR_ROOM_02_SLEEP");
};
