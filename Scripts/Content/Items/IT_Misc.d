///******************************************************************************************
prototype ItemPR_Misc (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
/// Alchemy
///******************************************************************************************
instance ItMi_Flask (ItemPR_Misc)
{
	name						=	"Menzurka";
	value						=	5;
	visual						=	"ItMi_Flask.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"Baza do tworzenia";
	TEXT[2]						=	"mikstur alchemicznych.";
	COUNT[5]					=	value;
};

instance ItMi_Quicksilver (ItemPR_Misc)
{
	name						=	"Rtêæ";
	value						=	50;
	visual						=	"ItMi_Quicksilver.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"mikstur transformacji";
	TEXT[3]						=	"i run emanuj¹cych aury.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Consecration
///******************************************************************************************
instance ItMi_HolyWater (ItemPR_Misc)
{
	name						=	"Woda œwiêcona";
	value						=	15;
	visual						=	"ItMi_HolyWater.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia run paladynów.";
	COUNT[5]					=	value;
};

instance ItMi_InnosStatue (ItemPR_Misc)
{
	name						=	"Pos¹¿ek Innosa";
	value						=	100;
	visual						=	"ItMi_InnosStatue.3ds";
	material					=	MAT_METAL;
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_LearnAttributes_S1;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany do wydawania";
	TEXT[2]						=	"punktów nauki na atrybuty.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Enchanting
///******************************************************************************************
instance ItMi_Ink (ItemPR_Misc)
{
	name						=	"Magiczny atrament";
	value						=	30;
	visual						=	"ItMi_Ink.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"Baza do tworzenia";
	TEXT[2]						=	"magicznych zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_MagicPowder (ItemPR_Misc)
{
	name						=	"Magiczny proszek";
	value						=	20;
	visual						=	"ItMi_Pocket_Blue.3ds";
	material					=	MAT_LEATHER;
	
	effect						=	"SPELLFX_MANAPOTION";
	
	description					=	"Proszek z magicznej rudy";
	TEXT[1]						=	"Sk³adnik przy tworzeniu";
	TEXT[2]						=	"magicznych przedmiotów.";
	COUNT[5]					=	value;
};

instance ItMi_RuneBlank (ItemPR_Misc)
{
	name						=	"Kamieñ runiczny";
	value						=	50;
	visual						=	"ItMi_RuneBlank.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[1]						=	"Baza do tworzenia";
	TEXT[2]						=	"magicznych run.";
	COUNT[5]					=	value;
};

instance ItMi_Scrolls (ItemPR_Misc)
{
	name						=	"Zestaw pergaminów";
	value						=	20;
	visual						=	"ADDON_DUNGEON_SCROLLS_01.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	TEXT[1]						=	"Baza do tworzenia";
	TEXT[2]						=	"magicznych zwojów.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Joints
///******************************************************************************************
prototype ItemPR_Joint (C_Item)
{
	name						=	"Skrêt";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	scemename					=	"JOINT";
	material					=	MAT_LEATHER;
};

///******************************************************************************************
instance ItMi_DesertJoint (ItemPR_Joint)
{
	value						=	25;
	visual						=	"ItMi_Joint_US.3ds";
	on_state[0]					=	Use_ItMi_DesertJoint;
	
	description					=	"Skrêt pustynnego ziela";
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	-5;
	TEXT[2]						=	NAME_Bonus_SpTime;
	COUNT[2]					=	250;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItMi_DesertJoint()
{
	Npc_AddFoodTime (self, BarOrderSP, 100);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/20);
};

instance ItMi_Joint (ItemPR_Joint)
{
	value						=	25;
	visual						=	"ItMi_Joint_US.3ds";
	on_state[0]					=	Use_ItMi_Joint;
	
	description					=	"Skrêt bagiennego ziela";
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	-5;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	50;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItMi_Joint()
{
	Npc_AddFoodTime (self, BarOrderMP, 50);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/20);
};

instance ItMi_SleJoint (ItemPR_Joint)
{
	value						=	100;
	visual						=	"ItMi_Joint_US.3ds";
	on_state[0]					=	Use_ItMi_SleJoint;
	
	description					=	"Skrêt 'Zielonego Nowicjusza'";
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	-25;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	200;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	25;
	COUNT[5]					=	value;
};
func void Use_ItMi_SleJoint()
{
	Npc_AddFoodTime (self, BarOrderMP, 200);
	Npc_AddFoodTime (self, BarOrderXP, 25);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]/4);
};

///******************************************************************************************
/// Resources
///******************************************************************************************
prototype ItemPR_Nugget (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	material					=	MAT_STONE;
	
	TEXT[5]						=	NAME_Value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
instance ItMi_Calcium (ItemPR_Nugget)
{
	name						=	"Wapno";
	value						=	10;
	visual						=	"ItMi_Calcium.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywane jako sk³adnik";
	TEXT[2]						=	"pergaminów i niektórych run.";
	COUNT[5]					=	value;
};

instance ItMi_Coal (ItemPR_Nugget)
{
	name						=	"Wêgiel";
	value						=	8;
	visual						=	"ItMi_Coal.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"atramentu, stali";
	TEXT[3]						=	"i niektórych run.";
	COUNT[5]					=	value;
};

instance ItMi_Iron (ItemPR_Nugget)
{
	name						=	"Bry³a ¿elaza";
	value						=	18;
	visual						=	"ItMi_Iron.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do tworzenia";
	TEXT[2]						=	"surowej stali, wytrychów";
	TEXT[3]						=	"oraz stalowych strza³.";
	COUNT[5]					=	value;
};

instance ItMi_Quartz (ItemPR_Nugget)
{
	name						=	"Kwarcyt";
	value						=	15;
	visual						=	"ItMi_Quartz.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"tworzenia run geomancji";
	TEXT[3]						=	"oraz kwarcytowych strza³.";
	COUNT[5]					=	value;
	//INV_ZBIAS					=	INVCAM_ENTF_RING_STANDARD;
};

instance ItMi_RockCrystal (ItemPR_Nugget)
{
	name						=	"Kryszta³";
	value						=	15;
	visual						=	"ItMi_ShiningCrystal.3ds";
	
	effect						=	"SPELLFX_CRYSTALGLOW";
	
	description					=	name;
	TEXT[1]						=	"U¿ywany jako sk³adnik";
	TEXT[2]						=	"tworzenia run elementaryzmu.";
	COUNT[5]					=	value;
};

instance ItMi_Sulfur (ItemPR_Nugget)
{
	name						=	"Siarka";
	value						=	10;
	visual						=	"ItMi_Sulfur.3ds";
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"bomb i ognistych strza³.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_Nugget (ItemPR_Nugget)
{
	name						=	"Magiczna bry³ka";
	value						=	100;
	visual						=	"ItMi_Nugget.3ds";
	
	effect						=	"SPELLFX_MANAPOTION";
	
	description					=	"Niebieska magiczna ruda";
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia magicznych broni.";
	COUNT[5]					=	value;
};

instance ItMi_RedNugget (ItemPR_Nugget)
{
	name						=	"Magiczna bry³ka";
	value						=	100;
	visual						=	"ItMi_RedNugget.3ds";
	
	effect						=	"SPELLFX_HEALTHPOTION";
	
	description					=	"Czerwona magiczna ruda";
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia ognistych broni.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Smith
///******************************************************************************************
prototype ItemPR_Swordraw (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	20;
	material					=	MAT_METAL;
	
	TEXT[1]						=	"Baza do tworzenia";
	TEXT[2]						=	"broni do walki wrêcz.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMiSwordblade	(ItemPR_Swordraw)
{
	name						=	"Ostrze";
	visual						=	"ItMiSwordblade.3ds";
	description					=	name;
};

instance ItMiSwordbladehot (ItemPR_Swordraw)
{
	name						=	"Gor¹ce ostrze";
	visual						=	"ItMiSwordbladehot.3ds";
	description					=	name;
};

instance ItMiSwordraw (ItemPR_Swordraw)
{
	name						=	"Surowa stal";
	visual						=	"ItMiSwordraw.3ds";
	description					=	name;
};

instance ItMiSwordrawhot (ItemPR_Swordraw)
{
	name						=	"Gor¹ca stal";
	visual						=	"ItMiSwordrawhot.3ds";
	description					=	name;
};

///******************************************************************************************
/// Tabak
///******************************************************************************************
instance ItMi_Tabak (C_Item)
{
	name						=	"Tytoñ";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	10;
	visual						=	"ItMi_Pocket_Green.3ds";
	material					=	MAT_LEATHER;
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_MakeTabak_S1;
	
	description					=	name;
	TEXT[1]						=	"Baza do tworzenia";
	TEXT[2]						=	"tytoniów smakowych.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_ChocolateTabak (ItemPR_Joint)
{
	value						=	10;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_ChocolateTabak;
	
	description					=	"Skrêt czekoladowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-2;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	10;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItMi_ChocolateTabak()
{
	Npc_AddFoodTime (self, BarOrderMP, 10);
	Npc_AddFoodTime (self, BarOrderXP, 5);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -2);
};

instance ItMi_CoconutTabak (ItemPR_Joint)
{
	value						=	6;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_CoconutTabak;
	
	description					=	"Skrêt kokosowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-2;
	TEXT[2]						=	NAME_Bonus_SpTime;
	COUNT[2]					=	20;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItMi_CoconutTabak()
{
	Npc_AddFoodTime (self, BarOrderSP, 20);
	Npc_AddFoodTime (self, BarOrderXP, 2);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -2);
};

instance ItMi_FruitTabak (ItemPR_Joint)
{
	value						=	4;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_FruitTabak;
	
	description					=	"Skrêt owocowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-1;
	TEXT[2]						=	NAME_Bonus_XpTime;
	COUNT[2]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItMi_FruitTabak()
{
	Npc_AddFoodTime (self, BarOrderXP, 1);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -1);
};

instance ItMi_HoneyTabak (ItemPR_Joint)
{
	value						=	5;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_HoneyTabak;
	
	description					=	"Skrêt miodowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-1;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	6;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItMi_HoneyTabak()
{
	Npc_AddFoodTime (self, BarOrderMP, 6);
	Npc_AddFoodTime (self, BarOrderXP, 2);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -1);
};

instance ItMi_MushroomTabak (ItemPR_Joint)
{
	value						=	4;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_MushroomTabak;
	
	description					=	"Skrêt grzybowego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-1;
	TEXT[2]						=	NAME_Bonus_XpTime;
	COUNT[2]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItMi_MushroomTabak()
{
	Npc_AddFoodTime (self, BarOrderXP, 1);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -1);
};

instance ItMi_SwampTabak (ItemPR_Joint)
{
	value						=	7;
	visual						=	"ItMi_Joint.3ds";
	on_state[0]					=	Use_ItMi_SwampTabak;
	
	description					=	"Skrêt zio³owego tytoniu";
	TEXT[1]						=	NAME_Bonus_HP;
	COUNT[1]					=	-3;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	9;
	TEXT[3]						=	NAME_Bonus_XpTime;
	COUNT[3]					=	1;
	COUNT[5]					=	value;
};
func void Use_ItMi_SwampTabak()
{
	Npc_AddFoodTime (self, BarOrderMP, 9);
	Npc_AddFoodTime (self, BarOrderXP, 1);
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -3);
};

///******************************************************************************************
/// Tools
///******************************************************************************************
instance ItMi_Alarmhorn (ItemPR_Misc)
{
	name						=	"Róg orkowego herszta";
	value						=	20;
	visual						=	"ItMi_Alarmhorn.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"HORN";
	on_state[0]					=	Use_ItMi_Alarmhorn;
	
	description					=	name;
	TEXT[1]						=	"U¿ycie zwabia orków.";
	COUNT[5]					=	value;
};
func void Use_ItMi_Alarmhorn_Effect(var C_Npc oth, var C_Npc slf)
{
	if (Npc_IsPlayer(oth))
	{
		return;
	};
	
	if ((oth.senses & SENSE_HEAR) && (Npc_GetDistToNpc(slf, oth) < oth.senses_range*5))
	{
		AI_Wait		(oth, 2);
		B_ResetAll	(oth);
		AI_StandUp	(oth);
		
		if (oth.guild > GIL_SEPERATOR_ORC)
		{
			AI_SetWalkmode (oth, NPC_RUN);
			AI_GotoNpc (oth, slf);
		}
		else
		{
			B_TurnToNpc (oth, slf);
			B_LookAtNpc (oth, slf);
		};
	};
};
func void Use_ItMi_Alarmhorn()
{
	MOD_Broadcast (self, Use_ItMi_Alarmhorn_Effect);
};

instance ItMi_Broom (ItemPR_Misc)
{
	name						=	"Miot³a";
	value						=	10;
	visual						=	"ItMi_Broom.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"BROOM";
	on_state[0]					=	Use_ItMi_Broom;
	
	description					=	name;
	COUNT[5]					=	value;
};
func void Use_ItMi_Broom()
{
	if (Npc_IsPlayer(self))
	&& (Wld_GetPlayerPortalGuild() == GIL_NOV)
	&& (MIS_ParlanFegen == LOG_RUNNING)
	{
		B_Say (self, self, "$NOSWEEPING");
		Print ("Posprz¹tanie wszystkich komnat zajmie ca³e wieki!");
	};
};

instance ItMi_Brush (ItemPR_Misc)
{
	name						=	"Szczotka";
	value						=	5;
	visual						=	"ItMi_Brush.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"BRUSH";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_FishingRod (ItemPR_Misc)
{
	name						=	"Wêdka";
	value						=	15;
	visual						=	"ItMi_FishingRod.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do ³owienia ryb.";
	COUNT[5]					=	value;
};

instance ItMi_Hammer (ItemPR_Misc)
{
	name						=	"M³otek";
	value						=	10;
	visual						=	"ItMi_Hammer.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_InkPen (ItemPR_Misc)
{
	name						=	"Pióro atramentowe";
	value						=	10;
	visual						=	"ItMi_InkPen.3ds";
	material					=	MAT_LEATHER;
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_MakeScroll_S1;
	
	description					=	name;
	TEXT[1]						=	"U¿ywane do tworzenia";
	TEXT[2]						=	"magicznych zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_Lute (ItemPR_Misc)
{
	name						=	"Lutnia";
	value						=	15;
	visual						=	"ItMi_Lute.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"LUTE";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_Pan (ItemPR_Misc)
{
	name						=	"Patelnia";
	value						=	20;
	visual						=	"ItMi_Pan.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do sma¿enia";
	TEXT[2]						=	"miêsa i ryb.";
	COUNT[5]					=	value;
};

instance ItMi_PanFull (ItemPR_Misc)
{
	name						=	"Patelnia";
	value						=	20;
	visual						=	"ItMi_PanFull.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do sma¿enia";
	TEXT[2]						=	"miêsa i ryb.";
	COUNT[5]					=	value;
};

instance ItMi_Pliers (ItemPR_Misc)
{
	name						=	"¯uwaczka";
	value						=	10;
	visual						=	"ItMi_Pliers.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do tworzenia";
	TEXT[2]						=	"magicznych run.";
	COUNT[5]					=	value;
};

instance ItMi_Rake (ItemPR_Misc)
{
	name						=	"Motyka";
	value						=	10;
	visual						=	"ItMi_Rake.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"RAKE";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_Saw (ItemPR_Misc)
{
	name						=	"Pi³a";
	value						=	20;
	visual						=	"ItMi_Saw.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do pozyskiwania";
	TEXT[2]						=	"drewna z k³ód.";
	COUNT[5]					=	value;
};

instance ItMi_Scoop (ItemPR_Misc)
{
	name						=	"Chochla";
	value						=	5;
	visual						=	"ItMi_Scoop.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana do gotowania";
	TEXT[2]						=	"gulaszy i zup.";
	COUNT[5]					=	value;
};

instance ItMi_Sextant (ItemPR_Misc)
{
	name						=	"Sekstant";
	value						=	1000;
	visual						=	"ItMi_Sextant.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany w astronomii";
	TEXT[2]						=	"i nawigacji morskiej.";
	COUNT[5]					=	value;
};

instance ItMi_Stomper (ItemPR_Misc)
{
	name						=	"Rozdrabniacz";
	value						=	5;
	visual						=	"ItMi_Stomper.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany do tworzenia";
	TEXT[2]						=	"zio³owych mieszanek.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Torches
///******************************************************************************************
prototype ItemPR_Torch (C_Item)
{
	name						=	"Pochodnia";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_TORCH | ITEM_MULTI;
	
	value						=	5;
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako Ÿród³o œwiat³a.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItLsTorch (ItemPR_Torch)
{
	visual = "ItLs_Torch_01.3ds";
};

instance ItLsTorchburning (ItemPR_Torch)
{
	visual = "ItLsTorchBurning.zen";
};

instance ItLsTorchburned (ItemPR_Torch)
{
	visual = "ItLs_TorchBurned_01.3ds";
};

///******************************************************************************************
instance ItMi_Pitch (ItemPR_Misc)
{
	name						=	"Smo³a";
	value						=	15;
	visual						=	"ItMi_Pitch.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia run pyromancji";
	TEXT[3]						=	"oraz pochodni.";
	COUNT[5]					=	value;
};

instance ItMi_Resin (ItemPR_Misc)
{
	name						=	"¯ywica";
	value						=	15;
	visual						=	"ItMi_Resin.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"U¿ywana jako sk³adnik";
	TEXT[2]						=	"tworzenia run mistycyzmu";
	TEXT[3]						=	"oraz niektórych mikstur.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Uncategorized
///******************************************************************************************
instance ItMi_EmptyBottle (ItemPR_Misc)
{
	name						=	"Butelka";
	value						=	3;
	visual						=	"ItMi_EmptyBottle.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[1]						=	"Baza do nape³niania wody,";
	TEXT[2]						=	"mleka oraz lekkich alkoholi.";
	COUNT[5]					=	value;
};

instance ItKe_LockPick (ItemPR_Misc)
{
	name						=	"Wytrych";
	value						=	10;
	visual						=	"ItKe_Lockpick.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[1]						=	"U¿ywany do otwierania";
	TEXT[2]						=	"zamkniêtych skrzyñ.";
	COUNT[5]					=	value;
};
