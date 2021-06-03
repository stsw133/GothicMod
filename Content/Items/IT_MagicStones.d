///******************************************************************************************
///	MagicStones
///******************************************************************************************
prototype ItemPR_Teleport (C_Item)
{
	name 					=	"Kamieñ teleportacji";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	effect					=	"spellfx_weakglimmer_blue";
	
	value					=	100;
	visual 					=	"ItMi_MagicStone_Blue.3DS";
	material				=	MAT_STONE;
	scemename				=	"FASTUSE";
	
	description				= 	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
prototype ItemPR_Transform (C_Item)
{
	name 					=	"Kamieñ transformacji";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	effect					=	"spellfx_weakglimmer_green";
	
	value					=	100;
	visual 					=	"ItMi_MagicStone_Green.3DS";
	material				=	MAT_STONE;
	scemename				=	"FASTUSE";
	
	description				= 	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
prototype ItemPR_Summon (C_Item)
{
	name 					=	"Kamieñ przyzwania";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	effect					=	"spellfx_weakglimmer_red";
	
	value					=	100;
	visual 					=	"ItMi_MagicStone_Red.3DS";
	material				=	MAT_STONE;
	scemename				=	"FASTUSE";
	
	description				= 	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	SetItMSAttributes
///******************************************************************************************
func void SetItMSAttributes (var C_ITEM itm, var int type)
{
	if (type == AIV_TelStone)
	{
		if (Hlp_GetinstanceID(itm) != hero.aivar[AIV_TelStone])	{	itm.flags = ITEM_MULTI;				}
		else													{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
	}
	else if (type == AIV_TrfStone)
	{
		if (Hlp_GetinstanceID(itm) != hero.aivar[AIV_TrfStone])	{	itm.flags = ITEM_MULTI;				}
		else													{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
	}
	else if (type == AIV_SumStone)
	{
		if (Hlp_GetinstanceID(itm) != hero.aivar[AIV_SumStone])	{	itm.flags = ITEM_MULTI;				}
		else													{	itm.flags = ITEM_MULTI|ITEM_ACTIVE;	};
	};
};
///******************************************************************************************
///	MagicStone Items
///******************************************************************************************
instance ItTe_MonasteryUnderground (ItemPR_Teleport) 
{
	on_state[0]		=	Use_ItTe_MonasteryUnderground;
	TEXT[1]			=	"Do podziemi klasztoru";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_Khorinis (ItemPR_Teleport)
{
	on_state[0]		=	Use_ItTe_Khorinis;
	TEXT[1]			=	"Do Khorinis";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_Monastery (ItemPR_Teleport)
{
	on_state[0]		=	Use_ItTe_Monastery;
	TEXT[1]			= 	"Do klasztoru";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_BigFarm (ItemPR_Teleport)
{
	on_state[0]		=	Use_ItTe_BigFarm;
	TEXT[1]			= 	"Do farmy Onara";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_Xardas (ItemPR_Teleport)
{
	on_state[0]		=	Use_ItTe_Xardas;
	TEXT[1]			= 	"Do Xardasa";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_Taverne (ItemPR_Teleport)
{
	on_state[0]		=	Use_ItTe_Taverne;
	TEXT[1]			= 	"Do tawerny";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_PassNW (ItemPR_Teleport)
{
	on_state[0]		=   Use_ItTe_PassNW;
	TEXT[1]			= 	"Do prze³êczy Khorinis";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_PassOW (ItemPR_Teleport)
{
	on_state[0]		=   Use_ItTe_PassOW;
	TEXT[1]			= 	"Do prze³êczy Górniczej Doliny";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_Castle (ItemPR_Teleport)
{
	on_state[0]		=   Use_ItTe_Castle;
	TEXT[1]			= 	"Do zamku";
	SetItMSAttributes (self, AIV_TelStone);
};
instance ItTe_DemonTower (ItemPR_Teleport)
{
	on_state[0]		=   Use_ItTe_DemonTower;
	TEXT[1]			= 	"Do starej wie¿y demonów";
	SetItMSAttributes (self, AIV_TelStone);
};
///******************************************************************************************
instance ItTr_GiantBug (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_GiantBug;
	TEXT[1]			=	"W poln¹ bestiê";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_GiantRat (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_GiantRat;
	TEXT[1]			=	"W olbrzymiego szczura";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Lurker (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Lurker;
	TEXT[1]			=	"W topielca";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Scavenger (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Scavenger;
	TEXT[1]			=	"W œcierwojada";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Sheep (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Sheep;
	TEXT[1]			=	"W owcê";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Shadowbeast (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Shadowbeast;
	TEXT[1]			=	"W cieniostwora";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Snapper (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Snapper;
	TEXT[1]			=	"W zêbacza";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Waran (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Waran;
	TEXT[1]			=	"W jaszczura";
	SetItMSAttributes (self, AIV_TrfStone);
};
instance ItTr_Wolf (ItemPR_Transform) 
{
	on_state[0]		=	Use_ItTr_Wolf;
	TEXT[1]			=	"W wilka";
	SetItMSAttributes (self, AIV_TrfStone);
};
///******************************************************************************************
instance ItSu_Demon (ItemPR_Summon)
{
	on_state[0]		=	Use_ItSu_Demon;
	TEXT[1]			=	"Demon";
	SetItMSAttributes (self, AIV_SumStone);
};
instance ItSu_Golem (ItemPR_Summon) 
{
	on_state[0]		=	Use_ItSu_Golem;
	TEXT[1]			=	"Golem";
	SetItMSAttributes (self, AIV_SumStone);
};
instance ItSu_Skeleton (ItemPR_Summon) 
{
	on_state[0]		=	Use_ItSu_Skeleton;
	TEXT[1]			=	"Szkielet";
	SetItMSAttributes (self, AIV_SumStone);
};
instance ItSu_Wolf_Skeleton (ItemPR_Summon) 
{
	on_state[0]		=	Use_ItSu_Wolf_Skeleton;
	TEXT[1]			=	"Wilk-szkielet";
	SetItMSAttributes (self, AIV_SumStone);
};
///******************************************************************************************
///	MagicStones Check
///******************************************************************************************
func void TELEPORT_CHECK()
{
	var int Teleports;
	
	Teleports = Npc_HasItems(self, ItTe_MonasteryUnderground);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_MonasteryUnderground, Teleports);
		CreateInvItems (self, ItTe_MonasteryUnderground, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_Khorinis);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_Khorinis, Teleports);
		CreateInvItems (self, ItTe_Khorinis, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_Monastery);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_Monastery, Teleports);
		CreateInvItems (self, ItTe_Monastery, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_BigFarm);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_BigFarm, Teleports);
		CreateInvItems (self, ItTe_BigFarm, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_Xardas);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_Xardas, Teleports);
		CreateInvItems (self, ItTe_Xardas, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_Taverne);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_Taverne, Teleports);
		CreateInvItems (self, ItTe_Taverne, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_PassNW);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_PassNW, Teleports);
		CreateInvItems (self, ItTe_PassNW, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_PassOW);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_PassOW, Teleports);
		CreateInvItems (self, ItTe_PassOW, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_Castle);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_Castle, Teleports);
		CreateInvItems (self, ItTe_Castle, Teleports);
	};
	Teleports = Npc_HasItems(self, ItTe_DemonTower);
	if (Teleports > 0)
	{
		Npc_RemoveInvItems (self, ItTe_DemonTower, Teleports);
		CreateInvItems (self, ItTe_DemonTower, Teleports);
	};
};
///******************************************************************************************
func void TRANSFORM_CHECK()
{
	var int Transforms;
	
	Transforms = Npc_HasItems(self, ItTr_GiantBug);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_GiantBug, Transforms);
		CreateInvItems (self, ItTr_GiantBug, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_GiantRat);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_GiantRat, Transforms);
		CreateInvItems (self, ItTr_GiantRat, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_Lurker);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_Lurker, Transforms);
		CreateInvItems (self, ItTr_Lurker, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_Shadowbeast);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_Shadowbeast, Transforms);
		CreateInvItems (self, ItTr_Shadowbeast, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_Sheep);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_Sheep, Transforms);
		CreateInvItems (self, ItTr_Sheep, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_Snapper);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_Snapper, Transforms);
		CreateInvItems (self, ItTr_Snapper, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_Waran);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_Waran, Transforms);
		CreateInvItems (self, ItTr_Waran, Transforms);
	};
	Transforms = Npc_HasItems(self, ItTr_Wolf);
	if (Transforms > 0)
	{
		Npc_RemoveInvItems (self, ItTr_Wolf, Transforms);
		CreateInvItems (self, ItTr_Wolf, Transforms);
	};
};
///******************************************************************************************
func void SUMMON_CHECK()
{
	var int Summons;

	Summons = Npc_HasItems(self, ItSu_Demon);
	if (Summons > 0)
	{
		Npc_RemoveInvItems (self, ItSu_Demon, Summons);
		CreateInvItems (self, ItSu_Demon, Summons);
	};
	Summons = Npc_HasItems(self, ItSu_Golem);
	if (Summons > 0)
	{
		Npc_RemoveInvItems (self, ItSu_Golem, Summons);
		CreateInvItems (self, ItSu_Golem, Summons);
	};
	Summons = Npc_HasItems(self, ItSu_Skeleton);
	if (Summons > 0)
	{
		Npc_RemoveInvItems (self, ItSu_Skeleton, Summons);
		CreateInvItems (self, ItSu_Skeleton, Summons);
	};
	Summons = Npc_HasItems(self, ItSu_Wolf_Skeleton);
	if (Summons > 0)
	{
		Npc_RemoveInvItems (self, ItSu_Wolf_Skeleton, Summons);
		CreateInvItems (self, ItSu_Wolf_Skeleton, Summons);
	};
};
///******************************************************************************************
///	MagicStones Functions
///******************************************************************************************
func void Use_ItTe_MonasteryUnderground()
{
	self.aivar[AIV_TelStone] = ItTe_MonasteryUnderground;
	TELEPORT_CHECK();
};
func void Use_ItTe_Khorinis()
{
	self.aivar[AIV_TelStone] = ItTe_Khorinis;
	TELEPORT_CHECK();
};
func void Use_ItTe_Monastery()
{
	self.aivar[AIV_TelStone] = ItTe_Monastery;
	TELEPORT_CHECK();
};
func void Use_ItTe_BigFarm()
{
	self.aivar[AIV_TelStone] = ItTe_BigFarm;
	TELEPORT_CHECK();
};
func void Use_ItTe_Xardas()
{
	self.aivar[AIV_TelStone] = ItTe_Xardas;
	TELEPORT_CHECK();
};
func void Use_ItTe_Taverne()
{
	self.aivar[AIV_TelStone] = ItTe_Taverne;
	TELEPORT_CHECK();
};
func void Use_ItTe_PassNW()
{
	self.aivar[AIV_TelStone] = ItTe_PassNW;
	TELEPORT_CHECK();
};
func void Use_ItTe_PassOW()
{
	self.aivar[AIV_TelStone] = ItTe_PassOW;
	TELEPORT_CHECK();
};
func void Use_ItTe_Castle()
{
	self.aivar[AIV_TelStone] = ItTe_Castle;
	TELEPORT_CHECK();
};
func void Use_ItTe_DemonTower()
{
	self.aivar[AIV_TelStone] = ItTe_DemonTower;
	TELEPORT_CHECK();
};
///******************************************************************************************
func void Use_ItTr_GiantBug()
{
	self.aivar[AIV_TrfStone] = ItTr_GiantBug;
	TRANSFORM_CHECK();
};
func void Use_ItTr_GiantRat()
{
	self.aivar[AIV_TrfStone] = ItTr_GiantRat;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Lurker()
{
	self.aivar[AIV_TrfStone] = ItTr_Lurker;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Scavenger()
{
	self.aivar[AIV_TrfStone] = ItTr_Scavenger;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Shadowbeast()
{
	self.aivar[AIV_TrfStone] = ItTr_Shadowbeast;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Sheep()
{
	self.aivar[AIV_TrfStone] = ItTr_Sheep;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Snapper()
{
	self.aivar[AIV_TrfStone] = ItTr_Snapper;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Waran()
{
	self.aivar[AIV_TrfStone] = ItTr_Waran;
	TRANSFORM_CHECK();
};
func void Use_ItTr_Wolf()
{
	self.aivar[AIV_TrfStone] = ItTr_Wolf;
	TRANSFORM_CHECK();
};
///******************************************************************************************
func void Use_ItSu_Demon()
{
	self.aivar[AIV_SumStone] = ItSu_Demon;
	SUMMON_CHECK();
};
func void Use_ItSu_Golem()
{
	self.aivar[AIV_SumStone] = ItSu_Golem;
	SUMMON_CHECK();
};
func void Use_ItSu_Skeleton()
{
	self.aivar[AIV_SumStone] = ItSu_Skeleton;
	SUMMON_CHECK();
};
func void Use_ItSu_Wolf_Skeleton()
{
	self.aivar[AIV_SumStone] = ItSu_Wolf_Skeleton;
	SUMMON_CHECK();
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
	name 			=	"Esencja ¿ycia";
	effect			=	"spellfx_weakglimmer_red";
	description		= 	name;
	
//	scemeName		=	"FASTUSED";
	on_state[0]		=	Use_ItMi_LifeDust;
};
func void Use_ItMi_LifeDust()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 10);
	};
};

instance ItMi_MagicDust (ItemPR_MagicDust)
{
	name 			=	"Esencja magii";
	effect			=	"spellfx_weakglimmer_blue";
	description		= 	name;
	
//	scemeName		=	"FASTUSED";
	on_state[0]		=	Use_ItMi_MagicDust;
};
func void Use_ItMi_MagicDust()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 10);
	};
};

instance ItMi_TimeDust (ItemPR_MagicDust)
{
	name 			=	"Esencja czasu";
	effect			=	"spellfx_weakglimmer_yellow";
	description		= 	name;
	
//	scemeName		=	"FASTUSED";
	on_state[0]		=	Use_ItMi_TimeDust;
};
func void Use_ItMi_TimeDust()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
	};
};
