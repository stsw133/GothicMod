///******************************************************************************************
var int TelStoneID;

prototype ItemPR_Teleport (C_Item)
{
	name 					=	"Kamieñ teleportacji";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	effect					=	"spellfx_weakglimmer_blue";
	
	value					=	100;
	visual 					=	"ItMi_MagicStone_Teleport.3DS";
	material				=	MAT_STONE;
	scemename				=	"FASTUSE";
	
	description				= 	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
var int TrfStoneID;

prototype ItemPR_Transform (C_Item)
{
	name 					=	"Kamieñ przemiany";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	effect					=	"spellfx_weakglimmer_green";
	
	value					=	100;
	visual 					=	"ItMi_MagicStone_Transform.3DS";
	material				=	MAT_STONE;
	scemename				=	"FASTUSE";
	
	description				= 	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
var int SumStoneID;

prototype ItemPR_Summon (C_Item)
{
	name 					=	"Kamieñ przyzwania";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	effect					=	"spellfx_weakglimmer_red";
	
	value					=	100;
	visual 					=	"ItMi_MagicStone_Summon.3DS";
	material				=	MAT_STONE;
	scemename				=	"FASTUSE";
	
	description				= 	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Teleport magic stones
///******************************************************************************************

const int ID_BigFarm				=	1;
const int ID_Castle					=	2;
const int ID_DemonTower				=	3;
const int ID_Khorinis				=	4;
const int ID_Monastery				=	5;
const int ID_MonasteryUnderground	=	6;
const int ID_PassNW					=	7;
const int ID_PassOW					=	8;
const int ID_Taverne				=	9;
const int ID_Xardas					=	10;

///******************************************************************************************
instance ItTe_BigFarm (ItemPR_Teleport)
{
	on_state[0]				=	Use_ItTe_BigFarm;
	TEXT[1]					= 	"Do farmy Onara";
};
func void Use_ItTe_BigFarm()
{
	TelStoneID = ID_BigFarm;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_Castle (ItemPR_Teleport)
{
	on_state[0]				=	Use_ItTe_Castle;
	TEXT[1]					= 	"Do zamku";
};
func void Use_ItTe_Castle()
{
	TelStoneID = ID_Castle;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_DemonTower (ItemPR_Teleport)
{
	on_state[0]				=   Use_ItTe_DemonTower;
	TEXT[1]					= 	"Do starej wie¿y demonów";
};
func void Use_ItTe_DemonTower()
{
	TelStoneID = ID_DemonTower;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_Khorinis (ItemPR_Teleport)
{
	on_state[0]				=	Use_ItTe_Khorinis;
	TEXT[1]					=	"Do Khorinis";
};
func void Use_ItTe_Khorinis()
{
	TelStoneID = ID_Khorinis;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_Monastery (ItemPR_Teleport)
{
	on_state[0]				=	Use_ItTe_Monastery;
	TEXT[1]					= 	"Do klasztoru";
};
func void Use_ItTe_Monastery()
{
	TelStoneID = ID_Monastery;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_MonasteryUnderground (ItemPR_Teleport) 
{
	on_state[0]				=	Use_ItTe_MonasteryUnderground;
	TEXT[1]					=	"Do podziemi klasztoru";
};
func void Use_ItTe_MonasteryUnderground()
{
	TelStoneID = ID_MonasteryUnderground;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_PassNW (ItemPR_Teleport)
{
	on_state[0]				=   Use_ItTe_PassNW;
	TEXT[1]					= 	"Do prze³êczy Khorinis";
};
func void Use_ItTe_PassNW()
{
	TelStoneID = ID_PassNW;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_PassOW (ItemPR_Teleport)
{
	on_state[0]				=   Use_ItTe_PassOW;
	TEXT[1]					= 	"Do prze³êczy Górniczej Doliny";
};
func void Use_ItTe_PassOW()
{
	TelStoneID = ID_PassOW;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_Taverne (ItemPR_Teleport)
{
	on_state[0]				=	Use_ItTe_Taverne;
	TEXT[1]					= 	"Do tawerny";
};
func void Use_ItTe_Taverne()
{
	TelStoneID = ID_Taverne;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};

instance ItTe_Xardas (ItemPR_Teleport)
{
	on_state[0]				=	Use_ItTe_Xardas;
	TEXT[1]					= 	"Do Xardasa";
};
func void Use_ItTe_Xardas()
{
	TelStoneID = ID_Xardas;
	AI_ReadySpell (self, SPL_Teleport, SPL_Cost_Teleport);
};
///******************************************************************************************
///	Transform magic stones
///******************************************************************************************
instance ItTr_DragonSnapper (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_DragonSnapper;
	TEXT[1]					= 	"W smoczego zêbacza";
};
func void Use_ItTr_DragonSnapper()
{
	TrfStoneID = ID_DRAGONSNAPPER;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_FireWaran (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_FireWaran;
	TEXT[1]					= 	"W ognistego jaszczura";
};
func void Use_ItTr_FireWaran()
{
	TrfStoneID = ID_FIREWARAN;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_GiantBug (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_GiantBug;
	TEXT[1]					= 	"W poln¹ bestiê";
};
func void Use_ItTr_GiantBug()
{
	TrfStoneID = ID_GIANT_BUG;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_GiantRat (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_GiantRat;
	TEXT[1]					= 	"W olbrzymiego szczura";
};
func void Use_ItTr_GiantRat()
{
	TrfStoneID = ID_GIANT_RAT;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Lurker (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Lurker;
	TEXT[1]					= 	"W topielca";
};
func void Use_ItTr_Lurker()
{
	TrfStoneID = ID_LURKER;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Scavenger (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Scavenger;
	TEXT[1]					= 	"W œcierwojada";
};
func void Use_ItTr_Scavenger()
{
	TrfStoneID = ID_SCAVENGER;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Shadowbeast (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Shadowbeast;
	TEXT[1]					= 	"W cieniostwora";
};
func void Use_ItTr_Shadowbeast()
{
	TrfStoneID = ID_SHADOWBEAST;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Sheep (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Sheep;
	TEXT[1]					= 	"W owcê";
};
func void Use_ItTr_Sheep()
{
	TrfStoneID = ID_SHEEP;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Snapper (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Snapper;
	TEXT[1]					= 	"W zêbacza";
};
func void Use_ItTr_Snapper()
{
	TrfStoneID = ID_SNAPPER;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Waran (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Waran;
	TEXT[1]					= 	"W jaszczura";
};
func void Use_ItTr_Waran()
{
	TrfStoneID = ID_WARAN;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Warg (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Warg;
	TEXT[1]					= 	"W jaszczura";
};
func void Use_ItTr_Warg()
{
	TrfStoneID = ID_WARG;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};

instance ItTr_Wolf (ItemPR_Transform)
{
	on_state[0]				=	Use_ItTr_Wolf;
	TEXT[1]					= 	"W wilka";
};
func void Use_ItTr_Wolf()
{
	TrfStoneID = ID_WOLF;
	AI_ReadySpell (self, SPL_Transform, SPL_Cost_Transform);
};
///******************************************************************************************
///	Summon magic stones
///******************************************************************************************
instance ItSu_Demon (ItemPR_Summon)
{
	on_state[0]				=	Use_ItSu_Demon;
	TEXT[1]					=	"Demon";
};
func void Use_ItSu_Demon()
{
	SumStoneID = ID_DEMON;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};

instance ItSu_Gobbo_Skeleton (ItemPR_Summon) 
{
	on_state[0]				=	Use_ItSu_Gobbo_Skeleton;
	TEXT[1]					=	"Goblin-szkielet";
};
func void Use_ItSu_Gobbo_Skeleton()
{
	SumStoneID = ID_GOBBO_SKELETON;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};

instance ItSu_Golem (ItemPR_Summon) 
{
	on_state[0]				=	Use_ItSu_Golem;
	TEXT[1]					=	"Golem";
};
func void Use_ItSu_Golem()
{
	SumStoneID = ID_GOLEM;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};

instance ItSu_Skeleton (ItemPR_Summon) 
{
	on_state[0]				=	Use_ItSu_Skeleton;
	TEXT[1]					=	"Szkielet-wojownik";
};
func void Use_ItSu_Skeleton()
{
	SumStoneID = ID_SKELETON;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};

instance ItSu_StoneGuardian (ItemPR_Summon) 
{
	on_state[0]				=	Use_ItSu_StoneGuardian;
	TEXT[1]					=	"Kamienny stra¿nik";
};
func void Use_ItSu_StoneGuardian()
{
	SumStoneID = ID_STONEGUARDIAN;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};

instance ItSu_Wolf_Skeleton (ItemPR_Summon) 
{
	on_state[0]				=	Use_ItSu_Wolf_Skeleton;
	TEXT[1]					=	"Wilk-szkielet";
};
func void Use_ItSu_Wolf_Skeleton()
{
	SumStoneID = ID_WOLF_SKELETON;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};

instance ItSu_Zombie (ItemPR_Summon) 
{
	on_state[0]				=	Use_ItSu_Zombie;
	TEXT[1]					=	"Zombie";
};
func void Use_ItSu_Zombie()
{
	SumStoneID = ID_ZOMBIE;
	AI_ReadySpell (self, SPL_Summon, SPL_Cost_Summon);
};
///******************************************************************************************
///	MagicDust
///******************************************************************************************
prototype ItemPR_MagicDust (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI|ITEM_MISSION;
	visual 					=	"ItMi_MagicDust.3ds";
};
///******************************************************************************************
instance ItMi_LifeDust (ItemPR_MagicDust)
{
	name 					=	"Esencja ¿ycia";
	effect					=	"spellfx_weakglimmer_red";
	description				= 	name;
	
	scemeName				=	"FASTUSED";
	on_state[0]				=	Use_ItMi_LifeDust;
};
func void Use_ItMi_LifeDust()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, ATR_HITPOINTS_MAX);
};
///******************************************************************************************
instance ItMi_MagicDust (ItemPR_MagicDust)
{
	name 					=	"Esencja magii";
	effect					=	"spellfx_weakglimmer_blue";
	description				= 	name;
	
	scemeName				=	"FASTUSED";
	on_state[0]				=	Use_ItMi_MagicDust;
};
func void Use_ItMi_MagicDust()
{
	Npc_ChangeAttribute (self, ATR_MANA, ATR_MANA_MAX);
};
///******************************************************************************************
instance ItMi_TimeDust (ItemPR_MagicDust)
{
	name 					=	"Esencja czasu";
	effect					=	"spellfx_weakglimmer_yellow";
	description				= 	name;
	
	scemeName				=	"FASTUSED";
	on_state[0]				=	Use_ItMi_TimeDust;
};
func void Use_ItMi_TimeDust()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
	};
};
