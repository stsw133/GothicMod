///******************************************************************************************
prototype ItemPR_Teleport (C_Item)
{
	name						=	"Kamieñ teleportacji";
	mainflag					=	ITEM_KAT_RUNE;
	flags						=	ITEM_MISSION;
	
	value						=	100;
	visual						=	"ItMi_StoneOfTeleport.3ds";
	material					=	MAT_STONE;
	
	effect						=	"spellfx_weakglimmer_blue";
	spell						=	SPL_Teleport;
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

prototype ItemPR_Transform (C_Item)
{
	name						=	"Kamieñ przemiany";
	mainflag					=	ITEM_KAT_RUNE;
	flags						=	ITEM_MISSION;
	
	value						=	100;
	visual						=	"ItMi_StoneOfTransform.3ds";
	material					=	MAT_STONE;
	
	effect						=	"spellfx_weakglimmer_green";
	spell						=	SPL_Transform;
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

prototype ItemPR_Summon (C_Item)
{
	name						=	"Kamieñ przyzwania";
	mainflag					=	ITEM_KAT_RUNE;
	flags						=	ITEM_MISSION;
	
	value						=	100;
	visual						=	"ItMi_StoneOfSummon.3ds";
	material					=	MAT_STONE;
	
	effect						=	"spellfx_weakglimmer_red";
	spell						=	SPL_Summon;
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Teleport magic stones
///******************************************************************************************
instance ItTe_BigFarm (ItemPR_Teleport)			{ TEXT[1] = "Do farmy Onara"; };
instance ItTe_Castle (ItemPR_Teleport)			{ TEXT[1] = "Do zamku"; };
instance ItTe_DemonTower (ItemPR_Teleport)		{ TEXT[1] = "Do starej wie¿y demonów"; };
instance ItTe_Khorinis (ItemPR_Teleport)		{ TEXT[1] = "Do Khorinis"; };
instance ItTe_Monastery (ItemPR_Teleport)		{ TEXT[1] = "Do klasztoru"; };
instance ItTe_PassNW (ItemPR_Teleport)			{ TEXT[1] = "Do prze³êczy Khorinis"; };
instance ItTe_PassOW (ItemPR_Teleport)			{ TEXT[1] = "Do prze³êczy Górniczej Doliny"; };
instance ItTe_SecretChamber (ItemPR_Teleport)	{ TEXT[1] = "Do podziemi klasztoru"; };
instance ItTe_Taverne (ItemPR_Teleport)			{ TEXT[1] = "Do tawerny"; };
instance ItTe_Xardas (ItemPR_Teleport)			{ TEXT[1] = "Do Xardasa"; };

///******************************************************************************************
/// Transform magic stones
///******************************************************************************************
instance ItTr_DragonSnapper (ItemPR_Transform)	{ TEXT[1] = "W smoczego zêbacza"; };
instance ItTr_FireWaran (ItemPR_Transform)		{ TEXT[1] = "W ognistego jaszczura"; };
instance ItTr_GiantBug (ItemPR_Transform)		{ TEXT[1] = "W poln¹ bestiê"; };
instance ItTr_GiantRat (ItemPR_Transform)		{ TEXT[1] = "W olbrzymiego szczura"; };
instance ItTr_Lurker (ItemPR_Transform)			{ TEXT[1] = "W topielca"; };
instance ItTr_Scavenger (ItemPR_Transform)		{ TEXT[1] = "W œcierwojada"; };
instance ItTr_Shadowbeast (ItemPR_Transform)	{ TEXT[1] = "W cieniostwora"; };
instance ItTr_Sheep (ItemPR_Transform)			{ TEXT[1] = "W owcê"; };
instance ItTr_Snapper (ItemPR_Transform)		{ TEXT[1] = "W zêbacza"; };
instance ItTr_Waran (ItemPR_Transform)			{ TEXT[1] = "W jaszczura"; };
instance ItTr_Warg (ItemPR_Transform)			{ TEXT[1] = "W warga"; };
instance ItTr_Wolf (ItemPR_Transform)			{ TEXT[1] = "W wilka"; };

///******************************************************************************************
/// Summon magic stones
///******************************************************************************************
instance ItSu_Demon (ItemPR_Summon)				{ TEXT[1] = "Demon"; };
instance ItSu_Gobbo_Skeleton (ItemPR_Summon)	{ TEXT[1] = "Goblin-szkielet"; };
instance ItSu_Golem (ItemPR_Summon)				{ TEXT[1] = "Golem"; };
instance ItSu_Skeleton (ItemPR_Summon)			{ TEXT[1] = "Szkielet-wojownik"; };
instance ItSu_StoneGuardian (ItemPR_Summon)		{ TEXT[1] = "Kamienny stra¿nik"; };
instance ItSu_Wolf_Skeleton (ItemPR_Summon)		{ TEXT[1] = "Wilk-szkielet"; };
instance ItSu_Zombie (ItemPR_Summon)			{ TEXT[1] = "Zombie"; };

///******************************************************************************************
/// Magic dusts
///******************************************************************************************
prototype ItemPR_MagicDust (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI|ITEM_MISSION;
	visual						=	"ItMi_MagicDust.3ds";
};

///******************************************************************************************
instance ItMi_LifeDust (ItemPR_MagicDust)
{
	name						=	"Esencja ¿ycia";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItMi_LifeDust;
	effect						=	"spellfx_weakglimmer_red";
	
	description					=	name;
};
func void Use_ItMi_LifeDust()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, ATR_HITPOINTS_MAX);
};

instance ItMi_MagicDust (ItemPR_MagicDust)
{
	name						=	"Esencja magii";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItMi_MagicDust;
	effect						=	"spellfx_weakglimmer_blue";
	
	description					=	name;
};
func void Use_ItMi_MagicDust()
{
	Npc_ChangeAttribute (self, ATR_MANA, ATR_MANA_MAX);
};

instance ItMi_EnergyDust (ItemPR_MagicDust)
{
	name						=	"Esencja energii";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItMi_EnergyDust;
	effect						=	"spellfx_weakglimmer_yellow";
	
	description					=	name;
};
func void Use_ItMi_EnergyDust()
{
	self.aivar[AIV_Stamina] = self.aivar[AIV_Stamina_MAX];
};

instance ItMi_TimeDust (ItemPR_MagicDust)
{
	name						=	"Esencja czasu";
	
	scemeName					=	"FOOD";
	on_state[0]					=	Use_ItMi_TimeDust;
	effect						=	"spellfx_weakglimmer_green";
	
	description					=	name;
};
func void Use_ItMi_TimeDust()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
	};
};
