///****************************************************************************************** 
instance Pal_213_Schiffswache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Schiffswache;
	guild 								=	GIL_PAL;
	id 									=	213;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Strong-2);

	/// ------ FT ------
	fight_tactic						=	FAI_NAILED;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_PAL_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Fighter", Face_Cavalorn, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_213;
};

func void Rtn_Start_213()
{
	TA_Guard_Passage	(08,00,23,00, "NW_CITY_SHIP_GUARD_01");
	TA_Guard_Passage	(23,00,08,00, "NW_CITY_SHIP_GUARD_01");
};
func void Rtn_ShipFree_213()
{
	TA_Smalltalk	(08,00,23,00, "NW_CITY_PALCAMP_01");
	TA_Smalltalk	(23,00,08,00, "NW_CITY_PALCAMP_01");
};
