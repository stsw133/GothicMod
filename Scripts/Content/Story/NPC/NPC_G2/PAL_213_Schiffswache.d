///****************************************************************************************** 
instance Pal_213_Schiffswache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Schiffswache;
	guild								=	GIL_PAL;
	id									=	213;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 68);
	
	/// ------ FT ------
	fight_tactic						=	FAI_NAILED;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_PAL_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Cavalorn, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_213;
};

func void Rtn_Start_213()
{
	TA_Guard_Passage	(08,00, 23,00, "NW_CITY_SHIP_GUARD_01");
	TA_Guard_Passage	(23,00, 08,00, "NW_CITY_SHIP_GUARD_01");
};
func void Rtn_ShipFree_213()
{
	TA_Smalltalk	(08,00, 23,00, "NW_CITY_PALCAMP_01");
	TA_Smalltalk	(23,00, 08,00, "NW_CITY_PALCAMP_01");
};
